/**
The HTMLLegendElement is an interface allowing to access properties of the <legend> elements. It inherits properties and methods from the HTMLElement interface.
[See HTMLLegendElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLegendElement)
*/
type t = private {
  ...DOMTree.htmlElement,
  /**
    Retrieves a reference to the form that the object is embedded in.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLegendElement/form)
    */
  form: Null.t<DOMTree.htmlFormElement>,
}

include HTMLElement.Impl({type t = t})
