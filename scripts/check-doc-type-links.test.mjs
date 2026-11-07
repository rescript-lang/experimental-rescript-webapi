import assert from "node:assert/strict";
import test from "node:test";

import { createPublicTypeTargets, parsePublicTypeAliases } from "../docs/typeLinks.js";

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
