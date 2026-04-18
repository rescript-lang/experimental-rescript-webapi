include HTMLElement.Impl({type t = Types.htmlFormElement})

/**
Fires when a FORM is about to be submitted.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/submit)
*/
@send
external submit: Types.htmlFormElement => unit = "submit"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/requestSubmit)
*/
@send
external requestSubmit: (Types.htmlFormElement, ~submitter: Types.htmlElement=?) => unit = "requestSubmit"

/**
Fires when the user resets a form.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/reset)
*/
@send
external reset: Types.htmlFormElement => unit = "reset"

/**
Returns whether a form will validate when it is submitted, without having to submit it.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/checkValidity)
*/
@send
external checkValidity: Types.htmlFormElement => bool = "checkValidity"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/reportValidity)
*/
@send
external reportValidity: Types.htmlFormElement => bool = "reportValidity"
