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

/**
Represents every value accepted by the native `HTMLElement.hidden` setter.

Prefer `setHidden` for normal use. Use this type with `setHiddenRaw` only when Web IDL coercion behavior is required.
*/
@unboxed
type hiddenInput =
  | Boolean(bool)
  | Number(float)
  | String(string)
  | @as(null) Null
  | @as(undefined) Undefined

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

  /**
Sets the element's semantic hidden state.

```rescript
element->HTMLElement.setHidden(HTMLElement.Hidden)
element->HTMLElement.setHidden(HTMLElement.HiddenUntilFound)
element->HTMLElement.setHidden(HTMLElement.Visible)
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/hidden)
*/
  @set
  external setHidden: (T.t, hiddenState) => unit = "hidden"

  /**
Sets the native property using its complete Web IDL input contract.

```rescript
// `null` and `undefined` remove the hidden attribute.
element->HTMLElement.setHiddenRaw(HTMLElement.Null)
element->HTMLElement.setHiddenRaw(HTMLElement.Undefined)

// Arbitrary native setter inputs remain available.
element->HTMLElement.setHiddenRaw(HTMLElement.Number(0.))
element->HTMLElement.setHiddenRaw(HTMLElement.String("until-found"))
```

Prefer `setHidden` unless the browser's coercion behavior is specifically required.

[Read more in the HTML Standard](https://html.spec.whatwg.org/multipage/interaction.html#dom-hidden)
*/
  @set
  external setHiddenRaw: (T.t, hiddenInput) => unit = "hidden"

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
