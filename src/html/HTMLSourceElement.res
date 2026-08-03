/**
Provides special properties (beyond the regular HTMLElement object interface it also has available to it by inheritance) for manipulating <source> elements.
[See HTMLSourceElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSourceElement)
TODO: mark as private once mutating fields of private records is allowed
*/
type t = {
  ...DOMTree.htmlElement,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSourceElement/width)
    */
  mutable width: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSourceElement/height)
    */
  mutable height: int,
}

include HTMLElement.Impl({type t = t})
