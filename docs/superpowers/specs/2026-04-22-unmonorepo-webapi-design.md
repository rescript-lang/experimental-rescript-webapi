# Unmonorepo WebApi Design

**Date:** 2026-04-22
**Status:** Approved in conversation, written for review before implementation

## Context

The repository was split into npm workspaces so each Web API area could build and publish independently from `packages/*`. The ReScript compiler now supports feature-gated source directories and feature-gated dependencies, so the package split is no longer required to support partial builds.

The new target is a single published npm package, `@rescript/webapi`, with a unified internal build and an external API that still preserves feature-level boundaries such as `WebApi.DOM`, `WebApi.Fetch`, and `WebApi.Base`.

## Goals

- Remove the monorepo/workspace package split.
- Move all feature sources from `packages/<Pkg>/src` to `src/<Pkg>`.
- Delete every subpackage `package.json` and `rescript.json`.
- Make the root `rescript.json` the single source of truth for sources, features, and ReScript dependencies.
- Preserve the logical public API boundaries as `WebApi.<Feature>`.
- Keep internal helper modules private through the new `public` source setting.
- Publish one npm package: `@rescript/webapi`.
- Let internal builds and downstream consumers compile only the features they need.

## Non-Goals

- This change does not redesign the feature taxonomy.
- This change does not flatten the public API into one global namespace.
- This change does not preserve the old multi-package publish flow.

## Repository Structure

### Before

- `packages/Base/src`
- `packages/DOM/src`
- `packages/Fetch/src`
- One `package.json` and one `rescript.json` per package
- Root npm workspaces pointing at `packages/*`

### After

- `src/Base`
- `src/DOM`
- `src/Fetch`
- One root `package.json`
- One root `rescript.json`
- No npm workspaces

Each former package directory remains a logical feature boundary, but only as source layout and public API grouping, not as an npm workspace.

## Root `rescript.json`

The root `rescript.json` becomes the canonical build definition for the entire repo.

### Sources

Each former package source directory is listed as its own source entry. Example shape:

```json
{
  "name": "@rescript/webapi",
  "sources": [
    {
      "dir": "src/DOM",
      "subdirs": true,
      "feature": "WebApi.DOM",
      "public": ["DOM"]
    },
    {
      "dir": "src/Fetch",
      "subdirs": true,
      "feature": "WebApi.Fetch",
      "public": ["Fetch"]
    },
    {
      "dir": "tests",
      "subdirs": true,
      "type": "dev"
    }
  ]
}
```

Rules:

- Every former package gets one root source entry.
- The `feature` value matches the public module name, for example `"WebApi.DOM"` and `"WebApi.Fetch"`.
- The `public` list exposes only the feature entry module for that source directory.
- Helper modules such as `DomTypes` and `DomGlobal` stay internal because they are not listed in `public`.
- `tests` remains a dev-only source.

### Dependencies

The root `dependencies` section in `rescript.json` should only describe real package dependencies after the unmonorepo migration.

The current per-package `rescript.json` files mostly depend on other workspace packages from the same repository. Once everything lives inside one ReScript package, those internal relationships should become normal module references inside the unified package rather than package dependencies.

Feature-gated dependency objects are still available when the unified package needs to depend on an external ReScript package only for a subset of features, but that is not the primary migration mechanism for replacing the old workspace graph.

Example:

```json
{
  "dependencies": [
    "@plain/dep",
    { "name": "@other/heavy", "features": ["WebApi.WebCrypto"] }
  ]
}
```

Migration rule:

- Remove internal package-to-package dependencies that only existed because of the workspace split.
- Keep or add root `dependencies` entries only for actual external ReScript packages.
- Use feature-gated dependency objects only when an external dependency truly belongs to a subset of the unified API surface.

## Public API Shape

The public API remains feature-oriented:

- `WebApi.Base`
- `WebApi.DOM`
- `WebApi.Fetch`
- `WebApi.WebCrypto`
- and the rest of the former package surfaces

The unified build must not expose raw internal file modules as first-class public API. Consumers should interact with a curated surface through the feature entry modules only.

