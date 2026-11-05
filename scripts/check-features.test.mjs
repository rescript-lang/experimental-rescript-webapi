import assert from "node:assert/strict";
import test from "node:test";

import { isMissingSafeFetchDiagnostic, parsePublicTypeAlias } from "./check-features.mjs";

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

test("recognizes the unavailable SafeFetch module diagnostic across line breaks", () => {
  assert.equal(
    isMissingSafeFetchDiagnostic("The module or file WebAPI.SafeFetch\ncan't be found."),
    true,
  );
});

test("does not accept an unrelated compiler failure mentioning SafeFetch", () => {
  assert.equal(
    isMissingSafeFetchDiagnostic(
      "let fetch = WebAPI.SafeFetch.fetch\nThe module or file WebAPI.Request can't be found.",
    ),
    false,
  );
  assert.equal(isMissingSafeFetchDiagnostic("SafeFetch consumer has a type error."), false);
});
