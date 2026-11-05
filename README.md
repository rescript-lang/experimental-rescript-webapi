[![NPM Version](https://img.shields.io/npm/v/@rescript/webapi/alpha)](https://www.npmjs.com/package/@rescript/webapi)

# experimental-rescript-webapi

Experimental successor to [rescript-webapi](https://github.com/TheSpyder/rescript-webapi)

## Getting started

ReScript `13.0.0-alpha.5` is the tested compiler baseline. Library alpha releases may contain
breaking changes. See the [project status](https://rescript-lang.github.io/experimental-rescript-webapi/project-status/)
for the accepted peer range and its testing limits.

Install the library and compiler in your application:

```shell
npm install @rescript/webapi@alpha
npm install --save-dev rescript@13.0.0-alpha.5
```

Add a source directory and the package dependency to `rescript.json`:

```json
{
  "name": "webapi-consumer",
  "sources": [{ "dir": "src" }],
  "dependencies": ["@rescript/webapi"]
}
```

In `src/Main.res`:

```rescript
let location = WebAPI.DOM.window->WebAPI.Window.location
let href = location.href
location->WebAPI.Location.reload
```

Compile the consumer with:

```shell
npx rescript build
```

The namespace is flat under `WebAPI`; internal implementation modules are not public API.

## Documentation

More information can be found on https://rescript-lang.github.io/experimental-rescript-webapi/.
See the [alpha release checklist](https://github.com/rescript-lang/experimental-rescript-webapi/issues/382)
and [migration notes](CHANGELOG.md) for known limitations and breaking changes.
