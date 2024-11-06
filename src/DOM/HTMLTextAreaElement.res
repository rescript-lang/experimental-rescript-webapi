@@warning("-44")
@@warning("-33")
open DOM

module HTMLTextAreaElement = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement)
    */
  @new
  external make: unit => htmlTextAreaElement = "HTMLTextAreaElement"
  /**
    Returns whether a form will validate when it is submitted, without having to submit it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/checkValidity)
    */
  @send
  external checkValidity: htmlTextAreaElement => bool = "checkValidity"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/reportValidity)
    */
  @send
  external reportValidity: htmlTextAreaElement => bool = "reportValidity"

  /**
    Sets a custom error message that is displayed when a form is submitted.
@param error Sets a custom error message that is displayed when a form is submitted.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/setCustomValidity)
    */
  @send
  external setCustomValidity: (htmlTextAreaElement, string) => unit = "setCustomValidity"

  /**
    Highlights the input area of a form element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/select)
    */
  @send
  external select: htmlTextAreaElement => unit = "select"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/setRangeText)
    */
  @send
  external setRangeText: (htmlTextAreaElement, string) => unit = "setRangeText"

  /**
    Sets the start and end positions of a selection in a text field.
@param start The offset into the text field for the start of the selection.
@param end The offset into the text field for the end of the selection.
@param direction The direction in which the selection is performed.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/setSelectionRange)
    */
  @send
  external setSelectionRange: (htmlTextAreaElement, int, int, string) => unit = "setSelectionRange"
}
