type t = DomTypes.htmlDialogElement = private {...DomTypes.htmlDialogElement}

include HTMLElement.Impl({type t = t})

/**
Displays the dialog element.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLDialogElement/show)
*/
@send
external show: t => unit = "show"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLDialogElement/showModal)
*/
@send
external showModal: t => unit = "showModal"

/**
Closes the dialog element.

The argument, if provided, provides a return value.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLDialogElement/close)
*/
@send
external close: (t, ~returnValue: string=?) => unit = "close"
