/**
The HTMLTrackElement
[See HTMLTrackElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTrackElement)
TODO: mark as private once mutating fields of private records is allowed
*/
type t = {
  ...DOMTree.htmlElement,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTrackElement/src)
    */
  mutable src: string,
}

include HTMLElement.Impl({type t = t})
