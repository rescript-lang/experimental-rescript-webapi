@@warning("-44")
@@warning("-33")
open DOMAPI

module Node = {
  /**
    Returns node's root.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/getRootNode)
    */
  @send
  external getRootNode: (node, getRootNodeOptions) => node = "getRootNode"

  /**
    Returns whether node has children.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/hasChildNodes)
    */
  @send
  external hasChildNodes: node => bool = "hasChildNodes"

  /**
    Removes empty exclusive Text nodes and concatenates the data of remaining contiguous exclusive Text nodes into the first of their nodes.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/normalize)
    */
  @send
  external normalize: node => unit = "normalize"

  /**
    Returns a copy of node. If deep is true, the copy also includes the node's descendants.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/cloneNode)
    */
  @send
  external cloneNode: (node, bool) => node = "cloneNode"

  /**
    Returns whether node and otherNode have the same properties.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isEqualNode)
    */
  @send
  external isEqualNode: (node, node) => bool = "isEqualNode"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isSameNode)
    */
  @send
  external isSameNode: (node, node) => bool = "isSameNode"

  /**
    Returns a bitmask indicating the position of other relative to node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/compareDocumentPosition)
    */
  @send
  external compareDocumentPosition: (node, node) => int = "compareDocumentPosition"

  /**
    Returns true if other is an inclusive descendant of node, and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/contains)
    */
  @send
  external contains: (node, node) => bool = "contains"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lookupPrefix)
    */
  @send
  external lookupPrefix: (node, string) => string = "lookupPrefix"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lookupNamespaceURI)
    */
  @send
  external lookupNamespaceURI: (node, string) => string = "lookupNamespaceURI"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isDefaultNamespace)
    */
  @send
  external isDefaultNamespace: (node, string) => bool = "isDefaultNamespace"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/insertBefore)
    */
  @send
  external insertBefore: (node, 't, node) => 't = "insertBefore"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/appendChild)
    */
  @send
  external appendChild: (node, 't) => 't = "appendChild"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/replaceChild)
    */
  @send
  external replaceChild: (node, node, 't) => 't = "replaceChild"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/removeChild)
    */
  @send
  external removeChild: (node, 't) => 't = "removeChild"
}
