/**
Represents an individual DOM mutation.
[See MutationRecord on MDN](https://developer.mozilla.org/docs/Web/API/MutationRecord)
*/
type mutationRecord = {
  /**
    Returns "attributes" if it was an attribute mutation. "characterData" if it was a mutation to a CharacterData node. And "childList" if it was a mutation to the tree of nodes.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MutationRecord/type)
    */
  @as("type")
  type_: string,
  /**
    Returns the node the mutation affected, depending on the type. For "attributes", it is the element whose attribute changed. For "characterData", it is the CharacterData node. For "childList", it is the node whose children changed.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MutationRecord/target)
    */
  target: DOMTree.node,
  /**
    Return the nodes added and removed respectively.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MutationRecord/addedNodes)
    */
  addedNodes: DOM.nodeList<DOMTree.node>,
  /**
    Return the nodes added and removed respectively.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MutationRecord/removedNodes)
    */
  removedNodes: DOM.nodeList<DOMTree.node>,
  /**
    Return the previous and next sibling respectively of the added or removed nodes, and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MutationRecord/previousSibling)
    */
  previousSibling: Null.t<DOMTree.node>,
  /**
    Return the previous and next sibling respectively of the added or removed nodes, and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MutationRecord/nextSibling)
    */
  nextSibling: Null.t<DOMTree.node>,
  /**
    Returns the local name of the changed attribute, and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MutationRecord/attributeName)
    */
  attributeName: Null.t<string>,
  /**
    Returns the namespace of the changed attribute, and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MutationRecord/attributeNamespace)
    */
  attributeNamespace: Null.t<string>,
  /**
    The return value depends on type. For "attributes", it is the value of the changed attribute before the change. For "characterData", it is the data of the changed node before the change. For "childList", it is null.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MutationRecord/oldValue)
    */
  oldValue: Null.t<string>,
}

/**
[See WebApiMutationObserver on MDN](https://developer.mozilla.org/docs/Web/API/MutationObserver)
*/
@editor.completeFrom(WebApiMutationObserver)
type t

type mutationObserverInit = {
  mutable childList?: bool,
  mutable attributes?: bool,
  mutable characterData?: bool,
  mutable subtree?: bool,
  mutable attributeOldValue?: bool,
  mutable characterDataOldValue?: bool,
  mutable attributeFilter?: array<string>,
}

type mutationObserverCallback = (array<mutationRecord>, t) => unit

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MutationObserver)
*/
@new
external make: mutationObserverCallback => t = "MutationObserver"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MutationObserver/observe)
*/
@throws(JsExn) @send
external observe: (t, ~target: DOMTree.node, ~options: mutationObserverInit=?) => unit = "observe"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MutationObserver/disconnect)
*/
@send
external disconnect: t => unit = "disconnect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MutationObserver/takeRecords)
*/
@send
external takeRecords: t => array<mutationRecord> = "takeRecords"
