# Remove DOMExtended Design

## Goal

Remove the residual `DOMExtended` source bucket. Each DOM interface that was parked there becomes its own leaf source directory, such as `src/Text/Text.res`.

## Design

`src/DOMExtended` must not exist after the migration. Public interface modules move to same-name leaf directories and keep their public module names. Shared support modules also move out of `DOMExtended`; `DOMTypes.res` becomes `src/DOMTypes/DOMTypes.res`, and `DomGlobal.res` becomes `src/DomGlobal/DomGlobal.res`. The empty `DOM.res` wrapper is removed as obsolete.

`rescript.json` replaces the single `DOMExtended` internal source entry with explicit source entries for the moved leaves. Public feature dependency lists that currently include `DOMExtended` must list the specific internal features they need instead.

## Tests

The unmonorepo feature-spec tests assert that `src/DOMExtended` is gone, that representative moved leaves exist at their leaf paths, and that no source entry or public feature dependency references `DOMExtended`.
