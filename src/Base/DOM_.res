// This file is temporary and will eventually replace DOM.res

@editor.completeFrom(Window)
type window = private {}
external window: window = "window"

@editor.completeFrom(Document)
type document = private {}
external document: document = "document"

type shadowRoot = private {}

/**
EventTarget is a WebApiDOM interface implemented by objects that can receive events and may have listeners for them.
[See EventTarget on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget)
*/
@editor.completeFrom(EventTarget)
type eventTarget = private {}

@editor.completeFrom(Element)
type element = private {}

/**
A collection of Attr objects. Objects inside a NamedNodeMap are not in any particular order, unlike NodeList, although they may be accessed by an index as in an array.
[See NamedNodeMap on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap)
*/
@editor.completeFrom(NamedNodeMap)
type rec namedNodeMap = private {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/length)
    */
  length: int,
}

/**
NodeList objects are collections of nodes, usually returned by properties such as Node.childNodes and methods such as document.querySelectorAll().
[See NodeList on MDN](https://developer.mozilla.org/docs/Web/API/NodeList)
*/
@editor.completeFrom(NodeList)
and nodeList<'tNode> = private {
  /**
    Returns the number of nodes in the collection.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NodeList/length)
    */
  length: int,
}

/**
Node is an interface from which a number of WebApiDOM API object types inherit. It allows those types to be treated similarly; for example, inheriting the same set of methods, or being tested in the same way.
[See Node on MDN](https://developer.mozilla.org/docs/Web/API/Node)
TODO: mark as private once mutating fields of private records is allowed
*/
@editor.completeFrom(DOM.Node)
and node = {
  ...eventTarget,
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
  ownerDocument: Null.t<document>,
  /**
    Returns the parent.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentNode)
    */
  parentNode: Null.t<node>,
  /**
    Returns the parent element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentElement)
    */
  parentElement: Null.t<htmlElement>,
  /**
    Returns the children.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/childNodes)
    */
  childNodes: nodeList<node>,
  /**
    Returns the first child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/firstChild)
    */
  firstChild: Null.t<node>,
  /**
    Returns the last child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lastChild)
    */
  lastChild: Null.t<node>,
  /**
    Returns the previous sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/previousSibling)
    */
  previousSibling: Null.t<node>,
  /**
    Returns the next sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nextSibling)
    */
  nextSibling: Null.t<node>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeValue)
    */
  mutable nodeValue: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/textContent)
    */
  mutable textContent: Null.t<string>,
}


/**
Any HTML element. Some elements directly implement this interface, while others implement it via an interface that inherits it.
[See HTMLElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement)
TODO: mark as private once mutating fields of private records is allowed
*/
@editor.completeFrom(HTMLElement) and htmlElement = {
  // Base properties from Element
  /**
    Returns the namespace.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/namespaceURI)
    */
  namespaceURI: Null.t<string>,
  /**
    Returns the namespace prefix.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/prefix)
    */
  prefix: Null.t<string>,
  /**
    Returns the local name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/localName)
    */
  localName: string,
  /**
    Returns the HTML-uppercased qualified name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/tagName)
    */
  tagName: string,
  /**
    Returns the value of element's id content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/id)
    */
  mutable id: string,
  /**
    Returns the value of element's class content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/className)
    */
  mutable className: string,
  /**
    Allows for manipulation of element's class content attribute as a set of whitespace-separated tokens through a DOMTokenList object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/classList)
    */
  classList: DOMTokenList.t,
  /**
    Returns the value of element's slot content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/slot)
    */
  mutable slot: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/attributes)
    */
  attributes: namedNodeMap,
  /**
    Returns element's shadow root, if any, and if shadow root's mode is "open", and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/shadowRoot)
    */
  shadowRoot: Null.t<shadowRoot>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/part)
    */
  part: DOMTokenList.t,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollTop)
    */
  mutable scrollTop: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollLeft)
    */
  mutable scrollLeft: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollWidth)
    */
  scrollWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollHeight)
    */
  scrollHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientTop)
    */
  clientTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientLeft)
    */
  clientLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientWidth)
    */
  clientWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientHeight)
    */
  clientHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/currentCSSZoom)
    */
  currentCSSZoom: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/innerHTML)
    */
  mutable innerHTML: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/outerHTML)
    */
  mutable outerHTML: string,
  // End base properties from Element

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
  ownerDocument: Null.t<document>,
  /**
    Returns the parent.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentNode)
    */
  parentNode: Null.t<node>,
  /**
    Returns the parent element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentElement)
    */
  parentElement: Null.t<htmlElement>,
  /**
    Returns the children.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/childNodes)
    */
  childNodes: nodeList<node>,
  /**
    Returns the first child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/firstChild)
    */
  firstChild: Null.t<node>,
  /**
    Returns the last child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lastChild)
    */
  lastChild: Null.t<node>,
  /**
    Returns the previous sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/previousSibling)
    */
  previousSibling: Null.t<node>,
  /**
    Returns the next sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nextSibling)
    */
  nextSibling: Null.t<node>,
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
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/title)
    */
  mutable title: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/lang)
    */
  mutable lang: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/translate)
    */
  mutable translate: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/dir)
    */
  mutable dir: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/hidden)
    */
  mutable hidden: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/inert)
    */
  mutable inert: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKey)
    */
  mutable accessKey: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKeyLabel)
    */
  accessKeyLabel: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/draggable)
    */
  mutable draggable: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/spellcheck)
    */
  mutable spellcheck: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/autocapitalize)
    */
  mutable autocapitalize: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/innerText)
    */
  mutable innerText: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/outerText)
    */
  mutable outerText: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/popover)
    */
  mutable popover: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetParent)
    */
  offsetParent: Null.t<element>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetTop)
    */
  offsetTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetLeft)
    */
  offsetLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetWidth)
    */
  offsetWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetHeight)
    */
  offsetHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/style)
    */
  style: cssStyleDeclaration,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/attributeStyleMap)
    */
  attributeStyleMap: stylePropertyMap,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/contentEditable)
    */
  mutable contentEditable: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/enterKeyHint)
    */
  mutable enterKeyHint: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/isContentEditable)
    */
  isContentEditable: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/inputMode)
    */
  mutable inputMode: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/dataset)
    */
  dataset: domStringMap,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/nonce)
    */
  mutable nonce?: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/autofocus)
    */
  mutable autofocus: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/tabIndex)
    */
  mutable tabIndex: int,
}


