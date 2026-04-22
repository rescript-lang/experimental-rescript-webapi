include HTMLElement.Impl({type t = Types.htmlButtonElement})

/**
Returns whether a form will validate when it is submitted, without having to submit it.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLButtonElement/checkValidity)
*/
@send
external checkValidity: Types.htmlButtonElement => bool = "checkValidity"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLButtonElement/reportValidity)
*/
@send
external reportValidity: Types.htmlButtonElement => bool = "reportValidity"

/**
Sets a custom error message that is displayed when a form is submitted.
@param error Sets a custom error message that is displayed when a form is submitted.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLButtonElement/setCustomValidity)
*/
@send
external setCustomValidity: (Types.htmlButtonElement, string) => unit = "setCustomValidity"
