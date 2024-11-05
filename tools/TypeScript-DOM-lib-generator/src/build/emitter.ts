import * as Browser from "./types.js";
import { mapToArray } from "./helpers.js";
import { promises as fs } from "fs";
import { execSync } from "child_process";
import { sign } from "crypto";

/// Decide which members of a function to emit
enum EmitScope {
  StaticOnly,
  InstanceOnly,
  All,
}

const tsKeywords = new Set(["default", "delete", "continue"]);
const extendConflictsBaseTypes: Record<
  string,
  { extendType: string[]; memberNames: Set<string> }
> = {
  HTMLCollection: {
    extendType: ["HTMLFormControlsCollection"],
    memberNames: new Set(["namedItem"]),
  },
};

// Namespaces that have been in form of interfaces for years
// and can't be converted to namespaces without breaking type packages
const namespacesAsInterfaces = ["console"];

// Used to decide if a member should be emitted given its static property and
// the intended scope level.
function matchScope(scope: EmitScope, x: { static?: boolean }) {
  return (
    scope === EmitScope.All || (scope === EmitScope.StaticOnly) === !!x.static
  );
}

/// Parameter cannot be named "default" in JavaScript/Typescript so we need to rename it.
function adjustParamName(name: string) {
  return tsKeywords.has(name) ? `_${name}` : name;
}

function getElements<K extends string, T>(
  a: Record<K, Record<string, T>> | undefined,
  k: K,
): T[] {
  return a ? mapToArray(a[k]) : [];
}

function createTextWriter(newLine: string) {
  let output: string;
  let indent: number;
  let lineStart: boolean;
  /** print declarations conflicting with base interface to a side list to write them under a different name later */
  let stack: { content: string; indent: number }[] = [];

  function getIndentString(level: number) {
    return "    ".repeat(level);
  }

  function write(s: string) {
    if (s && lineStart) {
      output += getIndentString(indent);
      lineStart = false;
    }
    output += s;
  }

  function reset(): void {
    output = "";
    indent = 0;
    lineStart = true;
    stack = [];
  }

  function endLine() {
    output += newLine;
    lineStart = true;
  }

  reset();

  return {
    reset,

    increaseIndent() {
      indent++;
    },
    decreaseIndent() {
      indent--;
    },

    endLine,
    print: write,
    printLine(c: string) {
      write(c);
      endLine();
    },

    clearStack() {
      stack = [];
    },
    stackIsEmpty() {
      return stack.length === 0;
    },
    printLineToStack(content: string) {
      stack.push({ content, indent });
    },
    printStackContent() {
      stack.forEach((e) => {
        const oldIndent = indent;
        indent = e.indent;
        this.printLine(e.content);
        indent = oldIndent;
      });
    },

    getResult() {
      return output;
    },
  };
}

function isEventHandler(p: Browser.Property) {
  return typeof p.eventHandler === "string";
}

function toCamelCase(input: string) {
  try {
    let i = 0;

    // Count uppercase letters at the start
    while (i < input.length && input[i] === input[i].toUpperCase()) {
      i++;
    }

    // If only one capital, lowercase it
    if (i === 1) return input[0].toLowerCase() + input.slice(1);

    // If more than one capital, lowercase until the last one in the sequence
    return input.slice(0, i - 1).toLowerCase() + input.slice(i - 1);
  } catch (ex) {
    console.error(
      `FAILED TO CAMELIZE: ${input}, typeof input = ${typeof input}`,
      ex,
    );
    return input;
  }
}

const reservedRescriptWords = [
  "type",
  "open",
  "as",
  "constraint",
  "external",
  "module",
];
const validVariantConstructorNameRegexp = /[^a-zA-Z0-9_]/g;

function getFieldName(property: Browser.Property): string {
  const fieldName = property.name;
  const mutable = property.readonly ? "" : " mutable ";
  if (reservedRescriptWords.includes(fieldName)) {
    return `@as("${fieldName}")${mutable} ${fieldName}_`;
  } else if (fieldName && fieldName[0] !== fieldName[0].toLowerCase()) {
    return `@as("${fieldName}")${mutable} ${fieldName[0].toLowerCase()}${fieldName.slice(1)}`;
  }

  return `${mutable}${fieldName}`;
}

function getVariantName(variantRawName: string): string {
  let legalName = `${variantRawName[0].toUpperCase()}${variantRawName.slice(1)}`;
  let firstChar = legalName[0];

  if (!isNaN(parseFloat(firstChar))) {
    legalName = `V${legalName}`;
  }

  legalName = legalName
    .split("-")
    .map((s) => s[0].toUpperCase() + s.slice(1))
    .join("");

  legalName = legalName.replace(validVariantConstructorNameRegexp, "");

  if (variantRawName !== legalName) {
    return `@as("${variantRawName}") ${legalName}`;
  }

  return variantRawName;
}

// Extend clauses can look like `Sometype<SomeOtherType>`. We need to extract `SomeOtherType` from the string.
function parseExtendsClause(extendsClause: string): string[] {
  // Match base type and any type parameters
  const match = extendsClause.match(/^([a-zA-Z0-9_]+)(<([a-zA-Z0-9_<>]+)>)?/);
  if (match) {
    const baseType = match[1];
    const typeParams = match[3] ? match[3].split(/,\s*/) : [];
    return [baseType, ...typeParams];
  }
  return [extendsClause];
}

interface Dictionary {
  name: string;
  extends?: string;
}

type DictionaryMap<T extends Dictionary> = { [name: string]: T };

function topologicalSortDictionaries<T extends Dictionary>(
  dictionaries: T[],
): T[] {
  const sorted: T[] = [];
  const visited: Set<string> = new Set();
  const tempMarked: Set<string> = new Set();
  const dictMap: DictionaryMap<T> = Object.fromEntries(
    dictionaries.map((d) => [d.name, d]),
  );

  function visit(dictName: string) {
    if (visited.has(dictName)) return;
    if (tempMarked.has(dictName)) {
      throw new Error(`Cyclic dependency detected with ${dictName}`);
    }

    tempMarked.add(dictName);
    const dict = dictMap[dictName];
    if (dict?.extends) {
      const dependencies = parseExtendsClause(dict.extends);
      dependencies.forEach((dep) => {
        if (dictMap[dep]) {
          visit(dep);
        }
      });
    }
    tempMarked.delete(dictName);
    visited.add(dictName);
    sorted.push(dict);
  }

  dictionaries.forEach((dict) => {
    if (!visited.has(dict.name)) {
      visit(dict.name);
    }
  });

  return sorted;
}

type interfaceSettings = {
  allowSpreading: boolean;
  typeKeywords: "type" | "type rec" | "and";
};

