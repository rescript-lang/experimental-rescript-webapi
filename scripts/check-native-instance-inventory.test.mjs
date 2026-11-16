import assert from "node:assert/strict";
import { spawnSync } from "node:child_process";
import { cpSync, mkdtempSync, mkdirSync, readFileSync, rmSync, writeFileSync } from "node:fs";
import os from "node:os";
import path from "node:path";
import { fileURLToPath } from "node:url";
import test from "node:test";

const root = path.resolve(path.dirname(fileURLToPath(import.meta.url)), "..");

const checkMutatedInventory = (t, file, mutate) => {
  const directory = mkdtempSync(path.join(os.tmpdir(), "webapi-native-inventory-"));
  t.after(() => rmSync(directory, { recursive: true, force: true }));
  cpSync(path.join(root, "src"), path.join(directory, "src"), {
    recursive: true,
    filter: (source) => !/\.(?:js|map)$/.test(source),
  });
  mkdirSync(path.join(directory, "scripts"));
  for (const name of [
    "rescript.json",
    "scripts/native-instance-inventory.json",
    "scripts/check-native-instance-inventory.mjs",
  ]) {
    cpSync(path.join(root, name), path.join(directory, name));
  }
  const target = path.join(directory, file);
  writeFileSync(target, mutate(readFileSync(target, "utf8")));
  const result = spawnSync(process.execPath, ["scripts/check-native-instance-inventory.mjs"], {
    cwd: directory,
    encoding: "utf8",
  });
  return { status: result.status, output: `${result.stdout}\n${result.stderr}` };
};

test("accepts the current classified inventory", (t) => {
  const result = checkMutatedInventory(t, "src/file/FileTypes.res", (source) => source);
  assert.equal(result.status, 0, result.output);
});

test("rejects erosion of an abstract native handle", (t) => {
  const result = checkMutatedInventory(t, "src/file/FileTypes.res", (source) =>
    source.replace("type readableStreamReader<'t>", "type readableStreamReader<'t> = unknown"),
  );
  assert.equal(result.status, 1);
  assert.match(result.output, /Native type FileTypes.readableStreamReader must remain abstract/);
});

test("rejects an alias that loses native identity", (t) => {
  const result = checkMutatedInventory(t, "src/canvas/CanvasTypes.res", (source) =>
    source.replace(
      "type offscreenRenderingContext = DOM.offscreenRenderingContext",
      "type offscreenRenderingContext = unknown",
    ),
  );
  assert.equal(result.status, 1);
  assert.match(result.output, /Native alias CanvasTypes.offscreenRenderingContext must preserve/);
});

test("rejects removal of a public setter even if a hidden setter remains", (t) => {
  const result = checkMutatedInventory(t, "src/media/MediaStreamTrack.res", (source) =>
    source.replace("external setEnabled:", "external hiddenSetEnabled:"),
  );
  assert.equal(result.status, 1);
  assert.match(
    result.output,
    /Public setter src\/media\/MediaStreamTrack.res:setEnabled is missing/,
  );
});

test("rejects restoration of an unconstrained Impl conversion", (t) => {
  const result = checkMutatedInventory(
    t,
    "src/dom-nodes/Node.res",
    (source) => `${source}\nexternal asForgedNode: T.t => DOMTree.node = "%identity"\n`,
  );
  assert.equal(result.status, 1);
  assert.match(result.output, /exposes an unconstrained native Impl upcast/);
});

test("rejects making a caller-owned callback dictionary private", (t) => {
  const result = checkMutatedInventory(t, "src/dom-nodes/NodeFilter.res", (source) =>
    source.replace("type t = {", "type t = private {"),
  );
  assert.equal(result.status, 1);
  assert.match(
    result.output,
    /Constructible exception src\/dom-nodes\/NodeFilter.res:t must remain public/,
  );
});
