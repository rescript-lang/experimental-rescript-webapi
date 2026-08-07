/**
Provides properties and methods (beyond those inherited from HTMLElement) for manipulating the layout and presentation of <output> elements.
[See HTMLOutputElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOutputElement)
TODO: mark as private once mutating fields of private records is allowed
*/
type t = {
  ...DOMTree.htmlElement,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOutputElement/htmlFor)
    */
  htmlFor: DOM.domTokenList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOutputElement/form)
    */
  form: Null.t<DOMTree.htmlFormElement>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOutputElement/name)
    */
  mutable name: string,
  /**
    Returns the string "output".
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOutputElement/type)
    */
  @as("type")
  type_: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOutputElement/defaultValue)
    */
  mutable defaultValue: string,
  /**
    Returns the element's current value.

Can be set, to change the value.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOutputElement/value)
    */
  mutable value: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOutputElement/willValidate)
    */
  willValidate: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOutputElement/validity)
    */
  validity: DOM.validityState,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOutputElement/validationMessage)
    */
  validationMessage: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOutputElement/labels)
    */
  labels: DOM.nodeList<HTMLLabelElement.t>,
}

include HTMLElement.Impl({type t = t})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOutputElement/checkValidity)
*/
@send
external checkValidity: t => bool = "checkValidity"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOutputElement/reportValidity)
*/
@send
external reportValidity: t => bool = "reportValidity"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOutputElement/setCustomValidity)
*/
@send
external setCustomValidity: (t, string) => unit = "setCustomValidity"
