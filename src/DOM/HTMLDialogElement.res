include HTMLElement.Impl({type t = Types.htmlDialogElement})

/**
Displays the dialog element.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLDialogElement/show)
*/
@send
external show: Types.htmlDialogElement => unit = "show"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLDialogElement/showModal)
*/
@send
external showModal: Types.htmlDialogElement => unit = "showModal"

/**
Closes the dialog element.

The argument, if provided, provides a return value.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLDialogElement/close)
*/
@send
external close: (Types.htmlDialogElement, ~returnValue: string=?) => unit = "close"
