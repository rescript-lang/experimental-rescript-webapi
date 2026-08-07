/**
A WebApiDOM element's attribute as an object. In most WebApiDOM methods, you will probably directly retrieve the attribute as a string (e.g., Element.getAttribute(), but certain functions (e.g., Element.getAttributeNode()) or means of iterating give Attr types.
[See Attr on MDN](https://developer.mozilla.org/docs/Web/API/Attr)
*/
type t = {
  // Base properties from Node
  /**
    Returns the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeType)
    */
  nodeType: int,
  /**
    Returns a string appropriate for the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeName)
    */
  nodeName: string,
  /**
    Returns node's node document's document base URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/baseURI)
    */
  baseURI: string,
  /**
    Returns true if node is connected and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isConnected)
    */
  isConnected: bool,
  /**
    Returns the node document. Returns null for documents.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/ownerDocument)
    */
  ownerDocument: Null.t<DOM.document>,
  /**
    Returns the parent.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentNode)
    */
  parentNode: Null.t<DOMTree.node>,
  /**
    Returns the parent element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentElement)
    */
  parentElement: Null.t<DOMTree.htmlElement>,
  /**
    Returns the children.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/childNodes)
    */
  childNodes: DOM.nodeList<DOMTree.node>,
  /**
    Returns the first child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/firstChild)
    */
  firstChild: Null.t<DOMTree.node>,
  /**
    Returns the last child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lastChild)
    */
  lastChild: Null.t<DOMTree.node>,
  /**
    Returns the previous sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/previousSibling)
    */
  previousSibling: Null.t<DOMTree.node>,
  /**
    Returns the next sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nextSibling)
    */
  nextSibling: Null.t<DOMTree.node>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeValue)
    */
  mutable nodeValue: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/textContent)
    */
  mutable textContent: Null.t<string>,
  // End base properties from Node

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Attr/namespaceURI)
    */
  namespaceURI: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Attr/prefix)
    */
  prefix: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Attr/localName)
    */
  localName: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Attr/name)
    */
  name: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Attr/value)
    */
  mutable value: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Attr/ownerElement)
    */
  ownerElement: Null.t<DOMTree.element>,
}