/**
An event which takes place in the DOM.
[See WebApiEvent on MDN](https://developer.mozilla.org/docs/Web/API/Event)
*/
@editor.completeFrom(Event)
type event = private {
  /**
    Returns the type of event, e.g. "click", "hashchange", or "submit".
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/type)
    */
  @as("type")
  type_: EventType.t,
  /**
    Returns the object to which event is dispatched (its target).
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/target)
    */
  target: Null.t<eventTarget>,
  /**
    Returns the object whose event listener's callback is currently being invoked.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/currentTarget)
    */
  currentTarget: Null.t<eventTarget>,
  /**
    Returns the event's phase, which is one of NONE, CAPTURING_PHASE, AT_TARGET, and BUBBLING_PHASE.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/eventPhase)
    */
  eventPhase: int,
  /**
    Returns true or false depending on how event was initialized. True if event goes through its target's ancestors in reverse tree order, and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/bubbles)
    */
  bubbles: bool,
  /**
    Returns true or false depending on how event was initialized. Its return value does not always carry meaning, but true can indicate that part of the operation during which event was dispatched, can be canceled by invoking the preventDefault() method.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/cancelable)
    */
  cancelable: bool,
  /**
    Returns true if preventDefault() was invoked successfully to indicate cancelation, and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/defaultPrevented)
    */
  defaultPrevented: bool,
  /**
    Returns true or false depending on how event was initialized. True if event invokes listeners past a ShadowRoot node that is the root of its target, and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/composed)
    */
  composed: bool,
  /**
    Returns true if event was dispatched by the user agent, and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/isTrusted)
    */
  isTrusted: bool,
  /**
    Returns the event's timestamp as the number of milliseconds measured relative to the time origin.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/timeStamp)
    */
  timeStamp: float,
}

type eventInit = {
  mutable bubbles?: bool,
  mutable cancelable?: bool,
  mutable composed?: bool,
}

/**
The ExtendableEvent interface extends the lifetime of the install and activate events dispatched on the global scope as part of the service worker lifecycle.
[See ExtendableEvent on MDN](https://developer.mozilla.org/docs/Web/API/ExtendableEvent)
 */
@editor.completeFrom(ExtendableEvent)
type extendableEvent = private {
  ...event,
}

/**
A controller object that allows you to abort one or more WebApiDOM requests as and when desired.
[See AbortController on MDN](https://developer.mozilla.org/docs/Web/API/AbortController)
*/
@editor.completeFrom(AbortController)
type rec abortController = private {
  /**
    Returns the AbortSignal object associated with this object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbortController/signal)
    */
  signal: abortSignal,
}
/**
A signal object that allows you to communicate with a WebApiDOM request (such as a WebApiFetch) and abort it if required via an AbortController object.
[See AbortSignal on MDN](https://developer.mozilla.org/docs/Web/API/AbortSignal)
*/
@editor.completeFrom(AbortSignal) and abortSignal = private {
  ...eventTarget,
  /**
    Returns true if this AbortSignal's AbortController has signaled to abort, and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbortSignal/aborted)
    */
  aborted: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbortSignal/reason)
    */
  reason: JSON.t,
}

module EventListener = {
  type t<'event> = 'event => unit

  type options = {mutable capture?: bool}

  type addEventListenerOptions = {
    ...options,
    mutable passive?: bool,
    mutable once?: bool,
    mutable signal?: abortSignal,
  }
}
