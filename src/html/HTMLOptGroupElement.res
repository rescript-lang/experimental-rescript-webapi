/**
Provides special properties and methods (beyond the regular HTMLElement object interface they also have available to them by inheritance) for manipulating the layout and presentation of <optgroup> elements.
[See HTMLOptGroupElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOptGroupElement)
TODO: mark as private once mutating fields of private records is allowed
*/
type t = {
  ...DOMTree.htmlElement,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOptGroupElement/disabled)
    */
  mutable disabled: bool,
  /**
    Sets or retrieves a value that you can use to implement your own label functionality for the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOptGroupElement/label)
    */
  mutable label: string,
}

include HTMLElement.Impl({type t = t})
