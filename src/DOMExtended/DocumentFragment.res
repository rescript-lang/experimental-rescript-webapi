/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DocumentFragmentFragment)
*/
@new
external make: unit => DOMTypes.documentFragment = "DocumentFragment"

module Impl = (
  T: {
    type t
  },
) => {
  include Node.Impl({type t = T.t})

  external asDocumentFragment: T.t => DOMTypes.documentFragment = "%identity"

  /**
Inserts nodes after the last child of node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DocumentFragment/append)
*/
  @send
  external append: (T.t, Node.t) => unit = "append"

  /**
Inserts nodes after the last child of node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DocumentFragment/append)
*/
  @send
  external append2: (T.t, string) => unit = "append"

  /**
Returns the first element within node's descendants whose ID is elementId.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DocumentFragment/getElementById)
*/
  @send
  external getElementById: (T.t, string) => null<Element.t> = "getElementById"

  /**
Inserts nodes before the first child of node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DocumentFragment/prepend)
*/
  @send
  external prepend: (T.t, Node.t) => unit = "prepend"

  /**
Inserts nodes before the first child of node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DocumentFragment/prepend)
*/
  @send
  external prepend2: (T.t, string) => unit = "prepend"

  /**
Returns the first element that is a descendant of node that matches selectors.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DocumentFragment/querySelector)
*/
  @send
  external querySelector: (T.t, string) => Null.t<Element.t> = "querySelector"

  /**
Returns all element descendants of node that match selectors.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DocumentFragment/querySelectorAll)
*/
  @send
  external querySelectorAll: (T.t, string) => NodeList.t<Element.t> = "querySelectorAll"

  /**
Replace all children of node with nodes, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DocumentFragment/replaceChildren)
*/
  @send
  external replaceChildren: (T.t, Node.t) => unit = "replaceChildren"

  /**
Replace all children of node with nodes, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DocumentFragment/replaceChildren)
*/
  @send
  external replaceChildren2: (T.t, string) => unit = "replaceChildren"
}

include Impl({type t = DOMTypes.documentFragment})
