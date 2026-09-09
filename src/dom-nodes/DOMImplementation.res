/**
An object providing methods which are not dependent on any particular document. Such an object is returned by the Document.implementation property.
[See DOMImplementation on MDN](https://developer.mozilla.org/docs/Web/API/DOMImplementation)
*/
type t = private {}

/**
A Node containing a doctype.
[See DocumentType on MDN](https://developer.mozilla.org/docs/Web/API/DocumentType)
*/
type documentType = {
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
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DocumentType/name)
    */
  name: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DocumentType/publicId)
    */
  publicId: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DocumentType/systemId)
    */
  systemId: string,
}

/**
An XML document. It inherits from the generic Document and does not add any specific methods or properties to it: nevertheless, several algorithms behave differently with the two types of documents.
[See XMLDocument on MDN](https://developer.mozilla.org/docs/Web/API/XMLDocument)
*/
type xmlDocument = {
  ...DOM.document,
}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMImplementation/createDocumentType)
*/
@send
external createDocumentType: (
  t,
  ~qualifiedName: string,
  ~publicId: string,
  ~systemId: string,
) => documentType = "createDocumentType"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMImplementation/createDocument)
*/
@throws(JsExn) @send
external createDocument: (
  t,
  ~namespace: string,
  ~qualifiedName: string,
  ~doctype: documentType=?,
) => xmlDocument = "createDocument"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMImplementation/createHTMLDocument)
*/
@send
external createHTMLDocument: (t, ~title: string=?) => DOM.document = "createHTMLDocument"
