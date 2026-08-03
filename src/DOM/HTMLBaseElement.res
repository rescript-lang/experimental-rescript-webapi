/**
Contains the base URI for a document. This object inherits all of the properties and methods as described in the HTMLElement interface.
[See HTMLBaseElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLBaseElement)
TODO: mark as private once mutating fields of private records is allowed
*/
type t = {
  ...DOMTree.htmlElement,
  /**
    Gets or sets the baseline WebApiURL on which relative links are based.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLBaseElement/href)
    */
  mutable href: string,
  /**
    Sets or retrieves the window or frame at which to target content.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLBaseElement/target)
    */
  mutable target: string,
}

include HTMLElement.Impl({type t = t})
