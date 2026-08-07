/**
Provides properties and methods (beyond the regular HTMLElement interface it also has available to it by inheritance) for manipulating <button> elements.
[See HTMLButtonElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLButtonElement)
TODO: mark as private once mutating fields of private records is allowed
*/
type rec t = {
  ...DOMTree.htmlElement,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLButtonElement/disabled)
    */
  mutable disabled: bool,
  /**
    Retrieves a reference to the form that the object is embedded in.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLButtonElement/form)
    */
  form: Null.t<DOMTree.htmlFormElement>,
  /**
    Overrides the action attribute (where the data on a form is sent) on the parent form element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLButtonElement/formAction)
    */
  mutable formAction: string,
  /**
    Used to override the encoding (formEnctype attribute) specified on the form element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLButtonElement/formEnctype)
    */
  mutable formEnctype: string,
  /**
    Overrides the submit method attribute previously specified on a form element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLButtonElement/formMethod)
    */
  mutable formMethod: string,
  /**
    Sets or retrieves the name of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLButtonElement/name)
    */
  mutable name: string,
  /**
    Gets the classification and default behavior of the button.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLButtonElement/type)
    */
  @as("type")
  mutable type_: string,
  /**
    Sets or retrieves the default or selected value of the control.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLButtonElement/value)
    */
  mutable value: string,
  /**
    Returns whether an element will successfully validate based on forms validation rules and constraints.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLButtonElement/willValidate)
    */
  willValidate: bool,
  /**
    Returns a  ValidityState object that represents the validity states of an element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLButtonElement/validity)
    */
  validity: DOM.validityState,
  /**
    Returns the error message that would be displayed if the user submits the form, or an empty string if no error message. It also triggers the standard error message, such as "this is a required field". The result is that the user sees validation messages without actually submitting.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLButtonElement/validationMessage)
    */
  validationMessage: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLButtonElement/labels)
    */
  labels: DOM.nodeList<HTMLLabelElement.t>,
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
Returns whether a form will validate when it is submitted, without having to submit it.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLButtonElement/checkValidity)
*/
@send
external checkValidity: t => bool = "checkValidity"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLButtonElement/reportValidity)
*/
@send
external reportValidity: t => bool = "reportValidity"

/**
Sets a custom error message that is displayed when a form is submitted.
@param error Sets a custom error message that is displayed when a form is submitted.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLButtonElement/setCustomValidity)
*/
@send
external setCustomValidity: (t, string) => unit = "setCustomValidity"
