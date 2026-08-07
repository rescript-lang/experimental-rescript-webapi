/**
Provides special properties (beyond the regular HTMLElement interface it also has available to it by inheritance) for manipulating <data> elements.
[See HTMLDataElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLDataElement)
TODO: mark as private once mutating fields of private records is allowed
*/
type t = {
  ...DOMTree.htmlElement,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLDataElement/value)
    */
  mutable value: string,
}

include HTMLElement.Impl({type t = t})
