@@warning("-33")
open DOMAPI

module DocumentFragment = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DocumentFragment)
    */
  @new
  external make: unit => documentFragment = "DocumentFragment"
  /**
    Inserts nodes before the first child of node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/prepend)
    */
  @send
  external prepend: (documentFragment, unknown) => unit = "prepend"

  /**
    Inserts nodes after the last child of node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/append)
    */
  @send
  external append: (documentFragment, unknown) => unit = "append"

  /**
    Replace all children of node with nodes, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/replaceChildren)
    */
  @send
  external replaceChildren: (documentFragment, unknown) => unit = "replaceChildren"

  /**
    Returns the first element that is a descendant of node that matches selectors.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/querySelector)
    */
  @send
  external querySelector: (documentFragment, string) => element = "querySelector"

  /**
    Returns all element descendants of node that match selectors.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/querySelectorAll)
    */
  @send
  external querySelectorAll: (documentFragment, string) => nodeList = "querySelectorAll"
}
