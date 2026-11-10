/**
Contains the descriptive information, or metadata, for a document. This object inherits all of the properties and methods described in the HTMLElement interface.
[See HTMLHeadElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLHeadElement)
*/
@editor.completeFrom(HTMLHeadElement)
type t = private {...DOMTree.htmlElement}

include HTMLElement.Impl({type t = t})
