type t = DOMTree.htmlFormElement

include HTMLElement.Impl({type t = DOMTree.htmlFormElement})

/**
Fires when a FORM is about to be submitted.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/submit)
*/
@send
external submit: DOMTree.htmlFormElement => unit = "submit"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/requestSubmit)
*/
@send
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
