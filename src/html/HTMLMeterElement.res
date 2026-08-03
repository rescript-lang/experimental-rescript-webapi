/**
The HTML <meter> elements expose the HTMLMeterElement interface, which provides special properties and methods (beyond the HTMLElement object interface they also have available to them by inheritance) for manipulating the layout and presentation of <meter> elements.
[See HTMLMeterElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMeterElement)
TODO: mark as private once mutating fields of private records is allowed
*/
type t = {
  ...DOMTree.htmlElement,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMeterElement/value)
    */
  mutable value: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMeterElement/min)
    */
  mutable min: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMeterElement/max)
    */
  mutable max: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMeterElement/low)
    */
  mutable low: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMeterElement/high)
    */
  mutable high: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMeterElement/optimum)
    */
  mutable optimum: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMeterElement/labels)
    */
  labels: DOM.nodeList<HTMLLabelElement.t>,
}

include HTMLElement.Impl({type t = t})
