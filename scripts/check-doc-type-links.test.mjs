import assert from "node:assert/strict";
import test from "node:test";

import { createPublicTypeTargets, parsePublicTypeAliases } from "../docs/typeLinks.js";
import { getLinkedSignature } from "../docs/signatureTypes.js";

test("unwraps compiler parameter metadata before linking signature types", () => {
  const controller = {
    kind: "constructor",
    path: "WebAPI.DOM.abortController",
    genericTypeParameters: [],
  };
  const json = { kind: "constructor", path: "JSON.t", genericTypeParameters: [] };
  const unit = { kind: "constructor", path: "unit", genericTypeParameters: [] };
  assert.deepEqual(
    getLinkedSignature({
      kind: "signature",
      details: {
        parameters: [
          { optional: false, type: controller },
          { label: "reason", optional: true, type: json },
        ],
        returnType: unit,
      },
    }),
    { parameters: [controller, json], returnType: unit },
  );
});

test("keeps recursively linkable generic return types", () => {
  const type = { kind: "constructor", path: "WebAPI.Element.t", genericTypeParameters: [] };
  const result = { kind: "constructor", path: "option", genericTypeParameters: [type] };
  assert.deepEqual(
    getLinkedSignature({
      kind: "signature",
      details: { parameters: [{ type }], returnType: result },
    }),
    { parameters: [type], returnType: result },
  );
});

test("falls back to the full signature for unsupported or absent type detail", () => {
  const unit = { path: "unit", genericTypeParameters: [] };
  for (const type of [
    { kind: "function" },
    { path: "array", genericTypeParameters: [{ kind: "variable" }] },
  ]) {
    assert.equal(
      getLinkedSignature({
        kind: "signature",
        details: { parameters: [{ type }], returnType: unit },
      }),
      null,
    );
    assert.equal(
      getLinkedSignature({
        kind: "signature",
        details: { parameters: [{ type: unit }], returnType: type },
      }),
      null,
    );
  }
  assert.equal(getLinkedSignature(undefined), null);
  assert.equal(
    getLinkedSignature({ kind: "signature", details: { parameters: [], returnType: unit } }),
    null,
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
