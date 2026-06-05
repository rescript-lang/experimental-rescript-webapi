import { existsSync, readdirSync, readFileSync } from "node:fs";
import { join, relative } from "node:path";

const repoRoot = new URL("..", import.meta.url).pathname;
const srcRoot = join(repoRoot, "src");

function walk(dir, files = []) {
  for (const entry of readdirSync(dir, { withFileTypes: true })) {
    const path = join(dir, entry.name);
    if (entry.isDirectory()) {
      walk(path, files);
    } else if (entry.isFile() && path.endsWith(".res")) {
      files.push(path);
    }
  }
  return files;
}

function countMatches(source, regex) {
  return source.match(regex)?.length ?? 0;
}

function receiverBuckets(source) {
  const buckets = new Set();
  const sendExternalRegex = /@send\s+(?:\n\s*)?external\s+\w+:\s*([\s\S]*?)=>/g;
  for (const match of source.matchAll(sendExternalRegex)) {
    const signaturePrefix = match[1].replace(/\s+/g, " ");
    const receiver = signaturePrefix.split(",")[0];

    if (/\bt\b/.test(receiver)) {
      buckets.add("local-t");
    }
    if (/\bT\.t\b/.test(receiver)) {
      buckets.add("impl-param");
    }
    if (/\bDomTypes\.[A-Za-z0-9_]+/.test(receiver)) {
      buckets.add("dom-types");
    }
    if (/\b[A-Za-z0-9]+Types\.[A-Za-z0-9_]+/.test(receiver)) {
      buckets.add("feature-types");
    }
    if (/\bBase__[A-Za-z0-9_]+\.t\b/.test(receiver)) {
      buckets.add("base-internal");
    }
  }
  return [...buckets].sort();
}

export function auditMethodStyle() {
  if (!existsSync(srcRoot)) {
    throw new Error(`Missing source root: ${srcRoot}`);
  }

  const files = walk(srcRoot);
  const entries = files.map((file) => {
    const source = readFileSync(file, "utf8");
    const relPath = relative(repoRoot, file);
    const sendCount = countMatches(source, /@send/g);
    const hasLocalT = /^type t\b/m.test(source);
    const hasImpl = /^module Impl = \(/m.test(source);
    const includesImpl = /^include Impl/m.test(source);
    const recordTypeCount = countMatches(
      source,
      /^type(?: rec)? [A-Za-z0-9_]+(?:<[^=\n]+>)? = (?:private )?\{/gm,
    );
    const functionFieldCount = countMatches(
      source,
      /^\s*(?:mutable )?[A-Za-z_][A-Za-z0-9_]*\??:\s*.*=>/gm,
    );

    return {
      path: relPath,
      sendCount,
      hasLocalT,
      hasImpl,
      includesImpl,
      receiverBuckets: receiverBuckets(source),
      recordTypeCount,
      functionFieldCount,
    };
  });

  return {
    files: entries,
    summary: {
      resFiles: entries.length,
      sendOccurrences: entries.reduce((sum, entry) => sum + entry.sendCount, 0),
      sendFiles: entries.filter((entry) => entry.sendCount > 0).length,
      implFiles: entries.filter((entry) => entry.hasImpl).length,
      includeImplFiles: entries.filter((entry) => entry.includesImpl).length,
      recordTypeFiles: entries.filter((entry) => entry.recordTypeCount > 0).length,
      recordTypes: entries.reduce((sum, entry) => sum + entry.recordTypeCount, 0),
      functionFieldOccurrences: entries.reduce(
        (sum, entry) => sum + entry.functionFieldCount,
        0,
      ),
    },
  };
}

if (process.argv[1] === new URL(import.meta.url).pathname) {
  console.log(JSON.stringify(auditMethodStyle(), null, 2));
}
