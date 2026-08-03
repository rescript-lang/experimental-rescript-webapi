/**
Provides special properties and methods (beyond the regular HTMLElement interface it also has available to it by inheritance) for manipulating the layout and presentation of <progress> elements.
[See HTMLProgressElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLProgressElement)
TODO: mark as private once mutating fields of private records is allowed
*/
type t = {
  ...DOMTree.htmlElement,
  /**
    Sets or gets the current value of a progress element. The value must be a non-negative number between 0 and the max value.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLProgressElement/value)
    */
  mutable value: float,
  /**
    Defines the maximum, or "done" value for a progress element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLProgressElement/max)
    */
  mutable max: float,
  /**
    Returns the quotient of value/max when the value attribute is set (determinate progress bar), or -1 when the value attribute is missing (indeterminate progress bar).
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLProgressElement/position)
    */
  position: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLProgressElement/labels)
    */
  labels: DOM.nodeList<HTMLLabelElement.t>,
}

include HTMLElement.Impl({type t = t})
