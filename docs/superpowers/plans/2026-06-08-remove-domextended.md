# Remove DOMExtended Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Remove the residual `DOMExtended` source bucket by moving its modules into explicit leaf source directories.

**Architecture:** Keep public ReScript module names unchanged while changing physical source ownership. `rescript.json` lists explicit internal features for moved DOM leaves, and feature dependencies use those internal features instead of `DOMExtended`.

**Tech Stack:** ReScript, Node test runner, package `rescript.json` feature sources.

---

### Task 1: Add Layout Regression Tests

**Files:**
- Modify: `tests/unmonorepo/feature-spec.test.mjs`

- [ ] Add assertions that `src/DOMExtended` does not exist, representative moved leaf modules exist, no `rescript.json` source entry has feature `DOMExtended`, and no public feature dependency includes `DOMExtended`.
- [ ] Run `npm test -- --test-name-pattern DOMExtended` and confirm it fails before moving files.

### Task 2: Move DOMExtended Modules

**Files:**
- Move all `src/DOMExtended/*.res` files to same-name leaf directories.
- Delete obsolete empty `src/DOMExtended/DOM.res`.

- [ ] Create one `src/<Module>/<Module>.res` path for each former DOMExtended module except `DOM.res`.
- [ ] Do not create `src/DOM/DOM.res`; the empty wrapper remains removed.
- [ ] Remove the empty `src/DOMExtended` directory.

### Task 3: Update Root ReScript Config

**Files:**
- Modify: `rescript.json`

- [ ] Replace `DOMExtended` dependencies with explicit moved DOM leaf features.
- [ ] Replace the `src/DOMExtended` source entry with leaf source entries.
- [ ] Keep `DOMTypes` and `DomGlobal` internal by using empty `public` arrays.

### Task 4: Verify

**Files:**
- All moved source files and tests.

- [ ] Run focused tests for the DOMExtended layout assertions.
- [ ] Run full `npm test`.
