/**
Contains the title for a document. This element inherits all of the properties and methods of the HTMLElement interface.
[See HTMLTitleElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTitleElement)
TODO: mark as private once mutating fields of private records is allowed
*/
type t = {
  ...DOMTree.htmlElement,
  /**
    Retrieves or sets the text of the object as a string.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTitleElement/text)
    */
  mutable text: string,
}

include HTMLElement.Impl({type t = t})
