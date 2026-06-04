/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document)
*/
type t = private {}

@new
external make: unit => t = "Document"

/**
Returns the first element within node's descendants whose ID is elementId.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/getElementById)
*/
@scope("globalThis.document")
external getElementById: string => null<Element.t> = "getElementById"

/**
Returns the first element that is a descendant of node that matches selectors.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/querySelector)
*/
@scope("globalThis.document")
external querySelector: string => Null.t<Element.t> = "querySelector"

/**
Creates an instance of the element for the specified tag.
@param tagName The name of an element.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/createElement)
*/
@scope("globalThis.document")
external createElement: (string, ~options: string=?) => Element.t = "createElement"

let isInstanceOf = (_: 'value): bool => %raw(`param instanceof Document`)
