/**
Provides special properties and methods for manipulating the layout and presentation of <textarea> elements.
[See HTMLTextAreaElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement)
TODO: mark as private once mutating fields of private records is allowed
*/
type t = {
  ...DOMTree.htmlElement,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/autocomplete)
    */
  mutable autocomplete: string,
  /**
    Sets or retrieves the width of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/cols)
    */
  mutable cols: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/disabled)
    */
  mutable disabled: bool,
  /**
    Retrieves a reference to the form that the object is embedded in.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/form)
    */
  form: Null.t<DOMTree.htmlFormElement>,
  /**
    Sets or retrieves the maximum number of characters that the user can enter in a text control.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/maxLength)
    */
  mutable maxLength: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/minLength)
    */
  mutable minLength: int,
  /**
    Sets or retrieves the name of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/name)
    */
  mutable name: string,
  /**
    Gets or sets a text string that is displayed in an input field as a hint or prompt to users as the format or type of information they need to enter.The text appears in an input field until the user puts focus on the field.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/placeholder)
    */
  mutable placeholder: string,
  /**
    Sets or retrieves the value indicated whether the content of the object is read-only.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/readOnly)
    */
  mutable readOnly: bool,
  /**
    When present, marks an element that can't be submitted without a value.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/required)
    */
  mutable required: bool,
  /**
    Sets or retrieves the number of horizontal rows contained in the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/rows)
    */
  mutable rows: int,
  /**
    Sets or retrieves how to handle wordwrapping in the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/wrap)
    */
  mutable wrap: string,
  /**
    Retrieves the type of control.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/type)
    */
  @as("type")
  type_: string,
  /**
    Sets or retrieves the initial contents of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/defaultValue)
    */
  mutable defaultValue: string,
  /**
    Retrieves or sets the text in the entry field of the textArea element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/value)
    */
  mutable value: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/textLength)
    */
  textLength: int,
  /**
    Returns whether an element will successfully validate based on forms validation rules and constraints.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/willValidate)
    */
  willValidate: bool,
  /**
    Returns a  ValidityState object that represents the validity states of an element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/validity)
    */
  validity: DOM.validityState,
  /**
    Returns the error message that would be displayed if the user submits the form, or an empty string if no error message. It also triggers the standard error message, such as "this is a required field". The result is that the user sees validation messages without actually submitting.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/validationMessage)
    */
  validationMessage: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/labels)
    */
  labels: DOM.nodeList<HTMLLabelElement.t>,
  /**
    Gets or sets the starting position or offset of a text selection.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/selectionStart)
    */
  mutable selectionStart: int,
  /**
    Gets or sets the end position or offset of a text selection.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/selectionEnd)
    */
  mutable selectionEnd: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/selectionDirection)
    */
  mutable selectionDirection: string,
}

include HTMLElement.Impl({type t = t})

/**
Returns whether a form will validate when it is submitted, without having to submit it.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/checkValidity)
*/
@send
external checkValidity: t => bool = "checkValidity"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/reportValidity)
*/
@send
external reportValidity: t => bool = "reportValidity"

/**
Sets a custom error message that is displayed when a form is submitted.
@param error Sets a custom error message that is displayed when a form is submitted.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/setCustomValidity)
*/
@send
external setCustomValidity: (t, string) => unit = "setCustomValidity"

/**
Highlights the input area of a form element.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/select)
*/
@send
external select: t => unit = "select"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/setRangeText)
*/
@send
external setRangeText: (t, string) => unit = "setRangeText"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/setRangeText)
*/
@send
external setRangeText2: (
  t,
  ~replacement: string,
  ~start: int,
  ~end: int,
  ~selectionMode: DOM.selectionMode=?,
) => unit = "setRangeText"

/**
Sets the start and end positions of a selection in a text field.
@param start The offset into the text field for the start of the selection.
@param end The offset into the text field for the end of the selection.
@param direction The direction in which the selection is performed.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/setSelectionRange)
*/
@send
external setSelectionRange: (t, ~start: int, ~end: int, ~direction: string=?) => unit =
  "setSelectionRange"
