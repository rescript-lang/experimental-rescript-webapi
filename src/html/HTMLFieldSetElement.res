/**
Provides special properties and methods (beyond the regular HTMLElement interface it also has available to it by inheritance) for manipulating the layout and presentation of <fieldset> elements.
[See HTMLFieldSetElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFieldSetElement)
TODO: mark as private once mutating fields of private records is allowed
*/
type t = {
  ...DOMTree.htmlElement,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFieldSetElement/disabled)
    */
  mutable disabled: bool,
  /**
    Retrieves a reference to the form that the object is embedded in.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFieldSetElement/form)
    */
  form: Null.t<DOMTree.htmlFormElement>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFieldSetElement/name)
    */
  mutable name: string,
  /**
    Returns the string "fieldset".
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFieldSetElement/type)
    */
  @as("type")
  type_: string,
  /**
    Returns an HTMLCollection of the form controls in the element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFieldSetElement/elements)
    */
  elements: HTMLCollection.t<DOMTree.element>,
  /**
    Returns whether an element will successfully validate based on forms validation rules and constraints.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFieldSetElement/willValidate)
    */
  willValidate: bool,
  /**
    Returns a  ValidityState object that represents the validity states of an element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFieldSetElement/validity)
    */
  validity: DOM.validityState,
  /**
    Returns the error message that would be displayed if the user submits the form, or an empty string if no error message. It also triggers the standard error message, such as "this is a required field". The result is that the user sees validation messages without actually submitting.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFieldSetElement/validationMessage)
    */
  validationMessage: string,
}

include HTMLElement.Impl({type t = t})

/**
Returns whether a form will validate when it is submitted, without having to submit it.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFieldSetElement/checkValidity)
*/
@send
external checkValidity: t => bool = "checkValidity"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFieldSetElement/reportValidity)
*/
@send
external reportValidity: t => bool = "reportValidity"

/**
Sets a custom error message that is displayed when a form is submitted.
@param error Sets a custom error message that is displayed when a form is submitted.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFieldSetElement/setCustomValidity)
*/
@send
external setCustomValidity: (t, string) => unit = "setCustomValidity"
