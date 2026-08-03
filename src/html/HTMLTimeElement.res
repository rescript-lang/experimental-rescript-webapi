/**
Provides special properties (beyond the regular HTMLElement interface it also has available to it by inheritance) for manipulating <time> elements.
[See HTMLTimeElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTimeElement)
TODO: mark as private once mutating fields of private records is allowed
*/
type t = {
  ...DOMTree.htmlElement,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTimeElement/dateTime)
    */
  mutable dateTime: string,
}

include HTMLElement.Impl({type t = t})
