[![NPM Version](https://img.shields.io/npm/v/@rescript/webapi/experimental)](https://www.npmjs.com/package/@rescript/webapi)

# ReScript WebAPI

Experimental successor to [rescript-webapi](https://github.com/TheSpyder/rescript-webapi)

This package requires ReScript 13, which is currently in alpha.

## Getting started

Install the package using your favorite package manager:

```shell
npm i @rescript/webapi@experimental
```

and add `@rescript/webapi` to your `rescript.json` with the features your app uses:

```json
{
  "dependencies": [
    {
      "name": "@rescript/webapi",
      "features": ["WebAPI.Crypto", "WebAPI.Location"]
    }
  ]
}
```

You can also open the namespace globally if you prefer global access to modules such as `Location` instead of using `WebAPI.Location`. Another option is to use `open WebAPI` when working with the `WebAPI` namespace.

```json
{
  "compiler-flags": ["-open WebAPI"]
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

With `"-open WebAPI"`, the same code can be written without the `WebAPI.` prefix:

```rescript
let location = Location.current
let href = location.href

Location.reload()
```

Object-owned APIs still use the value as the receiver. For example, if you also enable
`WebAPI.DOM`, you can work with document and element values like this:

```rescript
let document = WebAPI.Window.current->WebAPI.Window.document
let button = document->WebAPI.Document.createElement("button")

button->WebAPI.Element.setAttribute(~qualifiedName="type", ~value="button")
```

## Documentation

More information can be found on https://rescript-lang.github.io/experimental-rescript-webapi/
