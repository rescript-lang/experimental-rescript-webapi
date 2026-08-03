/**
Provides special properties and methods for manipulating the options, layout, and presentation of <input> elements.
[See HTMLInputElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement)
TODO: mark as private once mutating fields of private records is allowed
*/
type t = {
  ...DOMTree.htmlElement,
  /**
    Sets or retrieves a comma-separated list of content types.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/accept)
    */
  mutable accept: string,
  /**
    Sets or retrieves a text alternative to the graphic.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/alt)
    */
  mutable alt: string,
  /**
    Specifies whether autocomplete is applied to an editable text field.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/autocomplete)
    */
  mutable autocomplete: string,
  /**
    Sets or retrieves the state of the check box or radio button.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/defaultChecked)
    */
  mutable defaultChecked: bool,
  /**
    Sets or retrieves the state of the check box or radio button.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/checked)
    */
  mutable checked: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/disabled)
    */
  mutable disabled: bool,
  /**
    Retrieves a reference to the form that the object is embedded in.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/form)
    */
  form: Null.t<DOMTree.htmlFormElement>,
  /**
    Returns a FileList object on a file type input object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/files)
    */
  mutable files: Null.t<DOM.fileList>,
  /**
    Overrides the action attribute (where the data on a form is sent) on the parent form element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/formAction)
    */
  mutable formAction: string,
  /**
    Used to override the encoding (formEnctype attribute) specified on the form element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/formEnctype)
    */
  mutable formEnctype: string,
  /**
    Overrides the submit method attribute previously specified on a form element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/formMethod)
    */
  mutable formMethod: string,
  /**
    Sets or retrieves the height of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/height)
    */
  mutable height: int,
  /**
    When set, overrides the rendering of checkbox controls so that the current value is not visible.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/indeterminate)
    */
  mutable indeterminate: bool,
  /**
    Specifies the ID of a pre-defined datalist of options for an input element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/list)
    */
  list: Null.t<HTMLDataListElement.t>,
  /**
    Defines the maximum acceptable value for an input element with type="number".When used with the min and step attributes, lets you control the range and increment (such as only even numbers) that the user can enter into an input field.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/max)
    */
  mutable max: string,
  /**
    Sets or retrieves the maximum number of characters that the user can enter in a text control.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/maxLength)
    */
  mutable maxLength: int,
  /**
    Defines the minimum acceptable value for an input element with type="number". When used with the max and step attributes, lets you control the range and increment (such as even numbers only) that the user can enter into an input field.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/min)
    */
  mutable min: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/minLength)
    */
  mutable minLength: int,
  /**
    Sets or retrieves the Boolean value indicating whether multiple items can be selected from a list.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/multiple)
    */
  mutable multiple: bool,
  /**
    Sets or retrieves the name of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/name)
    */
  mutable name: string,
  /**
    Gets or sets a string containing a regular expression that the user's input must match.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/pattern)
    */
  mutable pattern: string,
  /**
    Gets or sets a text string that is displayed in an input field as a hint or prompt to users as the format or type of information they need to enter.The text appears in an input field until the user puts focus on the field.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/placeholder)
    */
  mutable placeholder: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/readOnly)
    */
  mutable readOnly: bool,
  /**
    When present, marks an element that can't be submitted without a value.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/required)
    */
  mutable required: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/size)
    */
  mutable size: int,
  /**
    The address or WebApiURL of the a media resource that is to be considered.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/src)
    */
  mutable src: string,
  /**
    Defines an increment or jump between values that you want to allow the user to enter. When used with the max and min attributes, lets you control the range and increment (for example, allow only even numbers) that the user can enter into an input field.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/step)
    */
  mutable step: string,
  /**
    Returns the content type of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/type)
    */
  @as("type")
  mutable type_: string,
  /**
    Sets or retrieves the initial contents of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/defaultValue)
    */
  mutable defaultValue: string,
  /**
    Returns the value of the data at the cursor's current position.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/value)
    */
  mutable value: string,
  /**
    Returns a Date object representing the form control's value, if applicable; otherwise, returns null. Can be set, to change the value. Throws an "InvalidStateError" DOMException if the control isn't date- or time-based.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/valueAsDate)
    */
  mutable valueAsDate: Null.t<Date.t>,
  /**
    Returns the input field value as a number.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/valueAsNumber)
    */
  mutable valueAsNumber: float,
  /**
    Sets or retrieves the width of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/width)
    */
  mutable width: int,
  /**
    Returns whether an element will successfully validate based on forms validation rules and constraints.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/willValidate)
    */
  willValidate: bool,
  /**
    Returns a  ValidityState object that represents the validity states of an element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/validity)
    */
  validity: DOM.validityState,
  /**
    Returns the error message that would be displayed if the user submits the form, or an empty string if no error message. It also triggers the standard error message, such as "this is a required field". The result is that the user sees validation messages without actually submitting.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/validationMessage)
    */
  validationMessage: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/labels)
    */
  labels: Null.t<DOM.nodeList<HTMLLabelElement.t>>,
  /**
    Gets or sets the starting position or offset of a text selection.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/selectionStart)
    */
  mutable selectionStart: Null.t<int>,
  /**
    Gets or sets the end position or offset of a text selection.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/selectionEnd)
    */
  mutable selectionEnd: Null.t<int>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/selectionDirection)
    */
  mutable selectionDirection: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/webkitdirectory)
    */
  mutable webkitdirectory: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/webkitEntries)
    */
  webkitEntries: array<BaseFileAndDirectoryEntries.fileSystemEntry>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/capture)
    */
  mutable capture: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLButtonElement/popoverTargetElement)
    */
  mutable popoverTargetElement: Null.t<DOMTree.element>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLButtonElement/popoverTargetAction)
    */
  mutable popoverTargetAction: string,
}

include HTMLElement.Impl({type t = t})

/**
Increments a range input control's value by the value given by the Step attribute. If the optional parameter is used, will increment the input control's value by that value.
@param n Value to increment the value by.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/stepUp)
*/
@send
external stepUp: (t, ~n: int=?) => unit = "stepUp"

/**
Decrements a range input control's value by the value given by the Step attribute. If the optional parameter is used, it will decrement the input control's step value multiplied by the parameter's value.
@param n Value to decrement the value by.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/stepDown)
*/
@send
external stepDown: (t, ~n: int=?) => unit = "stepDown"

/**
Returns whether a form will validate when it is submitted, without having to submit it.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/checkValidity)
*/
@send
external checkValidity: t => bool = "checkValidity"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/reportValidity)
*/
@send
external reportValidity: t => bool = "reportValidity"

/**
Sets a custom error message that is displayed when a form is submitted.
@param error Sets a custom error message that is displayed when a form is submitted.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/setCustomValidity)
*/
@send
external setCustomValidity: (t, string) => unit = "setCustomValidity"

/**
Makes the selection equal to the current object.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/select)
*/
@send
external select: t => unit = "select"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/setRangeText)
*/
@send
external setRangeText: (t, string) => unit = "setRangeText"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/setRangeText)
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
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/setSelectionRange)
*/
@send
external setSelectionRange: (t, ~start: int, ~end: int, ~direction: string=?) => unit =
  "setSelectionRange"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/showPicker)
*/
@send
external showPicker: t => unit = "showPicker"
