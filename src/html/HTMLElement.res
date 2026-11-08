/**
Represents the observable states of `HTMLElement.hidden`.

- `Visible` means the element is not hidden.
- `Hidden` means the element is hidden.
- `HiddenUntilFound` means the element can be revealed by find-in-page or fragment navigation.

[Read more in the HTML Standard](https://html.spec.whatwg.org/multipage/interaction.html#dom-hidden)
*/
type hiddenState =
  | @as(false) Visible
  | @as(true) Hidden
  | @as("until-found") HiddenUntilFound

type t = DOMTree.htmlElement = private {
  ...DOMTree.htmlElement,
}

module Impl = (
  T: {
    type t
  },
) => {
  include Element.Impl({type t = T.t})

  external asHTMLElement: T.t => DOMTree.htmlElement = "%identity"

  /**
Returns the element's current hidden state.

```rescript
let description = switch element->HTMLElement.hidden {
| HTMLElement.Visible => "visible"
| HTMLElement.Hidden => "hidden"
| HTMLElement.HiddenUntilFound => "hidden until found"
}
```

This getter never returns `null`.

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/hidden)
*/
  @get
  external hidden: T.t => hiddenState = "hidden"

  @set
  external setTitle: (T.t, string) => unit = "title"
  @set
  external setLang: (T.t, string) => unit = "lang"
  @set
  external setTranslate: (T.t, bool) => unit = "translate"
  @set
  external setDir: (T.t, string) => unit = "dir"
  @set
  external setInert: (T.t, bool) => unit = "inert"
  @set
  external setAccessKey: (T.t, string) => unit = "accessKey"
  @set
  external setDraggable: (T.t, bool) => unit = "draggable"
  @set
  external setSpellcheck: (T.t, bool) => unit = "spellcheck"
  @set
  external setAutocapitalize: (T.t, string) => unit = "autocapitalize"
  @set
  external setInnerText: (T.t, string) => unit = "innerText"
  @set
  external setOuterText: (T.t, string) => unit = "outerText"
  @set
  external setPopover: (T.t, Null.t<string>) => unit = "popover"
  @set
  external setContentEditable: (T.t, string) => unit = "contentEditable"
  @set
  external setEnterKeyHint: (T.t, string) => unit = "enterKeyHint"
  @set
  external setInputMode: (T.t, string) => unit = "inputMode"
  @set
  external setNonce: (T.t, string) => unit = "nonce"
  @set
  external setAutofocus: (T.t, bool) => unit = "autofocus"
  @set
  external setTabIndex: (T.t, int) => unit = "tabIndex"
  @set
  external setClassName: (T.t, string) => unit = "className"

  /**
Sets the element's semantic hidden state.

```rescript
element->HTMLElement.setHidden(HTMLElement.Hidden)
element->HTMLElement.setHidden(HTMLElement.HiddenUntilFound)
element->HTMLElement.setHidden(HTMLElement.Visible)
```

The browser also accepts values such as numbers, arbitrary strings, `null`, and
`undefined`, but coerces each of them to one of these three states. This binding
intentionally accepts only `hiddenState` so callers express the resulting state
rather than relying on coercion.

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/hidden)
*/
  @set
  external setHidden: (T.t, hiddenState) => unit = "hidden"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/attachInternals)
*/
  @throws(JsExn) @send
  external attachInternals: T.t => DOMTree.elementInternals = "attachInternals"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/blur)
*/
  @send
  external blur: T.t => unit = "blur"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/click)
*/
  @send
  external click: T.t => unit = "click"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/focus)
*/
  @send
  external focus: (T.t, ~options: DOM.focusOptions=?) => unit = "focus"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/hidePopover)
*/
  @throws(JsExn) @send
  external hidePopover: T.t => unit = "hidePopover"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/showPopover)
*/
  @throws(JsExn) @send
  external showPopover: T.t => unit = "showPopover"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/togglePopover)
*/
  @throws(JsExn) @send
  external togglePopover: (T.t, ~force: bool=?) => bool = "togglePopover"
}

include Impl({type t = t})

/**
`isInstanceOf(value)`

Returns whether `value` is an `HTMLElement` created in the current JavaScript realm.

This is a runtime check. It returns `false` when `globalThis.HTMLElement` is unavailable, such as in
some server or worker environments.
*/
let isInstanceOf = (_: 'value): bool =>
  %raw(`typeof globalThis.HTMLElement === "function" && param instanceof globalThis.HTMLElement`)

/**
`classify(value)`

Safely narrows a value from a broad DOM or library type to `HTMLElement.t`.

Use this when an event target or element-returning API does not distinguish HTML elements from SVG
or other element kinds. Returns `Some(element)` for an `HTMLElement` in the current realm, and
`None` when the value is not an HTML element or when the `HTMLElement` constructor is unavailable.

```res
switch value->HTMLElement.classify {
| Some(element) => element->HTMLElement.focus
| None => ()
}
```
*/
let classify = (value: 'value): option<t> =>
  if value->isInstanceOf {
    Some(Obj.magic(value))
  } else {
    None
  }
