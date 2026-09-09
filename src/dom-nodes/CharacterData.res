/**
The CharacterData abstract interface represents a Node object that contains characters. This is an abstract interface, meaning there aren't any object of type CharacterData: it is implemented by other interfaces, like Text, Comment, or ProcessingInstruction which aren't abstract.
[See CharacterData on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData)
TODO: mark as private once mutating fields of private records is allowed
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
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/data)
    */
  mutable data: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/length)
    */
  length: int,
  /**
    Returns the first preceding sibling that is an element, and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/previousElementSibling)
    */
  previousElementSibling: Null.t<DOMTree.element>,
  /**
    Returns the first following sibling that is an element, and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/nextElementSibling)
    */
  nextElementSibling: Null.t<DOMTree.element>,
}

module Impl = (
  T: {
    type t
  },
) => {
  include Node.Impl({type t = T.t})

  external asCharacterData: T.t => t = "%identity"

  /**
Inserts nodes just after node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/after)
*/
  @throws(JsExn) @send
  external after: (T.t, DOMTree.node) => unit = "after"

  /**
Inserts nodes just after node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/after)
*/
  @throws(JsExn) @send
  external after2: (T.t, string) => unit = "after"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/appendData)
*/
  @send
  external appendData: (T.t, string) => unit = "appendData"

  /**
Inserts nodes just before node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/before)
*/
  @throws(JsExn) @send
  external before: (T.t, DOMTree.node) => unit = "before"

  /**
Inserts nodes just before node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/before)
*/
  @throws(JsExn) @send
  external before2: (T.t, string) => unit = "before"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/deleteData)
*/
  @throws(JsExn) @send
  external deleteData: (T.t, ~offset: int, ~count: int) => unit = "deleteData"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/insertData)
*/
  @throws(JsExn) @send
  external insertData: (T.t, ~offset: int, ~data: string) => unit = "insertData"

  /**
Removes node.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/remove)
*/
  @send
  external remove: T.t => unit = "remove"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/replaceData)
*/
  @throws(JsExn) @send
  external replaceData: (T.t, ~offset: int, ~count: int, ~data: string) => unit = "replaceData"

  /**
Replaces node with nodes, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/replaceWith)
*/
  @throws(JsExn) @send
  external replaceWith: (T.t, DOMTree.node) => unit = "replaceWith"

  /**
Replaces node with nodes, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/replaceWith)
*/
  @throws(JsExn) @send
  external replaceWith2: (T.t, string) => unit = "replaceWith"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/substringData)
*/
  @throws(JsExn) @send
  external substringData: (T.t, ~offset: int, ~count: int) => string = "substringData"
}

include Impl({type t = t})
