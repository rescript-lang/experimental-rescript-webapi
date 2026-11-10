import assert from "node:assert/strict";
import test from "node:test";
import {
  hasAbstractDeclaration,
  hasExactAlias,
  validateEntry,
  validateInventoryMetadata,
} from "./native-inventory-validation.mjs";

test("accepts an abstract type declaration", () => {
  assert.equal(
    hasAbstractDeclaration("@editor.completeFrom(Response)\ntype response\n", "response"),
    true,
  );
});

test("rejects inline and multiline type representations", () => {
  assert.equal(hasAbstractDeclaration("type response = {status: int}", "response"), false);
  assert.equal(hasAbstractDeclaration("type response\n  = {status: int}", "response"), false);
});

test("ignores abstract declarations inside comments", () => {
  assert.equal(
    hasAbstractDeclaration("/* type response */\ntype response = private {}", "response"),
    false,
  );
});

test("requires an exact, uncommented public type alias", () => {
  assert.equal(
    hasExactAlias("type t = FetchTypes.response\n", "type t = FetchTypes.response"),
    true,
  );
  assert.equal(
    hasExactAlias("type t = FetchTypes.responseInit\n", "type t = FetchTypes.response"),
    false,
  );
  assert.equal(
    hasExactAlias("/* type t = FetchTypes.response */\ntype t\n", "type t = FetchTypes.response"),
    false,
  );
});

test("checks accessor declarations, annotation kinds, and native property mappings", () => {
  const entry = {
    name: "Response",
    backingType: "response",
    publicAlias: "type t = FetchTypes.response",
    accessors: [{ name: "status", kind: "get", property: "status" }],
  };
  const validSource = `
type t = FetchTypes.response
/**
 * /Response/status
 */
@get external status: t => int = "status"
`;
  assert.deepEqual(
    validateEntry(entry, {
      backingSource: "type response\n",
      publicSource: validSource,
    }),
    [],
  );
  assert.notDeepEqual(
    validateEntry(entry, {
      backingSource: "type response\n",
      publicSource: "type t = FetchTypes.response\n/** /Response/status */\n",
    }),
    [],
  );
  assert.notDeepEqual(
    validateEntry(entry, {
      backingSource: "type response\n",
      publicSource:
        'type t = FetchTypes.response\n@get external status: t => string = "statusText"\n',
    }),
    [],
  );
});

test("prevents inventory metadata from silently shrinking or declaring completion", () => {
  assert.deepEqual(
    validateInventoryMetadata({
      revision: "4888db2cc601ad568b76af6ed2add60da0ad96cb",
      status: "partial",
      publicModuleCount: 291,
      sourceFeatureGroupCount: 28,
      expectedConvertedNativeInstanceCount: 39,
      convertedNativeInstances: Array.from({ length: 39 }, (_, index) => ({
        name: [
          "Response",
          "Request",
          "HTMLCanvasElement",
          "CSSStyleValue",
          "AnimationEffect",
          "XPathExpression",
          "Headers",
          "FormData",
          "ReadableStream",
          "WritableStream",
          "WritableStreamDefaultController",
          "FileSystemWritableFileStream",
          "URL",
          "Crypto",
          "SubtleCrypto",
          "CryptoKey",
          "DOMException",
          "DOMStringList",
          "DOMTokenList",
          "DOMStringMap",
          "Cache",
          "CacheStorage",
          "IDBFactory",
          "StorageManager",
          "NavigationPreloadManager",
          "PushEvent",
          "Document",
          "Window",
          "CustomElementRegistry",
          "AbortController",
          "Blob",
          "File",
          "FileList",
          "FileSystemEntry",
          "FileSystemDirectoryEntry",
          "FileSystemDirectoryReader",
          "FileSystemHandle",
          "FileSystemDirectoryHandle",
          "FileSystemFileHandle",
        ][index],
      })),
      constructibleDataExceptions: ["responseInit"],
      dataResultUnionModels: ["formDataEntryValue"],
      unresolvedUnknownBackedHandles: ["reader"],
      knownUncheckedPublicGenericImplConversions: ["Node.Impl.asNode"],
      unconvertedNativeGroups: ["DOMTree"],
    }),
    [],
  );
  assert.notDeepEqual(
    validateInventoryMetadata({
      revision: "4888db2cc601ad568b76af6ed2add60da0ad96cb",
      status: "complete",
      publicModuleCount: 0,
      sourceFeatureGroupCount: 0,
      expectedConvertedNativeInstanceCount: 0,
      convertedNativeInstances: [],
      constructibleDataExceptions: [],
      dataResultUnionModels: [],
      unresolvedUnknownBackedHandles: [],
      knownUncheckedPublicGenericImplConversions: [],
      unconvertedNativeGroups: [],
    }),
    [],
  );
});
