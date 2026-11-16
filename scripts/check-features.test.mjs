import assert from "node:assert/strict";
import { readFileSync } from "node:fs";
import test from "node:test";

import {
  isMissingSafeFetchDiagnostic,
  parsePublicTypeAlias,
  validateConfig,
} from "./check-features.mjs";

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

const config = JSON.parse(readFileSync(new URL("../rescript.json", import.meta.url), "utf8"));

test("validates independent History and Location feature ownership", () => {
  assert.deepEqual(validateConfig(config), []);
  assert.deepEqual(config.features["WebAPI.History"], ["History"]);
  assert.deepEqual(config.features["WebAPI.Location"], ["WebAPI.DOM", "Location"]);
  assert.ok(config.features["WebAPI.Window"].includes("WebAPI.History"));
  assert.ok(config.features["WebAPI.Window"].includes("WebAPI.Location"));
});

test("rejects a missing History feature", () => {
  const features = Object.fromEntries(
    Object.entries(config.features).filter(([name]) => name !== "WebAPI.History"),
  );
  assert.ok(
    validateConfig({ ...config, features }).some((error) => error.includes("Expected exactly")),
  );
});

test("rejects duplicate Location public ownership", () => {
  const sources = config.sources.map((source) =>
    source.feature === "Window" ? { ...source, public: [...source.public, "Location"] } : source,
  );
  assert.ok(validateConfig({ ...config, sources }).includes("Duplicate public modules: Location"));
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