Each feature directory therefore needs one public entry module whose filename matches the feature name:

- `src/DOM/DOM.res`
- `src/Fetch/Fetch.res`
- `src/Base/Base.res`

Those entry modules are the only modules exported from their source directory through `public`.

## Internal Module Naming

The current workspace layout relied on per-package namespaces, which allowed repeated generic file names such as:

- `Types.res`
- `Global.res`
- `Event.res`
- `File.res`
- `HTMLMediaElement.res`

In a unified package these names would collide, so the migration must rename generic internal modules to feature-qualified names.

Examples:

- `src/DOM/Types.res` -> `src/DOM/DomTypes.res`
- `src/DOM/Global.res` -> `src/DOM/DomGlobal.res`
- `src/Fetch/Global.res` -> `src/Fetch/FetchGlobal.res`
- `src/Base/Event.res` -> `src/Base/BaseEvent.res`
- `src/File/Types.res` -> `src/File/FileTypes.res`

Naming rule:

- Prefix internal modules with the feature’s public module stem.
- Keep the public entry module itself unprefixed when it is the exported surface module, for example `DOM.res` and `Fetch.res`.

This keeps the public API stable while making the unified internal module graph collision-free.

## Publishing And Package Metadata

The root `package.json` becomes the only published npm package definition.

Required changes:

- Rename the package to `@rescript/webapi`.
- Remove the `workspaces` field.
- Remove workspace-oriented scripts such as `build:packages`.
- Replace multi-workspace publishing with a single-package publish flow from the repo root.
- Replace any placeholder-package tooling that exists only to reserve or publish subpackage names.

The published package contents should include the files needed for one ReScript package rather than many workspace packages.

## Tooling And CI Updates

Any tooling that assumes the workspace layout must be updated to the new unified structure.

Known affected areas:

- `scripts/create-npm-packages.js`
- `.github/workflows/ci.yml`
- `docs/llm.js`
- Documentation that references multiple packages or workspace publishing

Expected changes:

- CI should build and package only the root package.
- Publish jobs should run one `npm publish` from the root package, not loop over `packages/*`.
- Source discovery scripts should read from `src/*` instead of `packages/*/src`.
- Documentation should instruct consumers to install `@rescript/webapi`.

## Data Flow And Build Model

The build becomes unified at the repository level:

1. ReScript reads the root `rescript.json`.
2. Each feature source directory is included in the build graph.
3. Feature gating determines which source directories and gated dependencies participate in a given build.
4. Only the explicitly public feature entry modules are exposed to consumers.
5. Internal helper modules remain compile-time implementation details.

This provides one coherent package without losing the ability to compile narrower slices of the API surface.

## Migration Strategy

Implementation should proceed in this order:

1. Add the new root `src/<Feature>` layout.
2. Move source files out of `packages/*/src`.
3. Rename internal generic modules to feature-qualified names.
4. Update intra-feature and cross-feature references to the new module names.
5. Rewrite the root `rescript.json` sources and dependencies.
6. Remove subpackage `rescript.json` and `package.json` files.
7. Rewrite root npm metadata and publish scripts for a single package.
8. Update docs and CI for the new layout.

This order minimizes the time spent in a partially migrated state with broken module references.

## Testing And Verification

Implementation should verify:

- Full repo build succeeds from the root package.
- Tests still run successfully from the root package.
- Feature-gated builds can compile selected features without pulling the entire surface area.
- Internal helper modules are not exposed through source `public` settings.
- Packaging and publish dry-run operate on the single root package.

The most important regression risks are:

- Broken module references after internal renames
- Leaving stale internal package dependencies in root `rescript.json`
- Accidentally public helper modules
- CI or publish logic still assuming workspaces

## Open Decisions Already Resolved

- Use a single package instead of npm workspaces.
- Preserve feature boundaries in the external API.
- Use `WebApi.*` spelling, not `WebAPI.*`.
- Map feature names to public module names such as `"WebApi.DOM"`.
- Rename generic internal modules to feature-qualified names.
- Use source-level `public` settings so only the feature entry module is exposed.
