import test from "node:test";
import assert from "node:assert/strict";
import { renderEntryModule } from "../../scripts/unmonorepo/generate-entry-modules.mjs";

test("renders a feature entry module with public aliases", () => {
  const output = renderEntryModule({
    publicModule: "DOM",
    internalPrefix: "Dom",
    moduleLeaves: ["Document", "DomGlobal", "DomTypes"],
  });

  assert.equal(
    output.trim(),
    ["module Document = Document", "module Global = DomGlobal", "module Types = DomTypes"].join("\n"),
  );
});

test("rebuilds entry modules from aliases instead of preserving stale same-name leaf contents", () => {
  const output = renderEntryModule({
    publicModule: "WebMIDI",
    internalPrefix: "WebMidi",
    existingSource: "type t = stale",
    moduleLeaves: ["WebMidiTypes", "WebMidiWebMIDI"],
  });

  assert.equal(
    output.trim(),
    ["module Types = WebMidiTypes", "module WebMIDI = WebMidiWebMIDI"].join("\n"),
  );
});
