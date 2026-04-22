include HTMLElement.Impl({type t = Types.htmlFieldSetElement})

/**
Returns whether a form will validate when it is submitted, without having to submit it.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFieldSetElement/checkValidity)
*/
@send
external checkValidity: Types.htmlFieldSetElement => bool = "checkValidity"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFieldSetElement/reportValidity)
*/
@send
external reportValidity: Types.htmlFieldSetElement => bool = "reportValidity"

/**
Sets a custom error message that is displayed when a form is submitted.
@param error Sets a custom error message that is displayed when a form is submitted.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFieldSetElement/setCustomValidity)
*/
@send
external setCustomValidity: (Types.htmlFieldSetElement, string) => unit = "setCustomValidity"
