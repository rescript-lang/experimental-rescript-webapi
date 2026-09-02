import assert from "node:assert/strict";
import test from "node:test";

import { parsePublicTypeAlias } from "./check-features.mjs";

test("parses a public type alias without type parameters", () => {
  assert.deepEqual(parsePublicTypeAlias("type t = DOMTree.element"), {
    backingModule: "DOMTree",
    backingType: "element",
  });
});

test("parses a public type alias with type parameters", () => {
  assert.deepEqual(parsePublicTypeAlias("type t<'r> = FileTypes.readableStream<'r>"), {
    backingModule: "FileTypes",
    backingType: "readableStream",
  });
});
