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

test("preserves existing entry module contents and appends aliases", () => {
  const output = renderEntryModule({
    publicModule: "WebMIDI",
    internalPrefix: "WebMidi",
    existingSource: "type t = WebMidiTypes.midiAccess",
    moduleLeaves: ["WebMidiTypes"],
  });

  assert.equal(
    output.trim(),
    ["type t = WebMidiTypes.midiAccess", "", "module Types = WebMidiTypes"].join("\n"),
  );
});
