include HTMLElement.Impl({type t = Types.htmlOutputElement})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOutputElement/checkValidity)
*/
@send
external checkValidity: Types.htmlOutputElement => bool = "checkValidity"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOutputElement/reportValidity)
*/
@send
external reportValidity: Types.htmlOutputElement => bool = "reportValidity"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOutputElement/setCustomValidity)
*/
@send
external setCustomValidity: (Types.htmlOutputElement, string) => unit = "setCustomValidity"
