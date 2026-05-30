[![NPM Version](https://img.shields.io/npm/v/@rescript/webapi/experimental)](https://www.npmjs.com/package/@rescript/webapi)

# ReScript WebAPI

Experimental successor to [rescript-webapi](https://github.com/TheSpyder/rescript-webapi)

This package requires ReScript 13 or newer.

## Getting started

Install the package using your favorite package manager:

```shell
npm i @rescript/webapi@experimental
```

and add `@rescript/webapi` to your `rescript.json`:

```json
{
  "dependencies": [
    "@rescript/webapi"
  ]
}
```

## Usage

The package exposes browser APIs under the `WebAPI` namespace. Use the module that owns the
browser interface, access record fields with `.`, and call global singleton methods directly.

```rescript
let location = WebAPI.Location.current
let href = location.href

WebAPI.Location.reload()
```

Object-owned APIs still use the value as the receiver:

```rescript
let document = WebAPI.Window.current->WebAPI.Window.document
let button = document->WebAPI.Document.createElement("button")

button->WebAPI.Element.setAttribute(~qualifiedName="type", ~value="button")
```

## Documentation

More information can be found on https://rescript-lang.github.io/experimental-rescript-webapi/