export async function emitRescriptBindings(
  outputFolder: string,
  webidl: Browser.WebIdl,
) {
  // Global print target
  const printer = createTextWriter("\n");

  const allInterfaces = getElements(webidl.interfaces, "interface").concat(
    getElements(webidl.callbackInterfaces, "interface"),
    getElements(webidl.mixins, "mixin"),
  );

  const allDictionaries = getElements(webidl.dictionaries, "dictionary");

  const allEnums = getElements(webidl.enums, "enum");

  const allCallbacks = getElements(
    webidl.callbackFunctions,
    "callbackFunction",
  );

  function compareName(c1: { name: string }, c2: { name: string }) {
    return c1.name < c2.name ? -1 : c1.name > c2.name ? 1 : 0;
  }

  function printComment({
    mdnUrl,
    comment,
    name,
  }: {
    mdnUrl?: string;
    comment?: string;
    name?: string;
  }) {
    let linkText = name ? `See ${name} on MDN` : "Read more on MDN";
    if (comment || mdnUrl) {
      printer.printLine(`/**`);
      if (comment) printer.printLine(comment);
      if (mdnUrl) printer.printLine(`[${linkText}](${mdnUrl})`);
      printer.printLine(`*/`);
    }
  }

  // Track all items we've seen so we can look up things from them
  const seenItems = new Map<string, Browser.Interface | Browser.Dictionary>();

  // These are types that take a generic parameter but it could not be mentioned in the type definition.
  // In this case, we need to produce a type with a default generic parameter <unit>.
  const alwaysGenericTypes = new Set<string>([
    "QueuingStrategy",
    "ReadableStream",
    "WritableStream",
    "IDBRequest",
  ]);

  function transformExtends(extds: string) {
    const hasTypeParams = extds.includes("<");
    const entry = seenItems.get(extds);

    // Insert default type parameters
    if (entry?.typeParameters && !hasTypeParams) {
      return (
        toCamelCase(extds) +
        "<" +
        entry.typeParameters
          .map((t) => `${t.default ?? toCamelCase(t.name)}`)
          .join(", ") +
        ">"
      );
    }

    if (alwaysGenericTypes.has(extds)) {
      return toCamelCase(extds) + "<unit>";
    }

    return extds.split("<").map(toCamelCase).join("<");
  }

  function extractExtendsName(
    i: Browser.Interface | Browser.Dictionary,
  ): string | null {
    return i.extends?.split("<")[0] || null;
  }

  function collectExtendsProperties(
    current: Browser.Interface,
  ): Record<string, Browser.Property[]> {
    function collectExtendsPropertiesFrom(
      entry: Browser.Interface,
    ): Browser.Property[] {
      const props = (<any>entry).properties?.property || {};
      const currentProps = Object.keys(props).map((p) => props[p]);
      return currentProps;
    }

    function findBaseInterfaces(name: string): Browser.Interface[] {
      const entry = allInterfaces.find((i) => i.name === name);
      if (!entry) return [];

      const extendsName = extractExtendsName(entry);

      return [entry, ...(extendsName ? findBaseInterfaces(extendsName) : [])];
    }

    const extendsName = extractExtendsName(current);
    if (!extendsName) return {};

    const interfaces = findBaseInterfaces(extendsName);
    return Object.fromEntries(
      interfaces.map((i) => [i.name, collectExtendsPropertiesFrom(i)]),
    );
  }

  function mapTypeParams(
    typeParameters: Browser.TypeParameter[] | undefined,
  ): string {
    if (!typeParameters) return "";
    return (
      "<" +
      typeParameters.map((tp) => `'${toCamelCase(tp.name)}`).join(", ") +
      ">"
    );
  }

  function mapInterfaceName(i: Browser.Interface) {
    return toCamelCase(i.name) + mapTypeParams(i.typeParameters);
  }

  function printTypeParams(
    typeParameters: Browser.TypeParameter[] | undefined,
  ) {
    let hasTypeParams = false;
    typeParameters?.forEach((t) => {
      if (!hasTypeParams) {
        hasTypeParams = true;
        printer.print("<");
      } else {
        printer.print(", ");
      }
      printer.print(`'${toCamelCase(t.name)}`);
    });
    if (hasTypeParams) {
      printer.print(">");
    }
  }

  // Track field names so we can avoid reprinting fields we've already covered by a spread
  const typeFieldNames = new Map<string, Set<string>>();

  function mapTypeToReScript(typeName: string): string {
    switch (typeName) {
      case "undefined":
        return "unit";
      case "boolean":
      case "ConstrainBoolean":
        return "bool";

      // Not sure if this is correct
      case "unsigned short":
      case "long":
      case "unsigned long long":
      case "unsigned long":
      case "long long":
      case "SVGAnimatedNumber":
      case "EpochTimeStamp":
      case "short":
      // TODO: model https://developer.mozilla.org/en-US/docs/Web/API/FileReader/readyState
      case "typeof FileReader.EMPTY | typeof FileReader.LOADING | typeof FileReader.DONE":
      // TODO: https://developer.mozilla.org/en-US/docs/Web/API/ByteLengthQueuingStrategy/size
      case "QueuingStrategySize":
      case "ConstrainULong":
      case "COSEAlgorithmIdentifier":
        return "int";

      case "double":
      case "CSSNumberish":
      case "GLint":
      case "GLsizei":
      case "DOMHighResTimeStamp":
      case "ConstrainDouble":
        return "float";

      // TODO: represent this as a variant type
      case "HTMLOrSVGScriptElement":
        return "htmlElement";

      // TODO: have a better representation for this
      // See https://developer.mozilla.org/en-US/docs/Web/API/ClipboardItem/types
      case "FrozenArray":
      case "ObservableArray":
      case "sequence":
        return "array";

      case "Uint8ClampedArray":
        return "array<int>";

      case "ClipboardItems":
        return "array<clipboardItem>";

      case "Promise":
        return "Promise.t";

      case "ArrayBuffer":
        return "ArrayBuffer.t";

      case "WindowProxy":
      case "WindowProxy & typeof globalThis":
      case "Window & typeof globalThis":
        return "window";

      // https://developer.mozilla.org/en-US/docs/Web/API/CSSAnimation/animationName
      case "CSSOMString":
      case "ByteString":
      case "GLenum":
      case "DOMString":
      case "ConstrainDOMString":
      case "USVString":
        return "string";

      case "unrestricted double":
      case "record":
        return "any";

      case "Date":
        return "Date.t";

      case "Uint8Array":
        return "array<int>";

      case "ParentNode":
      case "ChildNode":
        return "node";

      // TODO: https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/decoding
      case '"async" | "sync" | "auto"':
        return "string";

      // TODO: https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/loading
      case '"eager" | "lazy"':
        return "string";

      // TODO: https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/preload
      case '"none" | "metadata" | "auto" | ""':
        return "string";

      // TODO: this is wrong
      case "HTMLCollectionOf<HTMLAnchorElement | HTMLAreaElement>":
        return "htmlCollectionOf<htmlElement>";

      // TODO: model better https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement/type
      case '"submit" | "reset" | "button"':
        return "string";

      // TODO: model better https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement/type
      case '"select-one" | "select-multiple"':
        return "string";

      // https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/selectionDirection
      case '"forward" | "backward" | "none"':
        return "string";

      // https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer/dropEffect
      case '"none" | "copy" | "link" | "move"':
        return "string";

      // https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer/effectAllowed
      case '"none" | "copy" | "copyLink" | "copyMove" | "link" | "linkMove" | "move" | "':
        return "string";

      // https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer/effectAllowed
      case '"none" | "copy" | "copyLink" | "copyMove" | "link" | "linkMove" | "move" | "all" | "uninitialized"':
        return "string";

      // "\"attributes\" | \"characterData\" | \"childList\""
      case "MutationRecordType":
        return "string";

      case "string | string[]":
        return "string";

      // https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/autocomplete
      case "AutoFill":
        return "string";

      case "object":
      case "Exports":
        return "Dict.t<string>";

      case "Float32Array":
        return "array<float>";

      case "RTCRtpTransform":
        return "rtcRtpScriptTransform";

      default:
        return toCamelCase(typeName);
    }
  }

  function parseGenericType(input: string) {
    const regex = /^(\w+)<(\w+(?:,\s*\w+)*)>$/;
    const match = input.match(regex);

    if (!match) return null; // Return null if input doesn't match the expected pattern with < and >

    const typeName = match[1];
    const genericParameters = match[2].split(/\s*,\s*/);

    return {
      typeName,
      genericParameters,
    };
  }

  function transformTyped(typed: Browser.Typed): string {
    if (typeof typed.type !== "string") {
      return "unknown";
    }

    if (typed.overrideType === "T" && typed.type === "any") {
      return "'t";
    }

    if (
      typed.subtype &&
      !Array.isArray(typed.subtype) &&
      typeof typed.subtype.type === "string"
    ) {
      return `${mapTypeToReScript(typed.type)}<${transformTyped(typed.subtype)}>`;
    }

    // Model as Undefined.t<'other>
    if (
      typed.subtype &&
      !Array.isArray(typed.subtype) &&
      Array.isArray(typed.subtype.type) &&
      typed.subtype.type.length === 2 &&
      typed.subtype.type.some((t) => t.type === "undefined")
    ) {
      const otherType = typed.subtype.type.find((t) => t.type !== "undefined")!;
      return `Nullable.t<${transformTyped(otherType)}>`;
    }

    let t = typed.type;
    if (typeof typed.overrideType === "string") {
      t = typed.overrideType;
    }

    if (Array.isArray(typed.overrideType)) {
      t = typed.overrideType[0];
    }

    if (t === "QueuingStrategySize<ArrayBufferView>") {
      return "int";
    }

    if (alwaysGenericTypes.has(t)) {
      return `${mapTypeToReScript(t)}<unit>`;
    }

    const genericType = parseGenericType(t);
    if (genericType) {
      const ps = genericType.genericParameters
        .map((p) => {
          if (p.length === 1) {
            return `'${p.toLocaleLowerCase()}`;
          }
          return mapTypeToReScript(p);
        })
        .join(", ");
      return `${mapTypeToReScript(genericType.typeName)}<${ps}>`;
    }

    return mapTypeToReScript(t);
  }

  function transformPropertyValue(
    i: Browser.Interface | Browser.Dictionary,
    property: Browser.Member,
  ): string {
    if (typeof property.type === "string") {
      if (i.name === "Event" && property.name === "type") {
        return "eventType";
      }

      return transformTyped(property);
    } else {
      console.log("non string property type", property.type);
    }

    return "unknown";
  }

  function emitProperty(i: Browser.Interface, property: Browser.Property) {
    if (!("mdnUrl" in property)) return;

    printComment({
      mdnUrl: property.mdnUrl,
      comment: property.comment,
    });
    let propertyValue = transformPropertyValue(i, property);
    printer.print(`${getFieldName(property)}`);
    if (property.optional) printer.print(`?`);
    printer.print(`: `);
    if (property.nullable) printer.print(`Null.t<${propertyValue}>`);
    else printer.print(propertyValue);
    printer.printLine(`,`);
  }

  // TODO: This and emitInterfaceRecord should share most of the logic at some point
  function emitDictionaryRecord(i: Browser.Dictionary) {
    seenItems.set(i.name, i);
    const fieldNamesFromExtended = i.extends
      ? Array.from(typeFieldNames.get(i.extends.split("<")[0])?.values() ?? [])
      : [];
    const typename = toCamelCase(i.name);
    printer.print(
      `type ${typename}${reservedRescriptWords.includes(typename) ? "_" : ""}`,
    );
    printTypeParams(i.typeParameters);
    printer.printLine(` = {`);
    printer.increaseIndent();

    if (i.extends) {
      printer.printLine(`...${transformExtends(i.extends)},`);
    }

    if (i.members.member) {
      for (const key of Object.keys(i.members.member)) {
        if (fieldNamesFromExtended.includes(key)) continue;
        let property = i.members.member[key];
        printComment({ comment: property.comment });
        let propertyValue = transformPropertyValue(i, property);
        printer.print(`${getFieldName(property)}`);
        printer.print(`: `);
        if (property.nullable) printer.print(`Null.t<${propertyValue}>`);
        else printer.print(propertyValue);
        printer.printLine(`,`);
      }
    }

    const fieldNames = new Set([
      ...Object.keys(i.members.member ?? []),
      ...fieldNamesFromExtended,
    ]);
    typeFieldNames.set(i.name, fieldNames);

    printer.decreaseIndent();
    printer.printLine("}");
    printer.endLine();
  }

  function emitInterfaceRecord(
    options: interfaceSettings,
    i: Browser.Interface,
  ) {
    seenItems.set(i.name, i);
    const fieldNamesFromExtended = i.extends
      ? Array.from(typeFieldNames.get(i.extends.split("<")[0])?.values() ?? [])
      : [];
    const typename = toCamelCase(i.name);
    printComment({ name: i.name, mdnUrl: i.mdnUrl, comment: i.comment });
    printer.print(
      `${options.typeKeywords} ${typename}${reservedRescriptWords.includes(typename) ? "_" : ""}`,
    );
    printTypeParams(i.typeParameters);
    printer.printLine(` = {`);
    printer.increaseIndent();

    // TODO: what to do with error?
    if (i.extends && i.extends !== "Error") {
      if (options.allowSpreading) {
        printer.printLine(`...${transformExtends(i.extends)},`);
      } else {
        const baseProperties = collectExtendsProperties(i);
        Object.entries(baseProperties).forEach(([name, properties]) => {
          if (properties.length !== 0) {
            printer.printLine(`// Base properties from ${name}`);
            properties
              .filter((p) => !p.eventHandler)
              .forEach((p) => {
                emitProperty(i, p);
              });
            printer.printLine(`// End base properties from ${name}`);
            printer.endLine();
          }
        });
      }
    }

    if (i.properties?.property) {
      for (const key of Object.keys(i.properties.property)) {
        let property = i.properties.property[key];

        // I'm curious to know which properties are overwritten in the extended interface
        if (fieldNamesFromExtended.includes(key)) {
          console.log(`skipping ${i.name}.${key}, mdn: ${i.mdnUrl}`);
        }

        if (
          fieldNamesFromExtended.includes(key) ||
          property.deprecated ||
          property.eventHandler
        )
          continue;

        emitProperty(i, property);
      }
    }

    const fieldNames = new Set([
      ...Object.keys(i.properties?.property ?? []),
      ...fieldNamesFromExtended,
    ]);
    typeFieldNames.set(i.name, fieldNames);

    printer.decreaseIndent();
    printer.printLine("}");
    printer.endLine();
  }

  // method is quite empty for the forEach method.
  // This occurs for NodeList and NodeListOf
  function emitForEachMethod(i: Browser.Interface, method: Browser.Method) {
    const itemType = i.typeParameters ? "'tNode" : "node";

    printComment({
      mdnUrl: method.mdnUrl,
      comment: method.comment,
    });
    printer.printLine("@send");
    printer.printLine(
      `external forEach: (${mapInterfaceName(i)}, (${itemType} => int => ${mapInterfaceName(i)} => unit)) => unit = "forEach"`,
    );
    printer.endLine();
  }

  // I'm deviating quite heavily from what the typescript definition does here
  // It simplifies the event handling quite a bit for now.
  function emitAddOrRemoveEventListener(
    prefix: "add" | "remove",
    i: Browser.Interface,
    method: Browser.Method,
  ) {
    printComment({
      mdnUrl: method.mdnUrl,
      comment: method.comment,
    });
    printer.printLine("@send");
    printer.printLine(
      `external ${prefix}EventListener: (${toCamelCase(i.name)}, eventType, eventListener<eventType>) => unit = "addEventListener"`,
    );
    printer.endLine();

    printComment({
      mdnUrl: method.mdnUrl,
      comment: method.comment,
    });
    printer.printLine("@send");
    printer.printLine(
      `external ${prefix}EventListenerWithOptions: (${toCamelCase(i.name)}, eventType, eventListener<eventType>, ${prefix === "add" ? "addE" : "e"}ventListenerOptions) => unit = "addEventListener"`,
    );
    printer.endLine();

    printComment({
      mdnUrl: method.mdnUrl,
      comment: method.comment,
    });
    printer.printLine("@send");
    printer.printLine(
      `external ${prefix}EventListenerWithUseCapture: (${toCamelCase(i.name)}, eventType, eventListener<eventType>, bool) => unit = "addEventListener"`,
    );
    printer.endLine();
  }

  function mapMethodName(method: Browser.Method) {
    if (reservedRescriptWords.includes(method.name)) {
      return `${method.name}_`;
    }

    return method.name;
  }

  function mapMethodReturnType(signature: Browser.Signature) {
    const genericTypeParams = new Set(
      (signature.typeParameters || []).map((tp) => tp.name),
    );

    if (
      signature.overrideType &&
      genericTypeParams.has(signature.overrideType)
    ) {
      return `'${transformTyped(signature)}`;
    }

    return transformTyped(signature);
  }

  // TODO: deal with overloads?
  function emitMethod(i: Browser.Interface, method: Browser.Method) {
    if (method.signature.length === 0 || method.deprecated) return;

    const signature = method.signature[0];
    if (typeof signature.type !== "string") return;

    let ps = mapSignatureParameters(signature);

    printComment({
      mdnUrl: method.mdnUrl,
      comment: method.comment,
    });
    if (method.static) {
      printer.printLine(`@scope("${i.name}")`);
      printer.printLine(
        `external ${mapMethodName(method)}: (${ps}) => ${mapMethodReturnType(signature)} = "${method.name}"`,
      );
    } else {
      ps = ps.length > 0 ? ", " + ps : "";

      printer.printLine("@send");
      printer.printLine(
        `external ${mapMethodName(method)}: (${mapInterfaceName(i)}${ps}) => ${mapMethodReturnType(signature)} = "${method.name}"`,
      );
    }

    printer.endLine();
  }

  function mapSignatureParameters(
    signature: Browser.Signature,
    join: string = ", ",
  ): string {
    const genericTypeParams = new Set(
      (signature.typeParameters || []).map((tp) => tp.name),
    );

    return signature.param?.length === 0
      ? ""
      : (signature.param || [])
          .map((p) => {
            if (p.overrideType && genericTypeParams.has(p.overrideType)) {
              return `'${toCamelCase(p.overrideType)}`;
            }

            return transformTyped(p);
          })
          .join(join);
  }

  function emitConstructor(i: Browser.Interface, c: Browser.Constructor) {
    if (c.signature === undefined || c.signature.length === undefined) {
      console.log("YOO C", i.name, c);
      return;
    }
    if (c.signature.length === 0) return;

    const signature = c.signature[0];
    let ps = mapSignatureParameters(signature);

    if (i.name === "ReadableStream") {
      ps = "";
    }

    printComment({
      mdnUrl: i.mdnUrl,
      comment: c.comment,
    });

    printer.printLine(`@new`);
    printer.printLine(
      `external make: (${ps}) => ${transformTyped(signature)} = "${i.name}"`,
    );
  }

  // TODO: add constructor fn and cast fn

  function emitInterfaceNestedModule(i: Browser.Interface) {
    const hasMethods = i.methods && Object.keys(i.methods.method).length > 0;
    const hasConstructor = i.constructor || false;
    if (!(hasMethods || hasConstructor)) return;

    printer.printLine(`module ${i.name} = {`);
    printer.increaseIndent();

    if (i.constructor) {
      emitConstructor(i, i.constructor);
    }

    for (const [key, method] of Object.entries(i.methods.method)) {
      if (!method.name && key === "forEach") {
        emitForEachMethod(i, method);
        continue;
      }

      if (method.name === "addEventListener") {
        emitAddOrRemoveEventListener("add", i, method);
        continue;
      }

      if (method.name === "removeEventListener") {
        emitAddOrRemoveEventListener("remove", i, method);
        continue;
      }

      if (method.signature) {
        emitMethod(i, method);
      }
    }

    printer.decreaseIndent();
    printer.printLine("}");
    printer.endLine();
  }

  function emitEnum(e: Browser.Enum) {
    const values = e.value.slice().sort();
    printer.printLine(`type ${toCamelCase(e.name)} =`);
    values.forEach((v) => {
      if (v !== "") printer.printLine(`  | ${getVariantName(v)}`);
    });
    printer.printLine("");
  }

  function emitCallback(c: Browser.CallbackFunction) {
    if (c.signature.length === 0) return;

    const signature = c.signature[0];

    let ps = mapSignatureParameters(signature, " => ");
    ps = ps && `${ps} => `;

    printer.printLine(
      `type ${toCamelCase(c.name)} = (${ps}${transformTyped(signature)})`,
    );
    printer.endLine();
  }

  function emitEnums() {
    getElements(webidl.enums, "enum")
      .sort(compareName)
      .filter((i) => !i.legacyNamespace)
      .forEach(emitEnum);
  }

  function emitDictionaries() {
    const dicts = getElements(webidl.dictionaries, "dictionary")
      .sort(compareName)
      .filter((i) => !i.legacyNamespace);

    const sortedDicts = topologicalSortDictionaries(dicts);

    sortedDicts.forEach(emitDictionaryRecord);
  }

  function emitEventType() {
    let globalEventHandlers = webidl.mixins?.mixin["GlobalEventHandlers"];
    if (globalEventHandlers) {
      let properties = globalEventHandlers.properties?.property || {};
      const keys = Object.keys(properties);
      if (keys.length > 0) {
        printer.printLine("@unboxed");
        printer.printLine("type eventType =");
        printer.increaseIndent();
        for (const key of Object.keys(properties)) {
          const property = properties[key];
          const eventName = property.eventHandler;
          if (eventName) {
            printer.printLine(`| ${getVariantName(eventName)}`);
          }
        }
        printer.printLine("| Custom(string)");
        printer.decreaseIndent();
        printer.endLine();
      }
    }
  }

  // Make event handlers just generic functions
  function emitEventListener() {
    printer.printLine("type eventListener<'event> = 'event => unit");
    printer.endLine();
  }

  function emitEventPhase() {
    printer.printLine("type eventPhase  =");
    printer.increaseIndent();
    printer.printLine("| @as(0) NONE");
    printer.printLine("| @as(1) CAPTURING_PHASE");
    printer.printLine("| @as(2) AT_TARGET");
    printer.printLine("| @as(3) BUBBLING_PHASE");
    printer.decreaseIndent();
    printer.endLine();
  }

  function emitQueuingStrategy() {
    printer.printLine("type queuingStrategy<'t> = {}");
  }

  function emitIndividualInterfaces(items: Browser.Interface[]) {
    for (const i of items) {
      emitInterfaceRecord({ allowSpreading: true, typeKeywords: "type" }, i);
    }
  }

  function emitInterfaceChain(chain: Browser.Interface[]) {
    for (const [idx, i] of chain.entries()) {
      emitInterfaceRecord(
        {
          allowSpreading: false,
          typeKeywords: idx === 0 ? "type rec" : "and",
        },
        i,
      );
      // TODO: construct a %identity function to convert to the base interface?
      // Or perhaps this happens in a separate file/module?
    }
  }

  function emitMediaImage() {
    printer.printLine("type mediaImage = {");
    printer.increaseIndent();
    printer.printLine("src: string,");
    printer.printLine("sizes?: string,");
    printer.printLine('@as("type") type_?: string,');
    printer.decreaseIndent();
    printer.printLine("}");
  }

  function emitBlobPart() {
    printer.printLine("@unboxed");
    printer.printLine("type blobPart =");
    printer.increaseIndent();
    printer.printLine("| String(string)");
    printer.printLine("| Blob(blob)");
    printer.printLine("// | ArrayBuffer(ArrayBuffer.t)");
    printer.printLine("// | TypedArray(TypedArray.t<int>)");
    printer.decreaseIndent();
    printer.endLine();
  }

  // TODO: this function is defined in typedefs
  // we should try and parse this similar to callback functions
  // and emit a unboxed type (if it has all primitves of course)

  // the context here is https://developer.mozilla.org/en-US/docs/Web/API/Navigator/vibrate
  // it might also make sense to just emit an overload for Navigator.vibrate
  function emitVibratePattern() {
    printer.printLine("@unboxed");
    printer.printLine("type vibratePattern =");
    printer.increaseIndent();
    printer.printLine("| Int(int)");
    printer.printLine("| IntArray(array<int>)");
    printer.decreaseIndent();
    printer.endLine();
  }

  function emitAny(name: string) {
    return () => {
      printer.printLine(`type ${toCamelCase(name)} = any`);
      printer.endLine();
    };
  }

  async function emit() {
    printer.reset();
    // printer.printLine('@@warning("-30")');
    // printer.printLine("/** Temporary, to be fixed */");
    // printer.printLine("type error = {}");
    // printer.printLine("type any");
    // printer.printLine("type arrayBufferView = {}");
    // printer.printLine("type domHighResTimeStamp");
    // printer.printLine("type usvString");
    // // TODO: "number | string | Date | BufferSource | IDBValidKey[]"
    // printer.printLine("type idbValidKey = unknown");
    // // TODO: https://developer.mozilla.org/en-US/docs/Web/API/CryptoKey/algorithm
    // printer.printLine("type keyAlgorithm = unknown");
    // printer.printLine("type cssPerspectiveValue = unknown");
    // printer.printLine("type arrayBuffer = unknown");
    // // "MediaProvider", // The object can be a MediaStream, a MediaSource, a Blob, or a File (which inherits from Blob).
    // printer.printLine("type mediaProvider = unknown");
    // // https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent/source
    // printer.printLine("type messageEventSource = unknown");
    // // https://developer.mozilla.org/en-US/docs/Web/API/WebTransport/closed
    // printer.printLine("type webTransportCloseInfo = unknown");
    // printer.printLine("type lineAndPositionSetting = unknown");
    // printer.printLine("/* End temporary */");
    // printer.printLine("");

    // emitDictionaries();

    // prim-types-prelude.res => types that need to exist before anything else.

    // emitEnums();

    // emitEventPhase();
    // emitQueuingStrategy();
    // emitMediaImage();

    type IndividualInterfaces = {
      kind: "individuals";
      interfaces: Browser.Interface[];
    };

    type ChainOfInterfaces = {
      kind: "chain";
      interfaces: Browser.Interface[];
    };

    type TypeByHand = {
      kind: "byHand";
      name: string;
      emitInterface: () => void;
    };

    type DictionaryEntries = {
      kind: "dictionary";
      dictionaries: Browser.Dictionary[];
    };

    type EnumEntries = {
      kind: "enum";
      enums: Browser.Enum[];
    };

    type GenerationEntry =
      | IndividualInterfaces
      | ChainOfInterfaces
      | TypeByHand
      | DictionaryEntries
      | EnumEntries;

    type RescriptFile = {
      name: string;
      entries: GenerationEntry[];
      opens: string[];
    };

    function individualInterfaces(names: string[]): GenerationEntry {
      const interfaces = names
        .map((name) => {
          const i = allInterfaces.find((i) => i.name === name);
          return i;
        })
        .filter((i) => i !== undefined) as Browser.Interface[];

      return {
        kind: "individuals",
        interfaces: interfaces,
      };
    }

    function chain(names: string[]): GenerationEntry {
      const interfaces = names
        .map((name) => {
          const i = allInterfaces.find((i) => i.name === name);
          return i;
        })
        .filter((i) => i !== undefined) as Browser.Interface[];

      return {
        kind: "chain",
        interfaces,
      };
    }

    function byHand(name: string, emitter: () => void): GenerationEntry {
      return {
        name: name,
        kind: "byHand",
        emitInterface: emitter,
      };
    }

    function dictionaries(names: string[]): GenerationEntry {
      const dictionaries = names
        .map((name) => {
          const d = allDictionaries.find((d) => d.name === name);
          return d;
        })
        .filter((i) => i !== undefined) as Browser.Dictionary[];

      return {
        kind: "dictionary",
        dictionaries,
      };
    }

    function enums(names: string[]): GenerationEntry {
      const enums = names
        .map((name) => {
          const e = allEnums.find((e) => e.name === name);
          return e;
        })
        .filter((i) => i !== undefined) as Browser.Enum[];

      return {
        kind: "enum",
        enums,
      };
    }

    function callbacks(names: string[]): GenerationEntry[] {
      return names
        .map((name) => {
          const c = allCallbacks.find((c) => c.name === name);
          return c;
        })
        .filter((c) => c !== undefined)
        .map((c) => {
          return {
            kind: "byHand",
            name: c.name,
            emitInterface: () => emitCallback(c),
          };
        });
    }

    const interfaceHierarchy: RescriptFile[] = [
      {
        name: "Prelude",
        entries: [
          byHand("any", () => printer.printLine("type any = {}")),
          byHand("BufferSource", emitAny("BufferSource")),
          byHand("BodyInit", emitAny("BodyInit")),
          individualInterfaces(["DOMException"]),
        ],
        opens: [],
      },

      {
        name: "Event",
        entries: [
          byHand("EventType", emitEventType),
          byHand("EventListener", emitEventListener),
          individualInterfaces([
            "EventTarget",
            "Event",
            "AddEventListenerOptions",
          ]),
          chain(["AbortController", "AbortSignal"]),
          dictionaries([
            "EventListenerOptions",
            "AddEventListenerOptions",
            "EventInit",
          ]),
        ],
        opens: ["Prelude"],
      },
      // https://developer.mozilla.org/en-US/docs/Web/API/Channel_Messaging_API
      {
        name: "ChannelMessaging",
        entries: [individualInterfaces(["MessagePort"])],
        opens: ["Prelude", "Event"],
      },
      // https://developer.mozilla.org/en-US/docs/Web/API/History
      {
        name: "History",
        entries: [
          enums(["ScrollRestoration"]),
          individualInterfaces(["History"]),
        ],
        opens: ["Prelude"],
      },
      // https://developer.mozilla.org/en-US/docs/Web/API/File_API
      {
        name: "File",
        entries: [
          enums(["EndingType", "ReadableStreamReaderMode"]),
          individualInterfaces([
            "Blob",
            "ReadableStream",
            "WritableStream",
            "WritableStreamDefaultController",
            "File",
          ]),
          byHand("BlobPart", emitBlobPart),
          byHand("QueuingStrategy", emitAny("QueuingStrategy<'t>")),
          byHand("UnderlyingSink", emitAny("UnderlyingSink<'t>")),
          byHand("ReadableStreamReader", emitAny("ReadableStreamReader<'t>")),
          byHand(
            "WritableStreamDefaultWriter",
            emitAny("WritableStreamDefaultWriter<'t>"),
          ),
          ...callbacks(["UnderlyingSourceCancelCallback"]),
          dictionaries([
            "BlobPropertyBag",
            "UnderlyingByteSource",
            "ReadableStreamGetReaderOptions",
            "ReadableWritablePair",
            "StreamPipeOptions",
            "FilePropertyBag",
          ]),
        ],
        opens: ["Prelude", "Event"],
      },
      // https://developer.mozilla.org/en-US/docs/Web/API/Clipboard
      {
        name: "Clipboard",
        entries: [
          enums(["PresentationStyle"]),
          individualInterfaces(["ClipboardItem", "Clipboard"]),
          dictionaries(["ClipboardItemOptions"]),
        ],
        opens: ["Prelude", "Event", "File"],
      },
      // https://developer.mozilla.org/en-US/docs/Web/API/Credential_Management_API
      {
        name: "CredentialManagement",
        entries: [
          enums([
            "AuthenticatorTransport",
            "CredentialMediationRequirement",
            "PublicKeyCredentialType",
            "UserVerificationRequirement",
            "AuthenticatorAttachment",
            "ResidentKeyRequirement",
            "AttestationConveyancePreference",
          ]),
          individualInterfaces(["CredentialsContainer", "Credential"]),
          dictionaries([
            "PublicKeyCredentialDescriptor",
            "AuthenticationExtensionsPRFValues",
            "AuthenticationExtensionsPRFInputs",
            "AuthenticationExtensionsClientInputs",
            "PublicKeyCredentialRequestOptions",
            "CredentialRequestOptions",
            "PublicKeyCredentialEntity",
            "PublicKeyCredentialRpEntity",
            "PublicKeyCredentialUserEntity",
            "PublicKeyCredentialParameters",
            "AuthenticatorSelectionCriteria",
            "PublicKeyCredentialCreationOptions",
            "CredentialCreationOptions",
          ]),
        ],
        opens: ["Prelude", "Event"],
      },
      // https://developer.mozilla.org/en-US/docs/Web/API/Geolocation_API
      {
        name: "Geolocation",
        entries: [
          individualInterfaces([
            "Geolocation",
            "GeolocationCoordinates",
            "GeolocationPosition",
            "GeolocationPositionError",
          ]),
          dictionaries(["PositionOptions"]),
          ...callbacks(["PositionCallback", "PositionErrorCallback"]),
        ],
        opens: [],
      },
      // https://developer.mozilla.org/en-US/docs/Web/API/Media_Capabilities_API
      {
        name: "MediaCapabilities",
        entries: [
          enums([
            "HdrMetadataType",
            "ColorGamut",
            "TransferFunction",
            "MediaDecodingType",
            "MediaEncodingType",
          ]),
          individualInterfaces(["MediaCapabilities"]),
          dictionaries([
            "AudioConfiguration",
            "VideoConfiguration",
            "MediaConfiguration",
            "MediaDecodingConfiguration",
            "MediaCapabilitiesInfo",
            "MediaCapabilitiesDecodingInfo",
            "MediaEncodingConfiguration",
            "MediaCapabilitiesEncodingInfo",
          ]),
        ],
        opens: [],
      },
      // https://developer.mozilla.org/en-US/docs/Web/API/Media_Capture_and_Streams_API
      {
        name: "MediaCaptureAndStreams",
        entries: [
          enums(["MediaDeviceKind", "MediaStreamTrackState"]),
          individualInterfaces([
            "MediaDevices",
            "MediaDeviceInfo",
            "MediaStream",
            "MediaStreamTrack",
          ]),
          dictionaries([
            "MediaTrackSupportedConstraints",
            "MediaStreamConstraints",
            "DisplayMediaStreamOptions",
            "ULongRange",
            "DoubleRange",
            "MediaTrackCapabilities",
            "MediaTrackConstraintSet",
            "MediaTrackConstraints",
            "MediaTrackSettings",
          ]),
        ],
        opens: ["Event"],
      },
      // https://developer.mozilla.org/en-US/docs/Web/API/MediaSession
      {
        name: "MediaSession",
        entries: [
          enums(["MediaSessionPlaybackState", "MediaSessionAction"]),
          dictionaries(["MediaImage"]),
          individualInterfaces(["MediaMetadata", "MediaSession"]),
          dictionaries([
            "MediaMetadataInit",
            "MediaSessionActionDetails",
            "MediaPositionState",
          ]),
          ...callbacks(["MediaSessionActionHandler"]),
        ],
        opens: ["Prelude"],
      },
      // https://developer.mozilla.org/en-US/docs/Web/API/Permissions_API
      {
        name: "Permissions",
        entries: [
          enums(["PermissionName", "PermissionState"]),
          individualInterfaces(["Permissions", "PermissionStatus"]),
          dictionaries(["PermissionDescriptor"]),
        ],
        opens: ["Event"],
      },
      // https://developer.mozilla.org/en-US/docs/Web/API/Screen_Wake_Lock_API
      {
        name: "ScreenWakeLock",
        entries: [
          enums(["WakeLockType"]),
          individualInterfaces(["WakeLock", "WakeLockSentinel"]),
        ],
        opens: ["Event"],
      },
      // https://developer.mozilla.org/en-US/docs/Web/API/Push_API
      {
        name: "PushManager",
        entries: [
          enums(["PermissionState", "PushEncryptionKeyName"]),
          individualInterfaces([
            "PushManager",
            "PushSubscriptionOptions",
            "PushSubscription",
          ]),
          dictionaries(["PushSubscriptionOptionsInit", "PushSubscriptionJSON"]),
        ],
        opens: ["Prelude"],
      },
      // https://developer.mozilla.org/en-US/docs/Web/API/Notifications_API
      {
        name: "Notification",
        entries: [
          enums(["NotificationDirection", "NotificationPermission"]),
          individualInterfaces(["Notification"]),
          dictionaries(["NotificationOptions", "GetNotificationOptions"]),
          ...callbacks(["NotificationPermissionCallback"]),
        ],
        opens: ["Prelude", "Event"],
      },
      // https://developer.mozilla.org/en-US/docs/Web/API/Service_Worker_API
      {
        name: "ServiceWorker",
        entries: [
          enums([
            "ServiceWorkerState",
            "ServiceWorkerUpdateViaCache",
            "WorkerType",
          ]),
          individualInterfaces([
            "ServiceWorker",
            "NavigationPreloadManager",
            "ServiceWorkerRegistration",
            "ServiceWorkerContainer",
          ]),
          dictionaries(["NavigationPreloadState", "RegistrationOptions"]),
        ],
        opens: ["Prelude", "Event", "PushManager", "Notification"],
      },
      // https://developer.mozilla.org/en-US/docs/Web/API/Encrypted_Media_Extensions_API
      {
        name: "EncryptedMediaExtensions",
        entries: [
          enums([
            "MediaKeysRequirement",
            "MediaKeySessionType",
            "MediaKeySessionClosedReason",
            "MediaKeyStatus",
          ]),
          individualInterfaces([
            "MediaKeySystemAccess",
            "MediaKeys",
            "MediaKeyStatusMap",
            "MediaKeySession",
          ]),
          dictionaries([
            "MediaKeySystemMediaCapability",
            "MediaKeySystemConfiguration",
            "MediaKeysPolicy",
          ]),
        ],
        opens: ["Prelude", "Event"],
      },
      // https://developer.mozilla.org/en-US/docs/Web/API/Gamepad_API
      {
        name: "Gamepad",
        entries: [
          enums([
            "GamepadMappingType",
            "GamepadHapticEffectType",
            "GamepadHapticsResult",
          ]),
          individualInterfaces([
            "GamepadButton",
            "GamepadHapticActuator",
            "Gamepad",
          ]),
          dictionaries(["GamepadEffectParameters"]),
        ],
        opens: [],
      },
      // https://developer.mozilla.org/en-US/docs/Web/API/Web_MIDI_API
      {
        name: "WebMIDI",
        entries: [
          individualInterfaces(["MIDIInputMap", "MIDIOutputMap", "MIDIAccess"]),
          dictionaries(["MIDIOptions"]),
        ],
        opens: ["Event"],
      },
      // https://developer.mozilla.org/en-US/docs/Web/API/History
      {
        name: "History",
        entries: [
          enums(["ScrollRestoration"]),
          individualInterfaces(["History"]),
        ],
        opens: ["Prelude"],
      },
      //https://developer.mozilla.org/en-US/docs/Web/API/Visual_Viewport_API
      {
        name: "VisualViewport",
        entries: [individualInterfaces(["VisualViewport"])],
        opens: ["Event"],
      },
      //https://developer.mozilla.org/en-US/docs/Web/API/Web_Speech_API
      {
        name: "WebSpeech",
        entries: [
          individualInterfaces([
            "SpeechSynthesis",
            "SpeechSynthesisVoice",
            "SpeechSynthesisUtterance",
          ]),
        ],
        opens: ["Event"],
      },
      // https://developer.mozilla.org/en-US/docs/Web/API/View_Transitions_API
      {
        name: "ViewTransitions",
        entries: [individualInterfaces(["ViewTransition"])],
        opens: [],
      },
      // https://developer.mozilla.org/en-US/docs/Web/API/File_and_Directory_Entries_API
      {
        name: "FileAndDirectoryEntries",
        entries: [
          chain(["FileSystemEntry", "FileSystemDirectoryEntry", "FileSystem"]),
          individualInterfaces(["FileSystemDirectoryReader"]),
          dictionaries(["FileSystemFlags"]),
          ...callbacks([
            "FileSystemEntryCallback",
            "ErrorCallback",
            "FileSystemEntriesCallback",
          ]),
        ],
        opens: ["Prelude"],
      },
      // https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model
      // https://developer.mozilla.org/en-US/docs/Web/API/HTML_DOM_API
      {
        name: "DOM",
        entries: [
          enums([
            "ShadowRootMode",
            "SlotAssignmentMode",
            "AutoFillBase",
            "DocumentReadyState",
            "DocumentVisibilityState",
            "OrientationType",
            "InsertPosition",
            "ScrollBehavior",
            "FullscreenNavigationUI",
          ]),
          // TODO: perhaps move to Web Share API?
          // See https://developer.mozilla.org/en-US/docs/Web/API/Web_Share_API
          // It does not have interfaces and only extends the navigator object
          dictionaries(["ShareData"]),
          individualInterfaces([
            "DOMStringList",
            "Location",
            "UserActivation",
            "Navigator",
            "DOMTokenList",
            "NamedNodeMap",
            "FragmentDirective",
            "CustomElementRegistry",
            "BarProp",
            "ScreenOrientation",
            "Screen",
          ]),
          byHand("VibratePattern", emitVibratePattern),
          byHand("HTMLMediaElement", emitAny("HTMLMediaElement")),
          chain(["AnimationTimeline", "DocumentTimeline"]),
          chain([
            "Node",
            "NodeList",
            "NodeListOf",
            "Element",
            "ShadowRoot",
            "HTMLCollection",
            "HTMLCollectionOf",
            "HTMLFormControlsCollection",
            "HTMLElement",
            "HTMLHeadElement",
            "HTMLFormElement",
            "HTMLImageElement",
            "HTMLEmbedElement",
            "HTMLAnchorElement",
            "HTMLAreaElement",
            "HTMLScriptElement",
            "DOMImplementation",
            "DocumentType",
            "Document",
            "Window",
            "MutationRecord",
            "Attr",
            "CharacterData",
          ]),
          individualInterfaces([
            "StylePropertyMapReadOnly",
            "DOMRectReadOnly",
            "DOMRect",
            "DOMRectList",
            "ValidityState",
            "CustomStateSet",
            "ElementInternals",
            "XMLDocument",
            "DocumentFragment",
            "Text",
            "CDATASection",
            "Comment",
            "ProcessingInstruction",
            "AbstractRange",
            "Range",
            "NodeFilter",
            "NodeIterator",
            "TreeWalker",
            "CaretPosition",
            "Selection",
            "MediaQueryList",
            "MediaList",
            "IdleDeadline",
            "CSSStyleValue",
            "FileList",
            "FileSystemDirectoryReader",
          ]),
          chain([
            "StyleSheet",
            "CSSStyleSheet",
            "CSSRule",
            "CSSRuleList",
            "CSSStyleDeclaration",
          ]),
          chain([
            "HTMLTableElement",
            "HTMLTableCaptionElement",
            "HTMLTableSectionElement",
            "HTMLTableCellElement",
            "HTMLTableRowElement",
          ]),
          chain([
            "HTMLButtonElement",
            "HTMLLabelElement",
            "HTMLTextAreaElement",
            "HTMLOutputElement",
            "HTMLInputElement",
            "HTMLDataListElement",
            "HTMLSelectElement",
            "HTMLOptionElement",
            "HTMLOptionsCollection",
          ]),
          dictionaries([
            "ElementDefinitionOptions",
            "DocumentTimelineOptions",
            "GetRootNodeOptions",
            "ShadowRootInit",
            "CheckVisibilityOptions",
            "ScrollOptions",
            "ScrollToOptions",
            "FullscreenOptions",
            "GetHTMLOptions",
            "PointerLockOptions",
            "CaretPositionFromPointOptions",
            "IdleRequestOptions",
            "DOMRectInit",
            "ValidityStateFlags",
            "CSSStyleSheetInit",
          ]),
          ...callbacks([
            "CustomElementConstructor",
            "ViewTransitionUpdateCallback",
            "IdleRequestCallback",

            "FileSystemEntriesCallback",
          ]),
        ],
        opens: [
          "Prelude",
          "Event",
          "Clipboard",
          "CredentialManagement",
          "Geolocation",
          "MediaCapabilities",
          "MediaCaptureAndStreams",
          "MediaSession",
          "Permissions",
          "ScreenWakeLock",
          "ServiceWorker",
          "EncryptedMediaExtensions",
          "Gamepad",
          "File",
          "WebMIDI",
          "History",
          "VisualViewport",
          "WebSpeech",
          "ViewTransitions",
          "FileAndDirectoryEntries",
        ],
      },
      // https://developer.mozilla.org/en-US/docs/Web/API/Web_Audio_API
      {
        name: "WebAudio",
        entries: [
          enums([
            "AudioContextState",
            "BiquadFilterType",
            "ChannelCountMode",
            "ChannelInterpretation",
            "OscillatorType",
            "PanningModelType",
            "DistanceModelType",
            "OverSampleType",
            "MediaStreamTrackState",
          ]),
          individualInterfaces([
            "AudioBuffer",
            "AudioProcessingEvent",
            "MediaStreamTrack",
            "MediaTrackCapabilities",
            "OfflineAudioCompletionEvent",
          ]),
          chain([
            "AudioNode",
            "AudioDestinationNode",
            "BaseAudioContext",
            "BiquadFilterNode",
            "AudioListener",
            "AudioWorklet",
            "AudioParam",
            "AudioScheduledSourceNode",
            "AudioBufferSourceNode",
            "ChannelMergerNode",
            "ChannelSplitterNode",
            "ConstantSourceNode",
            "ConvolverNode",
            "DelayNode",
            "DynamicsCompressorNode",
            "GainNode",
            "IIRFilterNode",
            "OscillatorNode",
            "PannerNode",
          ]),
          individualInterfaces([
            "AnalyserNode",
            "PeriodicWave",
            "StereoPannerNode",
            "WaveShaperNode",
            "AudioContext",
            "MediaElementAudioSourceNode",
            "MediaStream",
            "MediaStreamAudioSourceNode",
            "MediaStreamAudioDestinationNode",
            "AudioParamMap",
            "AudioWorkletNode",
            "OfflineAudioContext",
          ]),
          dictionaries([
            "PeriodicWaveConstraints",
            "AudioTimestamp",
            "ULongRange",
            "DoubleRange",
            "MediaTrackCapabilities",
            "MediaTrackConstraintSet",
            "MediaTrackConstraints",
            "MediaTrackSettings",
            "AudioBufferOptions",
            "AudioProcessingEventInit",
            "OfflineAudioCompletionEventInit",
            "AudioNodeOptions",
            "BiquadFilterOptions",
            "AudioBufferSourceOptions",
            "ChannelMergerOptions",
            "ChannelSplitterNode",
            "ChannelSplitterOptions",
            "ConstantSourceOptions",
            "ConvolverOptions",
            "DelayOptions",
            "DynamicsCompressorOptions",
            "GainOptions",
            "IIRFilterOptions",
            "OscillatorOptions",
            "PannerOptions",
            "AnalyserOptions",
            "PeriodicWaveOptions",
            "StereoPannerOptions",
            "WaveShaperOptions",
            "AudioContextOptions",
            "MediaElementAudioSourceOptions",
            "MediaStreamAudioSourceOptions",
            "AudioWorkletNodeOptions",
            "OfflineAudioContextOptions",
          ]),
          ...callbacks(["DecodeSuccessCallback", "DecodeErrorCallback"]),
        ],
        opens: ["Prelude", "ChannelMessaging", "Event", "DOM"],
      },

      // chain([
      //   "AudioNode",
      //   "AudioDestinationNode",
      //   "BaseAudioContext",
      //   "AudioListener",
      //   "AudioWorklet",
      //   "AudioParam",
      // ]),
      // individualInterfaces(["NavigationPreloadManager", "PushManager"]),
      // chain([
      //   "ServiceWorkerRegistration",
      //   "ServiceWorker",
      //   "ServiceWorkerContainer",
      // ]),
      // chain(["FileSystemEntry", "FileSystemDirectoryEntry", "FileSystem"]),
      // individualInterfaces([
      //   "DOMTokenList",
      //   "NamedNodeMap",
      //   "DOMStringList",
      //   "Location",
      //   "FragmentDirective",
      //   "History",
      //   "CustomElementRegistry",
      //   // https://developer.mozilla.org/en-US/docs/Web/API/Window/locationbar
      //   "BarProp",
      //   "Clipboard",
      //   "CredentialsContainer",
      //   "Geolocation",
      //   "MediaCapabilities",
      //   "UserActivation",
      //   "MediaDevices",
      //   "MediaMetadata",
      //   "MediaSession",
      //   "Permissions",
      //   "WakeLock",
      //   "Navigator",
      //   "ScreenOrientation",
      //   "Screen",
      //   "VisualViewport",
      //   "SpeechSynthesis",
      //   "DOMException",
      //   "IDBValidKey",
      //   "IDBDatabase",
      //   "IDBTransaction",
      //   "IDBRequest",
      //   "IDBCursor",
      //   "SubtleCrypto",
      //   "KeyAlgorithm",
      //   "CryptoKey",
      //   "DataTransferItemList",
      //   "FileList",
      //   "DataTransfer",
      //   "AnimationEffect",
      //   "MediaList",
      //   "CSSNumericArray",
      //   "CSSTransformComponent",
      //   "CSSStyleValue",
      //   "CSSNumericValue",
      //   "CSSPerspective",
      //   "DOMMatrixReadOnly",
      //   "DOMMatrix",
      //   "CSSMatrixComponent",
      //   "NodeFilter",
      //   "MediaKeyStatusMap",
      //   "MediaKeySession",
      //   "ArrayBuffer",
      //   "GamepadHapticActuator",
      //   "GeolocationCoordinates",
      //   "ValidityState",
      //   "MediaError",
      //   "TimeRanges", // https://developer.mozilla.org/en-US/docs/Web/API/TimeRanges#normalized_timeranges_objects
      //   "TextTrackList",
      //   "RemotePlayback",
      //   "TextTrackCueList",
      //   "FormData",
      //   "CustomStateSet",
      //   "MessageEventSource",
      //   "MessagePort",
      //   "SourceBufferList",
      //   "SpeechSynthesisVoice",
      //   "GamepadButton",
      //   "PerformanceServerTiming",
      //   "ResizeObserverSize",
      //   "URLSearchParams",
      //   "AudioBuffer",
      //   "AuthenticatorResponse", // https://developer.mozilla.org/en-US/docs/Web/API/PublicKeyCredential/response
      //   "VideoColorSpace",
      //   "RTCSessionDescription",
      //   "RTCIceTransport",
      //   "RTCDtlsTransport",
      //   "RTCSctpTransport",
      //   "RTCRtpScriptTransform",
      //   "RTCDTMFSender",
      //   "WebTransportCloseInfo", // https://developer.mozilla.org/en-US/docs/Web/API/WebTransport/closed
      //   "VTTRegion",
      //   "LineAndPositionSetting", // https://developer.mozilla.org/en-US/docs/Web/API/VTTCue/line
      // ]),
      // chain(["AnimationTimeline", "DocumentTimeline"]),
      // chain([
      //   "Node",
      //   "NodeList",
      //   "NodeListOf",
      //   "Element",
      //   "ShadowRoot",
      //   "HTMLCollection",
      //   "HTMLCollectionOf",
      //   "HTMLFormControlsCollection",
      //   "HTMLElement",
      //   "HTMLHeadElement",
      //   "HTMLFormElement",
      //   "HTMLImageElement",
      //   "HTMLEmbedElement",
      //   "HTMLAnchorElement",
      //   "HTMLAreaElement",
      //   "HTMLScriptElement",
      //   "DOMImplementation",
      //   "DocumentType",
      //   "Document",
      //   "Window",
      //   "Event",
      //   "MutationRecord",
      // ]),
      // chain([
      //   "StyleSheet",
      //   "CSSStyleSheet",
      //   "CSSRule",
      //   "CSSRuleList",
      //   "CSSStyleDeclaration",
      // ]),
      // chain(["AbortController", "AbortSignal"]),
      // chain([
      //   "HTMLTableElement",
      //   "HTMLTableCaptionElement",
      //   "HTMLTableSectionElement",
      //   "HTMLTableCellElement",
      //   "HTMLTableRowElement",
      // ]),
      // chain([
      //   "HTMLButtonElement",
      //   "HTMLLabelElement",
      //   "HTMLTextAreaElement",
      //   "HTMLOutputElement",
      //   "HTMLInputElement",
      //   "HTMLDataListElement",
      //   "HTMLSelectElement",
      //   "HTMLOptionElement",
      //   "HTMLOptionsCollection",
      // ]),
      // chain(["ReadableByteStreamController", "ReadableStreamBYOBRequest"]),
      // chain(["Animation"]),
      // chain(["FontFaceSet"]),
      // chain(["FontFace"]),
    ];

    for (const file of interfaceHierarchy) {
      printer.reset();
      printer.printLine('@@warning("-30")');

      if (file.opens.length > 0) {
        printer.endLine();
      }
      for (const o of file.opens) {
        printer.printLine(`open ${o}`);
      }
      if (file.opens.length > 0) {
        printer.endLine();
      }

      for (const entry of file.entries) {
        switch (entry.kind) {
          case "individuals":
            emitIndividualInterfaces(entry.interfaces);
            break;
          case "chain":
            emitInterfaceChain(entry.interfaces);
            break;
          case "byHand":
            entry.emitInterface();
            break;
          case "dictionary":
            entry.dictionaries.forEach(emitDictionaryRecord);
            break;
          case "enum":
            entry.enums.forEach(emitEnum);
            break;
        }
      }

      for (const entry of file.entries) {
        if (
          entry.kind === "byHand" ||
          entry.kind === "dictionary" ||
          entry.kind === "enum"
        ) {
          continue;
        }

        for (const i of entry.interfaces) {
          emitInterfaceNestedModule(i);
        }
      }

      const contents = printer.getResult();
      await fs.writeFile(`${outputFolder}/${file.name}.res`, contents);
    }

    const repoRoot = "/home/nojaf/projects/experimental-rescript-webapi";
    execSync("npx rescript format -all", { cwd: repoRoot, stdio: "inherit" });
    execSync("npx rescript", { cwd: repoRoot, stdio: "inherit" });

    // let remainers = allInterfaces.filter((i) => {
    //   return !interfaceHierarchy.some((h) => {
    //     return h.interfaces.some((j) => {
    //       return j.name === i.name;
    //     });
    //   });
    // });
    // remainers = topologicalSortDictionaries(remainers);

    // console.log(`Remainders: ${remainers.length}`);

    // emitIndividualInterfaces(remainers);
  }

  await emit();
}
