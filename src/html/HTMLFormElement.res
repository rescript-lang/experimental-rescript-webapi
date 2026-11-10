type t = DOMTree.htmlFormElement = private {
  ...DOMTree.htmlFormElement,
}

include HTMLElement.Impl({type t = t})

@set
external setAcceptCharset: (t, string) => unit = "acceptCharset"
@set
external setAction: (t, string) => unit = "action"
@set
external setAutocomplete: (t, DOM.autoFillBase) => unit = "autocomplete"
@set
external setEnctype: (t, string) => unit = "enctype"
@set
external setEncoding: (t, string) => unit = "encoding"
@set
external setMethod: (t, string) => unit = "method"
@set
external setName: (t, string) => unit = "name"
@set
external setTarget: (t, string) => unit = "target"

/**
Fires when a FORM is about to be submitted.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/submit)
*/
@throws(JsExn) @send
external submit: DOMTree.htmlFormElement => unit = "submit"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/requestSubmit)
*/
@throws(JsExn) @send
external requestSubmit: (DOMTree.htmlFormElement, ~submitter: DOMTree.htmlElement=?) => unit =
  "requestSubmit"

/**
Fires when the user resets a form.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/reset)
*/
@send
external reset: DOMTree.htmlFormElement => unit = "reset"

/**
Returns whether a form will validate when it is submitted, without having to submit it.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/checkValidity)
*/
@send
external checkValidity: DOMTree.htmlFormElement => bool = "checkValidity"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/reportValidity)
*/
@send
external reportValidity: DOMTree.htmlFormElement => bool = "reportValidity"
