import assert from "node:assert/strict";
import test from "node:test";

import { createPublicTypeTargets, parsePublicTypeAliases } from "../docs/typeLinks.js";
import { parameterParts, signatureParts } from "../docs/signatureParts.js";

const signatureText = (parts) => parts.map((part) => part.text).join("");
const constructor = (path, genericTypeParameters = []) => ({
  kind: "constructor",
  path,
  genericTypeParameters,
});

test("renders alpha.7 parameter types, labels, and optional markers", () => {
  assert.equal(
    signatureText(parameterParts({ optional: false, type: constructor("unit") })),
    "unit",
  );
  assert.equal(
    signatureText(parameterParts({ label: "reason", optional: true, type: constructor("JSON.t") })),
    "~reason: JSON.t=?",
  );
});

test("preserves link paths and separators in nested generic type signatures", () => {
  const parts = signatureParts(
    constructor("result", [
      constructor("WebAPI.Response.t"),
      constructor("option", [{ kind: "variable", name: "error", weak: false }]),
    ]),
  );
  assert.equal(signatureText(parts), "result<WebAPI.Response.t, option<'error>>");
  assert.deepEqual(
    parts.filter((part) => part.path).map((part) => part.path),
    ["result", "WebAPI.Response.t", "option"],
  );
});

test("renders callbacks, tuple returns, and compiler-rendered type expressions", () => {
  const callback = {
    kind: "function",
    parameters: [
      {
        label: "blob",
        optional: true,
        type: constructor("Null.t", [constructor("WebAPI.Blob.t")]),
      },
    ],
    returnType: {
      kind: "tuple",
      elements: [
        constructor("string"),
        { kind: "rendered", signature: "[> #ResponseNotOk(httpError)]" },
      ],
    },
  };
  assert.equal(
    signatureText(signatureParts(callback)),
    "(~blob: Null.t<WebAPI.Blob.t>=?) => (string, [> #ResponseNotOk(httpError)])",
  );
});

test("retains support for parsed record field signatures", () => {
  assert.equal(
    signatureText(signatureParts({ path: "array", genericTypeParameters: [{ path: "string" }] })),
    "array<string>",
  );
});

test("preserves callback field syntax without linking the arrow as part of a type", () => {
  const signature = "(WebAPI.DOMTree.node, ~value: option<'t>) => array<WebAPI.Element.t>";
  const parts = signatureParts({ kind: "rendered", signature });
  assert.equal(signatureText(parts), signature);
  assert.deepEqual(
    parts.filter((part) => part.path?.startsWith("WebAPI.")).map((part) => part.path),
    ["WebAPI.DOMTree.node", "WebAPI.Element.t"],
  );
  assert.ok(!parts.some((part) => part.path === "t"));
});

test("fails visibly on an unsupported compiler signature kind", () => {
  assert.throws(
    () => signatureParts({ kind: "unexpected" }),
    /Unsupported documentation signature kind: unexpected/,
  );
});

test("parses public aliases to backing module types, including generic aliases", () => {
  assert.deepEqual(
    parsePublicTypeAliases(
      "ReadableStream",
      "type t<'r> = FileTypes.readableStream<'r>\ntype options = StreamTypes.options",
    ),
    [
      {
        moduleName: "ReadableStream",
        typeName: "t",
        backingModule: "FileTypes",
        backingType: "readableStream",
      },
      {
        moduleName: "ReadableStream",
        typeName: "options",
        backingModule: "StreamTypes",
        backingType: "options",
      },
    ],
  );
});

test("ignores comment examples and nested-module aliases when finding public targets", () => {
  assert.deepEqual(
    parsePublicTypeAliases(
      "PublicOwner",
      `/**
type example = Internal.real
*/
type t = Internal.real
module Impl = {
type hidden = Internal.secret
}`,
    ),
    [
      {
        moduleName: "PublicOwner",
        typeName: "t",
        backingModule: "Internal",
        backingType: "real",
      },
    ],
  );
});

test("ignores aliases inside nested comments and multiline template strings", () => {
  assert.deepEqual(
    parsePublicTypeAliases(
      "PublicOwner",
      `/* outer
/* nested
type fakeComment = Internal.fakeComment
*/
*/
let example = \`a multiline string
type fakeString = Internal.fakeString
\`
type t = Internal.real`,
    ),
    [
      {
        moduleName: "PublicOwner",
        typeName: "t",
        backingModule: "Internal",
        backingType: "real",
      },
    ],
  );
});

test("continues masking nested declarations after a closed string", () => {
  assert.deepEqual(
    parsePublicTypeAliases(
      "PublicOwner",
      `let text = "closed string"
module Impl = {
type hidden = Internal.secret
}
type t = Internal.real`,
    ),
    [
      {
        moduleName: "PublicOwner",
        typeName: "t",
        backingModule: "Internal",
        backingType: "real",
      },
    ],
  );
});

test("only links backing types with one public owner", () => {
  const targets = createPublicTypeTargets([
    {
      moduleName: "Request",
      typeName: "t",
      backingModule: "FetchTypes",
      backingType: "request",
    },
    {
      moduleName: "Request",
      typeName: "requestInit",
      backingModule: "FetchTypes",
      backingType: "requestInit",
    },
    {
      moduleName: "Response",
      typeName: "t",
      backingModule: "FetchTypes",
      backingType: "response",
    },
    {
      moduleName: "Request",
      typeName: "bodyInit",
      backingModule: "FetchTypes",
      backingType: "bodyInit",
    },
    {
      moduleName: "Response",
      typeName: "bodyInit",
      backingModule: "FetchTypes",
      backingType: "bodyInit",
    },
  ]);

  assert.deepEqual(targets.get("FetchTypes.request"), { moduleName: "Request", typeName: "t" });
  assert.deepEqual(targets.get("FetchTypes.requestInit"), {
    moduleName: "Request",
    typeName: "requestInit",
  });
  assert.equal(targets.get("FetchTypes.bodyInit"), undefined);
});
