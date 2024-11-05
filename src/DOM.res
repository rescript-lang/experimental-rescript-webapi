@@warning("-30")

open Prelude
open Event
open Clipboard
open CredentialManagement
open Geolocation
open MediaCapabilities
open MediaCaptureAndStreams
open MediaSession
open Permissions
open ScreenWakeLock
open ServiceWorker
open EncryptedMediaExtensions
open Gamepad
open File
open WebMIDI
open History
open VisualViewport
open WebSpeech
open ViewTransitions

type shadowRootMode =
  | @as("closed") Closed
  | @as("open") Open

type slotAssignmentMode =
  | @as("manual") Manual
  | @as("named") Named

type autoFillBase =
  | @as("off") Off
  | @as("on") On

type documentReadyState =
  | @as("complete") Complete
  | @as("interactive") Interactive
  | @as("loading") Loading

type documentVisibilityState =
  | @as("hidden") Hidden
  | @as("visible") Visible

type orientationType =
  | @as("landscape-primary") LandscapePrimary
  | @as("landscape-secondary") LandscapeSecondary
  | @as("portrait-primary") PortraitPrimary
  | @as("portrait-secondary") PortraitSecondary

type insertPosition =
  | @as("afterbegin") Afterbegin
  | @as("afterend") Afterend
  | @as("beforebegin") Beforebegin
  | @as("beforeend") Beforeend

type scrollBehavior =
  | @as("auto") Auto
  | @as("instant") Instant
  | @as("smooth") Smooth

type fullscreenNavigationUI =
  | @as("auto") Auto
  | @as("hide") Hide
  | @as("show") Show

type shareData = {
  mutable files: array<file>,
  mutable title: string,
  mutable text: string,
  mutable url: string,
}

/**
An abnormal event (called an exception) which occurs as a result of calling a method or accessing a property of a web API.
[See DOMException on MDN](https://developer.mozilla.org/docs/Web/API/DOMException)
*/
type domException = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMException/name)
    */
  name: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMException/message)
    */
  message: string,
}

/**
A type returned by some APIs which contains a list of DOMString (strings).
[See DOMStringList on MDN](https://developer.mozilla.org/docs/Web/API/DOMStringList)
*/
type domStringList = {
  /**
    Returns the number of strings in strings.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMStringList/length)
    */
  length: int,
}

/**
The location (URL) of the object it is linked to. Changes done on it are reflected on the object it relates to. Both the Document and Window interface have such a linked Location, accessible via Document.location and Window.location respectively.
[See Location on MDN](https://developer.mozilla.org/docs/Web/API/Location)
*/
type location = {
  /**
    Returns the Location object's URL.

Can be set, to navigate to the given URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/href)
    */
  mutable href: string,
  /**
    Returns the Location object's URL's origin.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/origin)
    */
  origin: string,
  /**
    Returns the Location object's URL's scheme.

Can be set, to navigate to the same URL with a changed scheme.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/protocol)
    */
  mutable protocol: string,
  /**
    Returns the Location object's URL's host and port (if different from the default port for the scheme).

Can be set, to navigate to the same URL with a changed host and port.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/host)
    */
  mutable host: string,
  /**
    Returns the Location object's URL's host.

Can be set, to navigate to the same URL with a changed host.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/hostname)
    */
  mutable hostname: string,
  /**
    Returns the Location object's URL's port.

Can be set, to navigate to the same URL with a changed port.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/port)
    */
  mutable port: string,
  /**
    Returns the Location object's URL's path.

Can be set, to navigate to the same URL with a changed path.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/pathname)
    */
  mutable pathname: string,
  /**
    Returns the Location object's URL's query (includes leading "?" if non-empty).

Can be set, to navigate to the same URL with a changed query (ignores leading "?").
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/search)
    */
  mutable search: string,
  /**
    Returns the Location object's URL's fragment (includes leading "#" if non-empty).

Can be set, to navigate to the same URL with a changed fragment (ignores leading "#").
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/hash)
    */
  mutable hash: string,
  /**
    Returns a DOMStringList object listing the origins of the ancestor browsing contexts, from the parent browsing context to the top-level browsing context.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/ancestorOrigins)
    */
  ancestorOrigins: domStringList,
}

/**
[See UserActivation on MDN](https://developer.mozilla.org/docs/Web/API/UserActivation)
*/
type userActivation = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/UserActivation/hasBeenActive)
    */
  hasBeenActive: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/UserActivation/isActive)
    */
  isActive: bool,
}

/**
The state and the identity of the user agent. It allows scripts to query it and to register themselves to carry on some activities.
[See Navigator on MDN](https://developer.mozilla.org/docs/Web/API/Navigator)
*/
type navigator = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/clipboard)
    */
  clipboard: clipboard,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/credentials)
    */
  credentials: credentialsContainer,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/geolocation)
    */
  geolocation: geolocation,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/userActivation)
    */
  userActivation: userActivation,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/mediaCapabilities)
    */
  mediaCapabilities: mediaCapabilities,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/mediaDevices)
    */
  mediaDevices: mediaDevices,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/mediaSession)
    */
  mediaSession: mediaSession,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/permissions)
    */
  permissions: permissions,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/maxTouchPoints)
    */
  maxTouchPoints: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/wakeLock)
    */
  wakeLock: wakeLock,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/serviceWorker)
    */
  serviceWorker: serviceWorkerContainer,
}

/**
A set of space-separated tokens. Such a set is returned by Element.classList, HTMLLinkElement.relList, HTMLAnchorElement.relList, HTMLAreaElement.relList, HTMLIframeElement.sandbox, or HTMLOutputElement.htmlFor. It is indexed beginning with 0 as with JavaScript Array objects. DOMTokenList is always case-sensitive.
[See DOMTokenList on MDN](https://developer.mozilla.org/docs/Web/API/DOMTokenList)
*/
type domTokenList = {
  /**
    Returns the number of tokens.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMTokenList/length)
    */
  length: int,
  /**
    Returns the associated set as string.

Can be set, to change the associated attribute.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMTokenList/value)
    */
  mutable value: string,
}

/**
A collection of Attr objects. Objects inside a NamedNodeMap are not in any particular order, unlike NodeList, although they may be accessed by an index as in an array.
[See NamedNodeMap on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap)
*/
type namedNodeMap = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/length)
    */
  length: int,
}

/**
[See FragmentDirective on MDN](https://developer.mozilla.org/docs/Web/API/FragmentDirective)
*/
type fragmentDirective = {}

/**
[See CustomElementRegistry on MDN](https://developer.mozilla.org/docs/Web/API/CustomElementRegistry)
*/
type customElementRegistry = {}

/**
[See BarProp on MDN](https://developer.mozilla.org/docs/Web/API/BarProp)
*/
type barProp = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/BarProp/visible)
    */
  visible: bool,
}

/**
[See ScreenOrientation on MDN](https://developer.mozilla.org/docs/Web/API/ScreenOrientation)
*/
type screenOrientation = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ScreenOrientation/type)
    */
  @as("type")
  type_: orientationType,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ScreenOrientation/angle)
    */
  angle: int,
}

/**
A screen, usually the one on which the current window is being rendered, and is obtained using window.screen.
[See Screen on MDN](https://developer.mozilla.org/docs/Web/API/Screen)
*/
type screen = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Screen/availWidth)
    */
  availWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Screen/availHeight)
    */
  availHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Screen/width)
    */
  width: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Screen/height)
    */
  height: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Screen/colorDepth)
    */
  colorDepth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Screen/pixelDepth)
    */
  pixelDepth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Screen/orientation)
    */
  orientation: screenOrientation,
}

@unboxed
type vibratePattern =
  | Int(int)
  | IntArray(array<int>)

type htmlMediaElement = any

/**
[See AnimationTimeline on MDN](https://developer.mozilla.org/docs/Web/API/AnimationTimeline)
*/
type rec animationTimeline = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnimationTimeline/currentTime)
    */
  currentTime: Null.t<float>,
}

/**
[See DocumentTimeline on MDN](https://developer.mozilla.org/docs/Web/API/DocumentTimeline)
*/
and documentTimeline = {
  // Base properties from AnimationTimeline
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnimationTimeline/currentTime)
    */
  currentTime: Null.t<float>,
  // End base properties from AnimationTimeline
}

/**
Node is an interface from which a number of DOM API object types inherit. It allows those types to be treated similarly; for example, inheriting the same set of methods, or being tested in the same way.
[See Node on MDN](https://developer.mozilla.org/docs/Web/API/Node)
*/
type rec node = {
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
  childNodes: nodeListOf<node>,
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
NodeList objects are collections of nodes, usually returned by properties such as Node.childNodes and methods such as document.querySelectorAll().
[See NodeList on MDN](https://developer.mozilla.org/docs/Web/API/NodeList)
*/
and nodeList = {
  /**
    Returns the number of nodes in the collection.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NodeList/length)
    */
  length: int,
}

and nodeListOf<'tNode> = {
  // Base properties from NodeList
  /**
    Returns the number of nodes in the collection.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NodeList/length)
    */
  length: int,
  // End base properties from NodeList
}

/**
Element is the most general base class from which all objects in a Document inherit. It only has methods and properties common to all kinds of elements. More specific classes inherit from Element.
[See Element on MDN](https://developer.mozilla.org/docs/Web/API/Element)
*/
and element = {
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
  childNodes: nodeListOf<node>,
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
  classList: domTokenList,
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
  part: domTokenList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollTop)
    */
  mutable scrollTop: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollLeft)
    */
  mutable scrollLeft: any,
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
  mutable innerHTML: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/outerHTML)
    */
  mutable outerHTML: unknown,
}

/**
[See ShadowRoot on MDN](https://developer.mozilla.org/docs/Web/API/ShadowRoot)
*/
and shadowRoot = {
  // Base properties from DocumentFragment
  // End base properties from DocumentFragment

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
  childNodes: nodeListOf<node>,
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
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ShadowRoot/mode)
    */
  mode: shadowRootMode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ShadowRoot/delegatesFocus)
    */
  delegatesFocus: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ShadowRoot/slotAssignment)
    */
  slotAssignment: slotAssignmentMode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ShadowRoot/clonable)
    */
  clonable: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ShadowRoot/serializable)
    */
  serializable: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ShadowRoot/host)
    */
  host: element,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ShadowRoot/innerHTML)
    */
  mutable innerHTML: unknown,
}

/**
A generic collection (array-like object similar to arguments) of elements (in document order) and offers methods and properties for selecting from the list.
[See HTMLCollection on MDN](https://developer.mozilla.org/docs/Web/API/HTMLCollection)
*/
and htmlCollection = {
  /**
    Sets or retrieves the number of objects in a collection.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLCollection/length)
    */
  length: int,
}

and htmlCollectionOf<'t> = {
  // Base properties from HTMLCollection
  /**
    Sets or retrieves the number of objects in a collection.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLCollection/length)
    */
  length: int,
  // End base properties from HTMLCollection
}

/**
A collection of HTML form control elements. 
[See HTMLFormControlsCollection on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormControlsCollection)
*/
and htmlFormControlsCollection = {
  // Base properties from HTMLCollection
  /**
    Sets or retrieves the number of objects in a collection.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLCollection/length)
    */
  length: int,
  // End base properties from HTMLCollection
}

/**
Any HTML element. Some elements directly implement this interface, while others implement it via an interface that inherits it.
[See HTMLElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement)
*/
and htmlElement = {
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
  classList: domTokenList,
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
  part: domTokenList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollTop)
    */
  mutable scrollTop: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollLeft)
    */
  mutable scrollLeft: any,
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
  mutable innerHTML: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/outerHTML)
    */
  mutable outerHTML: unknown,
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
  childNodes: nodeListOf<node>,
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
}

/**
Contains the descriptive information, or metadata, for a document. This object inherits all of the properties and methods described in the HTMLElement interface.
[See HTMLHeadElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLHeadElement)
*/
and htmlHeadElement = {
  // Base properties from HTMLElement
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
  // End base properties from HTMLElement

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
  classList: domTokenList,
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
  part: domTokenList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollTop)
    */
  mutable scrollTop: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollLeft)
    */
  mutable scrollLeft: any,
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
  mutable innerHTML: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/outerHTML)
    */
  mutable outerHTML: unknown,
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
  childNodes: nodeListOf<node>,
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
}

/**
A <form> element in the DOM; it allows access to and in some cases modification of aspects of the form, as well as access to its component elements.
[See HTMLFormElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement)
*/
and htmlFormElement = {
  // Base properties from HTMLElement
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
  // End base properties from HTMLElement

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
  classList: domTokenList,
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
  part: domTokenList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollTop)
    */
  mutable scrollTop: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollLeft)
    */
  mutable scrollLeft: any,
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
  mutable innerHTML: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/outerHTML)
    */
  mutable outerHTML: unknown,
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
  childNodes: nodeListOf<node>,
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
    Sets or retrieves a list of character encodings for input data that must be accepted by the server processing the form.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/acceptCharset)
    */
  mutable acceptCharset: string,
  /**
    Sets or retrieves the URL to which the form content is sent for processing.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/action)
    */
  mutable action: string,
  /**
    Specifies whether autocomplete is applied to an editable text field.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/autocomplete)
    */
  mutable autocomplete: autoFillBase,
  /**
    Sets or retrieves the encoding type for the form.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/enctype)
    */
  mutable enctype: string,
  /**
    Sets or retrieves the MIME encoding for the form.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/encoding)
    */
  mutable encoding: string,
  /**
    Sets or retrieves how to send the form data to the server.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/method)
    */
  mutable method: string,
  /**
    Sets or retrieves the name of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/name)
    */
  mutable name: string,
  /**
    Sets or retrieves the window or frame at which to target content.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/target)
    */
  mutable target: string,
  /**
    Retrieves a collection, in source order, of all controls in a given form.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/elements)
    */
  elements: htmlFormControlsCollection,
  /**
    Sets or retrieves the number of objects in a collection.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/length)
    */
  length: int,
}

/**
Provides special properties and methods for manipulating <img> elements.
[See HTMLImageElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement)
*/
and htmlImageElement = {
  // Base properties from HTMLElement
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
  // End base properties from HTMLElement

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
  classList: domTokenList,
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
  part: domTokenList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollTop)
    */
  mutable scrollTop: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollLeft)
    */
  mutable scrollLeft: any,
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
  mutable innerHTML: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/outerHTML)
    */
  mutable outerHTML: unknown,
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
  childNodes: nodeListOf<node>,
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
    Sets or retrieves a text alternative to the graphic.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/alt)
    */
  mutable alt: string,
  /**
    The address or URL of the a media resource that is to be considered.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/src)
    */
  mutable src: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/srcset)
    */
  mutable srcset: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/sizes)
    */
  mutable sizes: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/crossOrigin)
    */
  mutable crossOrigin: Null.t<string>,
  /**
    Sets or retrieves the URL, often with a bookmark extension (#name), to use as a client-side image map.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/useMap)
    */
  mutable useMap: string,
  /**
    Sets or retrieves whether the image is a server-side image map.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/isMap)
    */
  mutable isMap: bool,
  /**
    Sets or retrieves the width of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/width)
    */
  mutable width: int,
  /**
    Sets or retrieves the height of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/height)
    */
  mutable height: int,
  /**
    The original width of the image resource before sizing.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/naturalWidth)
    */
  naturalWidth: int,
  /**
    The original height of the image resource before sizing.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/naturalHeight)
    */
  naturalHeight: int,
  /**
    Retrieves whether the object is fully loaded.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/complete)
    */
  complete: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/currentSrc)
    */
  currentSrc: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/referrerPolicy)
    */
  mutable referrerPolicy: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/decoding)
    */
  mutable decoding: string,
  /**
    Sets or retrieves the policy for loading image elements that are outside the viewport.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/loading)
    */
  mutable loading: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/fetchPriority)
    */
  mutable fetchPriority: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/x)
    */
  x: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/y)
    */
  y: int,
}

/**
Provides special properties (beyond the regular HTMLElement interface it also has available to it by inheritance) for manipulating <embed> elements.
[See HTMLEmbedElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLEmbedElement)
*/
and htmlEmbedElement = {
  // Base properties from HTMLElement
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
  // End base properties from HTMLElement

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
  classList: domTokenList,
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
  part: domTokenList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollTop)
    */
  mutable scrollTop: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollLeft)
    */
  mutable scrollLeft: any,
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
  mutable innerHTML: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/outerHTML)
    */
  mutable outerHTML: unknown,
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
  childNodes: nodeListOf<node>,
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
    Sets or retrieves a URL to be loaded by the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLEmbedElement/src)
    */
  mutable src: string,
  /**
    Sets or retrieves the width of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLEmbedElement/width)
    */
  mutable width: string,
  /**
    Sets or retrieves the height of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLEmbedElement/height)
    */
  mutable height: string,
}

/**
Hyperlink elements and provides special properties and methods (beyond those of the regular HTMLElement object interface that they inherit from) for manipulating the layout and presentation of such elements.
[See HTMLAnchorElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAnchorElement)
*/
and htmlAnchorElement = {
  // Base properties from HTMLElement
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
  // End base properties from HTMLElement

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
  classList: domTokenList,
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
  part: domTokenList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollTop)
    */
  mutable scrollTop: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollLeft)
    */
  mutable scrollLeft: any,
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
  mutable innerHTML: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/outerHTML)
    */
  mutable outerHTML: unknown,
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
  childNodes: nodeListOf<node>,
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
    Sets or retrieves the window or frame at which to target content.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAnchorElement/target)
    */
  mutable target: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAnchorElement/download)
    */
  mutable download: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAnchorElement/ping)
    */
  mutable ping: string,
  /**
    Sets or retrieves the relationship between the object and the destination of the link.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAnchorElement/rel)
    */
  mutable rel: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAnchorElement/relList)
    */
  relList: domTokenList,
  /**
    Sets or retrieves the language code of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAnchorElement/hreflang)
    */
  mutable hreflang: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAnchorElement/type)
    */
  @as("type")
  mutable type_: string,
  /**
    Retrieves or sets the text of the object as a string.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAnchorElement/text)
    */
  mutable text: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAnchorElement/referrerPolicy)
    */
  mutable referrerPolicy: string,
}

/**
Provides special properties and methods (beyond those of the regular object HTMLElement interface it also has available to it by inheritance) for manipulating the layout and presentation of <area> elements.
[See HTMLAreaElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAreaElement)
*/
and htmlAreaElement = {
  // Base properties from HTMLElement
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
  // End base properties from HTMLElement

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
  classList: domTokenList,
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
  part: domTokenList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollTop)
    */
  mutable scrollTop: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollLeft)
    */
  mutable scrollLeft: any,
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
  mutable innerHTML: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/outerHTML)
    */
  mutable outerHTML: unknown,
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
  childNodes: nodeListOf<node>,
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
    Sets or retrieves the window or frame at which to target content.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAreaElement/target)
    */
  mutable target: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAreaElement/ping)
    */
  mutable ping: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAreaElement/rel)
    */
  mutable rel: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAreaElement/relList)
    */
  relList: domTokenList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAreaElement/referrerPolicy)
    */
  mutable referrerPolicy: string,
}

/**
HTML <script> elements expose the HTMLScriptElement interface, which provides special properties and methods for manipulating the behavior and execution of <script> elements (beyond the inherited HTMLElement interface).
[See HTMLScriptElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLScriptElement)
*/
and htmlScriptElement = {
  // Base properties from HTMLElement
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
  // End base properties from HTMLElement

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
  classList: domTokenList,
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
  part: domTokenList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollTop)
    */
  mutable scrollTop: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollLeft)
    */
  mutable scrollLeft: any,
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
  mutable innerHTML: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/outerHTML)
    */
  mutable outerHTML: unknown,
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
  childNodes: nodeListOf<node>,
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
    Retrieves the URL to an external file that contains the source code or data.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLScriptElement/src)
    */
  mutable src: string,
  /**
    Sets or retrieves the MIME type for the associated scripting engine.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLScriptElement/type)
    */
  @as("type")
  mutable type_: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLScriptElement/noModule)
    */
  mutable noModule: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLScriptElement/async)
    */
  mutable async: bool,
  /**
    Sets or retrieves the status of the script.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLScriptElement/defer)
    */
  mutable defer: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLScriptElement/crossOrigin)
    */
  mutable crossOrigin: Null.t<string>,
  /**
    Retrieves or sets the text of the object as a string.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLScriptElement/text)
    */
  mutable text: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLScriptElement/integrity)
    */
  mutable integrity: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLScriptElement/referrerPolicy)
    */
  mutable referrerPolicy: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLScriptElement/fetchPriority)
    */
  mutable fetchPriority: string,
}

/**
An object providing methods which are not dependent on any particular document. Such an object is returned by the Document.implementation property.
[See DOMImplementation on MDN](https://developer.mozilla.org/docs/Web/API/DOMImplementation)
*/
and domImplementation = {}

/**
A Node containing a doctype.
[See DocumentType on MDN](https://developer.mozilla.org/docs/Web/API/DocumentType)
*/
and documentType = {
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
  childNodes: nodeListOf<node>,
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
Any web page loaded in the browser and serves as an entry point into the web page's content, which is the DOM tree.
[See Document on MDN](https://developer.mozilla.org/docs/Web/API/Document)
*/
and document = {
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
  childNodes: nodeListOf<node>,
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
    Gets the implementation object of the current document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/implementation)
    */
  implementation: domImplementation,
  /**
    Sets or gets the URL for the current document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/URL)
    */
  @as("URL")
  uRL: string,
  /**
    Returns document's URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/documentURI)
    */
  documentURI: string,
  /**
    Gets a value that indicates whether standards-compliant mode is switched on for the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/compatMode)
    */
  compatMode: string,
  /**
    Returns document's encoding.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/characterSet)
    */
  characterSet: string,
  /**
    Returns document's content type.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/contentType)
    */
  contentType: string,
  /**
    Gets an object representing the document type declaration associated with the current document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/doctype)
    */
  doctype: Null.t<documentType>,
  /**
    Gets a reference to the root node of the document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/documentElement)
    */
  documentElement: htmlElement,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/scrollingElement)
    */
  scrollingElement: Null.t<element>,
  /**
    Returns true if document has the ability to display elements fullscreen and fullscreen is supported, or false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/fullscreenEnabled)
    */
  fullscreenEnabled: bool,
  /**
    Contains information about the current URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/location)
    */
  mutable location: location,
  /**
    Gets the URL of the location that referred the user to the current page.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/referrer)
    */
  referrer: string,
  /**
    Returns the HTTP cookies that apply to the Document. If there are no cookies or cookies can't be applied to this resource, the empty string will be returned.

Can be set, to add a new cookie to the element's set of HTTP cookies.

If the contents are sandboxed into a unique origin (e.g. in an iframe with the sandbox attribute), a "SecurityError" DOMException will be thrown on getting and setting.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/cookie)
    */
  mutable cookie: string,
  /**
    Gets the date that the page was last modified, if the page supplies one.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/lastModified)
    */
  lastModified: string,
  /**
    Retrieves a value that indicates the current state of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/readyState)
    */
  readyState: documentReadyState,
  /**
    Contains the title of the document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/title)
    */
  mutable title: string,
  /**
    Sets or retrieves a value that indicates the reading order of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/dir)
    */
  mutable dir: string,
  /**
    Specifies the beginning and end of the document body.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/body)
    */
  mutable body: htmlElement,
  /**
    Returns the head element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/head)
    */
  head: htmlHeadElement,
  /**
    Retrieves a collection, in source order, of img objects in the document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/images)
    */
  images: htmlCollectionOf<htmlImageElement>,
  /**
    Retrieves a collection of all embed objects in the document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/embeds)
    */
  embeds: htmlCollectionOf<htmlEmbedElement>,
  /**
    Return an HTMLCollection of the embed elements in the Document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/plugins)
    */
  plugins: htmlCollectionOf<htmlEmbedElement>,
  /**
    Retrieves a collection of all a objects that specify the href property and all area objects in the document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/links)
    */
  links: htmlCollectionOf<htmlElement>,
  /**
    Retrieves a collection, in source order, of all form objects in the document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/forms)
    */
  forms: htmlCollectionOf<htmlFormElement>,
  /**
    Retrieves a collection of all script objects in the document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/scripts)
    */
  scripts: htmlCollectionOf<htmlScriptElement>,
  /**
    Returns the script element, or the SVG script element, that is currently executing, as long as the element represents a classic script. In the case of reentrant script execution, returns the one that most recently started executing amongst those that have not yet finished executing.

Returns null if the Document is not currently executing a script or SVG script element (e.g., because the running script is an event handler, or a timeout), or if the currently executing script or SVG script element represents a module script.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/currentScript)
    */
  currentScript: Null.t<htmlElement>,
  /**
    Returns the Window object of the active document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/defaultView)
    */
  defaultView: Null.t<window>,
  /**
    Sets or gets a value that indicates whether the document can be edited.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/designMode)
    */
  mutable designMode: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/hidden)
    */
  hidden: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/visibilityState)
    */
  visibilityState: documentVisibilityState,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/pictureInPictureEnabled)
    */
  pictureInPictureEnabled: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/fragmentDirective)
    */
  fragmentDirective: fragmentDirective,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/timeline)
    */
  timeline: documentTimeline,
}

/**
A window containing a DOM document; the document property points to the DOM document loaded in that window.
[See Window on MDN](https://developer.mozilla.org/docs/Web/API/Window)
*/
and window = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/window)
    */
  window: window,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/self)
    */
  self: window,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/document)
    */
  document: document,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/name)
    */
  mutable name: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/location)
    */
  mutable location: location,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/history)
    */
  history: history,
  /**
    Defines a new custom element, mapping the given name to the given constructor as an autonomous custom element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/customElements)
    */
  customElements: customElementRegistry,
  /**
    Returns true if the location bar is visible; otherwise, returns false.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/locationbar)
    */
  locationbar: barProp,
  /**
    Returns true if the menu bar is visible; otherwise, returns false.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/menubar)
    */
  menubar: barProp,
  /**
    Returns true if the personal bar is visible; otherwise, returns false.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/personalbar)
    */
  personalbar: barProp,
  /**
    Returns true if the scrollbars are visible; otherwise, returns false.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/scrollbars)
    */
  scrollbars: barProp,
  /**
    Returns true if the status bar is visible; otherwise, returns false.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/statusbar)
    */
  statusbar: barProp,
  /**
    Returns true if the toolbar is visible; otherwise, returns false.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/toolbar)
    */
  toolbar: barProp,
  /**
    Returns true if the window has been closed, false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/closed)
    */
  closed: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/frames)
    */
  frames: window,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/length)
    */
  length: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/top)
    */
  top: Null.t<window>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/opener)
    */
  mutable opener: any,
  /**
    Refers to either the parent WindowProxy, or itself.

It can rarely be null e.g. for contentWindow of an iframe that is already removed from the parent.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/parent)
    */
  parent: window,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/frameElement)
    */
  frameElement: Null.t<element>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/navigator)
    */
  navigator: navigator,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/screen)
    */
  screen: screen,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/visualViewport)
    */
  visualViewport: Null.t<visualViewport>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/innerWidth)
    */
  innerWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/innerHeight)
    */
  innerHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/scrollX)
    */
  scrollX: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/scrollY)
    */
  scrollY: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/screenX)
    */
  screenX: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/screenLeft)
    */
  screenLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/screenY)
    */
  screenY: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/screenTop)
    */
  screenTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/outerWidth)
    */
  outerWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/outerHeight)
    */
  outerHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/devicePixelRatio)
    */
  devicePixelRatio: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/speechSynthesis)
    */
  speechSynthesis: speechSynthesis,
}

/**
A MutationRecord represents an individual DOM mutation. It is the object that is passed to MutationObserver's callback.
[See MutationRecord on MDN](https://developer.mozilla.org/docs/Web/API/MutationRecord)
*/
and mutationRecord = {
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
  target: node,
  /**
    Return the nodes added and removed respectively.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MutationRecord/addedNodes)
    */
  addedNodes: nodeList,
  /**
    Return the nodes added and removed respectively.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MutationRecord/removedNodes)
    */
  removedNodes: nodeList,
  /**
    Return the previous and next sibling respectively of the added or removed nodes, and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MutationRecord/previousSibling)
    */
  previousSibling: Null.t<node>,
  /**
    Return the previous and next sibling respectively of the added or removed nodes, and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MutationRecord/nextSibling)
    */
  nextSibling: Null.t<node>,
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
A DOM element's attribute as an object. In most DOM methods, you will probably directly retrieve the attribute as a string (e.g., Element.getAttribute(), but certain functions (e.g., Element.getAttributeNode()) or means of iterating give Attr types.
[See Attr on MDN](https://developer.mozilla.org/docs/Web/API/Attr)
*/
and attr = {
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
  childNodes: nodeListOf<node>,
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
  ownerElement: Null.t<element>,
}

/**
The CharacterData abstract interface represents a Node object that contains characters. This is an abstract interface, meaning there aren't any object of type CharacterData: it is implemented by other interfaces, like Text, Comment, or ProcessingInstruction which aren't abstract.
[See CharacterData on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData)
*/
and characterData = {
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
  childNodes: nodeListOf<node>,
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
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/data)
    */
  mutable data: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/length)
    */
  length: int,
}

/**
[See StylePropertyMapReadOnly on MDN](https://developer.mozilla.org/docs/Web/API/StylePropertyMapReadOnly)
*/
type stylePropertyMapReadOnly = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StylePropertyMapReadOnly/size)
    */
  size: int,
}

/**
[See DOMRectReadOnly on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly)
*/
type domRectReadOnly = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly/x)
    */
  x: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly/y)
    */
  y: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly/width)
    */
  width: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly/height)
    */
  height: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly/top)
    */
  top: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly/right)
    */
  right: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly/bottom)
    */
  bottom: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly/left)
    */
  left: any,
}

/**
[See DOMRect on MDN](https://developer.mozilla.org/docs/Web/API/DOMRect)
*/
type domRect = {
  ...domRectReadOnly,
}

type domRectList = {}

/**
The validity states that an element can be in, with respect to constraint validation. Together, they help explain why an element's value fails to validate, if it's not valid.
[See ValidityState on MDN](https://developer.mozilla.org/docs/Web/API/ValidityState)
*/
type validityState = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ValidityState/valueMissing)
    */
  valueMissing: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ValidityState/typeMismatch)
    */
  typeMismatch: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ValidityState/patternMismatch)
    */
  patternMismatch: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ValidityState/tooLong)
    */
  tooLong: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ValidityState/tooShort)
    */
  tooShort: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ValidityState/rangeUnderflow)
    */
  rangeUnderflow: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ValidityState/rangeOverflow)
    */
  rangeOverflow: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ValidityState/stepMismatch)
    */
  stepMismatch: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ValidityState/badInput)
    */
  badInput: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ValidityState/customError)
    */
  customError: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ValidityState/valid)
    */
  valid: bool,
}

/**
[See CustomStateSet on MDN](https://developer.mozilla.org/docs/Web/API/CustomStateSet)
*/
type customStateSet = {}

/**
[See ElementInternals on MDN](https://developer.mozilla.org/docs/Web/API/ElementInternals)
*/
type elementInternals = {
  /**
    Returns the ShadowRoot for internals's target element, if the target element is a shadow host, or null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ElementInternals/shadowRoot)
    */
  shadowRoot: Null.t<shadowRoot>,
  /**
    Returns the form owner of internals's target element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ElementInternals/form)
    */
  form: Null.t<htmlFormElement>,
  /**
    Returns true if internals's target element will be validated when the form is submitted; false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ElementInternals/willValidate)
    */
  willValidate: bool,
  /**
    Returns the ValidityState object for internals's target element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ElementInternals/validity)
    */
  validity: validityState,
  /**
    Returns the error message that would be shown to the user if internals's target element was to be checked for validity.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ElementInternals/validationMessage)
    */
  validationMessage: string,
  /**
    Returns a NodeList of all the label elements that internals's target element is associated with.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ElementInternals/labels)
    */
  labels: nodeList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ElementInternals/states)
    */
  states: customStateSet,
}

/**
An XML document. It inherits from the generic Document and does not add any specific methods or properties to it: nevertheless, several algorithms behave differently with the two types of documents.
[See XMLDocument on MDN](https://developer.mozilla.org/docs/Web/API/XMLDocument)
*/
type xmlDocument = {
  ...document,
}

/**
A minimal document object that has no parent. It is used as a lightweight version of Document that stores a segment of a document structure comprised of nodes just like a standard document. The key difference is that because the document fragment isn't part of the active document tree structure, changes made to the fragment don't affect the document, cause reflow, or incur any performance impact that can occur when changes are made.
[See DocumentFragment on MDN](https://developer.mozilla.org/docs/Web/API/DocumentFragment)
*/
type documentFragment = {
  ...node,
}

/**
The textual content of Element or Attr. If an element has no markup within its content, it has a single child implementing Text that contains the element's text. However, if the element contains markup, it is parsed into information items and Text nodes that form its children.
[See Text on MDN](https://developer.mozilla.org/docs/Web/API/Text)
*/
type text = {
  ...characterData,
  /**
    Returns the combined data of all direct Text node siblings.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Text/wholeText)
    */
  wholeText: string,
}

/**
A CDATA section that can be used within XML to include extended portions of unescaped text. The symbols < and & don’t need escaping as they normally do when inside a CDATA section.
[See CDATASection on MDN](https://developer.mozilla.org/docs/Web/API/CDATASection)
*/
type cdataSection = {
  ...text,
}

/**
Textual notations within markup; although it is generally not visually shown, such comments are available to be read in the source view.
[See Comment on MDN](https://developer.mozilla.org/docs/Web/API/Comment)
*/
type comment = {
  ...characterData,
}

/**
A processing instruction embeds application-specific instructions in XML which can be ignored by other applications that don't recognize them.
[See ProcessingInstruction on MDN](https://developer.mozilla.org/docs/Web/API/ProcessingInstruction)
*/
type processingInstruction = {
  ...characterData,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ProcessingInstruction/target)
    */
  target: string,
}

/**
[See AbstractRange on MDN](https://developer.mozilla.org/docs/Web/API/AbstractRange)
*/
type abstractRange = {
  /**
    Returns range's start node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbstractRange/startContainer)
    */
  startContainer: node,
  /**
    Returns range's start offset.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbstractRange/startOffset)
    */
  startOffset: int,
  /**
    Returns range's end node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbstractRange/endContainer)
    */
  endContainer: node,
  /**
    Returns range's end offset.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbstractRange/endOffset)
    */
  endOffset: int,
  /**
    Returns true if range is collapsed, and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbstractRange/collapsed)
    */
  collapsed: bool,
}

/**
A fragment of a document that can contain nodes and parts of text nodes.
[See Range on MDN](https://developer.mozilla.org/docs/Web/API/Range)
*/
type range = {
  ...abstractRange,
  /**
    Returns the node, furthest away from the document, that is an ancestor of both range's start node and end node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/commonAncestorContainer)
    */
  commonAncestorContainer: node,
}

type nodeFilter = {}

/**
An iterator over the members of a list of the nodes in a subtree of the DOM. The nodes will be returned in document order.
[See NodeIterator on MDN](https://developer.mozilla.org/docs/Web/API/NodeIterator)
*/
type nodeIterator = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NodeIterator/root)
    */
  root: node,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NodeIterator/referenceNode)
    */
  referenceNode: node,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NodeIterator/pointerBeforeReferenceNode)
    */
  pointerBeforeReferenceNode: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NodeIterator/whatToShow)
    */
  whatToShow: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NodeIterator/filter)
    */
  filter: Null.t<nodeFilter>,
}

/**
The nodes of a document subtree and a position within them.
[See TreeWalker on MDN](https://developer.mozilla.org/docs/Web/API/TreeWalker)
*/
type treeWalker = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TreeWalker/root)
    */
  root: node,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TreeWalker/whatToShow)
    */
  whatToShow: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TreeWalker/filter)
    */
  filter: Null.t<nodeFilter>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TreeWalker/currentNode)
    */
  mutable currentNode: node,
}

/**
[See CaretPosition on MDN](https://developer.mozilla.org/docs/Web/API/CaretPosition)
*/
type caretPosition = {}

/**
A Selection object represents the range of text selected by the user or the current position of the caret. To obtain a Selection object for examination or modification, call Window.getSelection().
[See Selection on MDN](https://developer.mozilla.org/docs/Web/API/Selection)
*/
type selection = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/anchorNode)
    */
  anchorNode: Null.t<node>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/anchorOffset)
    */
  anchorOffset: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/focusNode)
    */
  focusNode: Null.t<node>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/focusOffset)
    */
  focusOffset: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/isCollapsed)
    */
  isCollapsed: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/rangeCount)
    */
  rangeCount: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/type)
    */
  @as("type")
  type_: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/direction)
    */
  direction: string,
}

/**
Stores information on a media query applied to a document, and handles sending notifications to listeners when the media query state change (i.e. when the media query test starts or stops evaluating to true).
[See MediaQueryList on MDN](https://developer.mozilla.org/docs/Web/API/MediaQueryList)
*/
type mediaQueryList = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaQueryList/media)
    */
  media: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaQueryList/matches)
    */
  matches: bool,
}

/**
[See MediaList on MDN](https://developer.mozilla.org/docs/Web/API/MediaList)
*/
type mediaList = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaList/mediaText)
    */
  mutable mediaText: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaList/length)
    */
  length: int,
}

/**
[See IdleDeadline on MDN](https://developer.mozilla.org/docs/Web/API/IdleDeadline)
*/
type idleDeadline = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IdleDeadline/didTimeout)
    */
  didTimeout: bool,
}

/**
[See CSSStyleValue on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleValue)
*/
type cssStyleValue = {}

/**
A single style sheet. CSS style sheets will further implement the more specialized CSSStyleSheet interface.
[See StyleSheet on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet)
*/
type rec styleSheet = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/type)
    */
  @as("type")
  type_: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/href)
    */
  href: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/ownerNode)
    */
  ownerNode: Null.t<unknown>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/parentStyleSheet)
    */
  parentStyleSheet: Null.t<cssStyleSheet>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/title)
    */
  title: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/media)
    */
  media: mediaList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/disabled)
    */
  mutable disabled: bool,
}

/**
A single CSS style sheet. It inherits properties and methods from its parent, StyleSheet.
[See CSSStyleSheet on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleSheet)
*/
and cssStyleSheet = {
  // Base properties from StyleSheet
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/type)
    */
  @as("type")
  type_: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/href)
    */
  href: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/ownerNode)
    */
  ownerNode: Null.t<unknown>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/parentStyleSheet)
    */
  parentStyleSheet: Null.t<cssStyleSheet>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/title)
    */
  title: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/media)
    */
  media: mediaList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/disabled)
    */
  mutable disabled: bool,
  // End base properties from StyleSheet

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleSheet/ownerRule)
    */
  ownerRule: Null.t<cssRule>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleSheet/cssRules)
    */
  cssRules: cssRuleList,
}

/**
A single CSS rule. There are several types of rules, listed in the Type constants section below.
[See CSSRule on MDN](https://developer.mozilla.org/docs/Web/API/CSSRule)
*/
and cssRule = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSRule/cssText)
    */
  mutable cssText: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSRule/parentRule)
    */
  parentRule: Null.t<cssRule>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSRule/parentStyleSheet)
    */
  parentStyleSheet: Null.t<cssStyleSheet>,
}

/**
A CSSRuleList is an (indirect-modify only) array-like object containing an ordered collection of CSSRule objects.
[See CSSRuleList on MDN](https://developer.mozilla.org/docs/Web/API/CSSRuleList)
*/
and cssRuleList = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSRuleList/length)
    */
  length: int,
}

/**
An object that is a CSS declaration block, and exposes style information and various style-related methods and properties.
[See CSSStyleDeclaration on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleDeclaration)
*/
and cssStyleDeclaration = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleDeclaration/cssText)
    */
  mutable cssText: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleDeclaration/length)
    */
  length: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleDeclaration/parentRule)
    */
  parentRule: Null.t<cssRule>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/cx)
    */
  mutable cx: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/cy)
    */
  mutable cy: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/r)
    */
  mutable r: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/rx)
    */
  mutable rx: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/ry)
    */
  mutable ry: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/x)
    */
  mutable x: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/y)
    */
  mutable y: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/vector-effect)
    */
  mutable vectorEffect: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/d)
    */
  mutable d: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-anchor)
    */
  mutable textAnchor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/fill)
    */
  mutable fill: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/stroke)
    */
  mutable stroke: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/marker-start)
    */
  mutable markerStart: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/marker-mid)
    */
  mutable markerMid: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/marker-end)
    */
  mutable markerEnd: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/marker)
    */
  mutable marker: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/paint-order)
    */
  mutable paintOrder: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/color-interpolation)
    */
  mutable colorInterpolation: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/shape-rendering)
    */
  mutable shapeRendering: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-rendering)
    */
  mutable textRendering: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/pointer-events)
    */
  mutable pointerEvents: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/stop-color)
    */
  mutable stopColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/stop-opacity)
    */
  mutable stopOpacity: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/-webkit-text-fill-color)
    */
  mutable webkitTextFillColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/-webkit-text-stroke-color)
    */
  mutable webkitTextStrokeColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/-webkit-text-stroke-width)
    */
  mutable webkitTextStrokeWidth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/-webkit-text-stroke)
    */
  mutable webkitTextStroke: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/touch-action)
    */
  mutable touchAction: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/position-area)
    */
  mutable positionArea: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/top)
    */
  mutable top: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/left)
    */
  mutable left: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/right)
    */
  mutable right: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/bottom)
    */
  mutable bottom: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/justify-self)
    */
  mutable justifySelf: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/align-self)
    */
  mutable alignSelf: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/justify-items)
    */
  mutable justifyItems: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/align-items)
    */
  mutable alignItems: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/width)
    */
  mutable width: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/height)
    */
  mutable height: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/min-width)
    */
  mutable minWidth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/min-height)
    */
  mutable minHeight: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/max-width)
    */
  mutable maxWidth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/max-height)
    */
  mutable maxHeight: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/margin-top)
    */
  mutable marginTop: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/margin-left)
    */
  mutable marginLeft: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/margin-right)
    */
  mutable marginRight: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/margin-bottom)
    */
  mutable marginBottom: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/animation-duration)
    */
  mutable animationDuration: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/animation-composition)
    */
  mutable animationComposition: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/animation-name)
    */
  mutable animationName: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/animation-timing-function)
    */
  mutable animationTimingFunction: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/animation-iteration-count)
    */
  mutable animationIterationCount: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/animation-direction)
    */
  mutable animationDirection: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/animation-play-state)
    */
  mutable animationPlayState: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/animation-delay)
    */
  mutable animationDelay: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/animation-fill-mode)
    */
  mutable animationFillMode: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/animation)
    */
  mutable animation: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/all)
    */
  mutable all: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/container-type)
    */
  mutable containerType: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/container-name)
    */
  mutable containerName: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/container)
    */
  mutable container: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/contain)
    */
  mutable contain: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/content-visibility)
    */
  mutable contentVisibility: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-family)
    */
  mutable fontFamily: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-weight)
    */
  mutable fontWeight: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-style)
    */
  mutable fontStyle: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-size)
    */
  mutable fontSize: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-size-adjust)
    */
  mutable fontSizeAdjust: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font)
    */
  mutable font: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-synthesis-weight)
    */
  mutable fontSynthesisWeight: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-synthesis-style)
    */
  mutable fontSynthesisStyle: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-synthesis-small-caps)
    */
  mutable fontSynthesisSmallCaps: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-synthesis)
    */
  mutable fontSynthesis: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-kerning)
    */
  mutable fontKerning: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-variant-ligatures)
    */
  mutable fontVariantLigatures: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-variant-position)
    */
  mutable fontVariantPosition: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-variant-caps)
    */
  mutable fontVariantCaps: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-variant-numeric)
    */
  mutable fontVariantNumeric: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-variant-alternates)
    */
  mutable fontVariantAlternates: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-variant-east-asian)
    */
  mutable fontVariantEastAsian: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-variant)
    */
  mutable fontVariant: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-feature-settings)
    */
  mutable fontFeatureSettings: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-optical-sizing)
    */
  mutable fontOpticalSizing: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-variation-settings)
    */
  mutable fontVariationSettings: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-palette)
    */
  mutable fontPalette: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-stretch)
    */
  mutable fontStretch: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/object-fit)
    */
  mutable objectFit: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/clip-path)
    */
  mutable clipPath: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/clip-rule)
    */
  mutable clipRule: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/mask-image)
    */
  mutable maskImage: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/mask-mode)
    */
  mutable maskMode: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/mask-repeat)
    */
  mutable maskRepeat: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/mask-position)
    */
  mutable maskPosition: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/mask-clip)
    */
  mutable maskClip: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/mask-origin)
    */
  mutable maskOrigin: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/mask-size)
    */
  mutable maskSize: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/mask-composite)
    */
  mutable maskComposite: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/mask)
    */
  mutable mask: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/mask-type)
    */
  mutable maskType: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/transition-behavior)
    */
  mutable transitionBehavior: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/transition-property)
    */
  mutable transitionProperty: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/transition-duration)
    */
  mutable transitionDuration: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/transition-timing-function)
    */
  mutable transitionTimingFunction: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/transition-delay)
    */
  mutable transitionDelay: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/transition)
    */
  mutable transition: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/view-transition-name)
    */
  mutable viewTransitionName: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/zoom)
    */
  mutable zoom: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/filter)
    */
  mutable filter: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/color-interpolation-filters)
    */
  mutable colorInterpolationFilters: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/display)
    */
  mutable display: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-transform)
    */
  mutable textTransform: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/math-style)
    */
  mutable mathStyle: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/math-depth)
    */
  mutable mathDepth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/z-index)
    */
  mutable zIndex: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/page-break-before)
    */
  mutable pageBreakBefore: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/page-break-after)
    */
  mutable pageBreakAfter: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/page-break-inside)
    */
  mutable pageBreakInside: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/mix-blend-mode)
    */
  mutable mixBlendMode: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/isolation)
    */
  mutable isolation: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/background-blend-mode)
    */
  mutable backgroundBlendMode: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/align-content)
    */
  mutable alignContent: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/justify-content)
    */
  mutable justifyContent: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/place-content)
    */
  mutable placeContent: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/place-self)
    */
  mutable placeSelf: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/place-items)
    */
  mutable placeItems: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/row-gap)
    */
  mutable rowGap: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/column-gap)
    */
  mutable columnGap: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/gap)
    */
  mutable gap: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/background-repeat)
    */
  mutable backgroundRepeat: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/background-position)
    */
  mutable backgroundPosition: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/background-position-x)
    */
  mutable backgroundPositionX: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/background-position-y)
    */
  mutable backgroundPositionY: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/background-clip)
    */
  mutable backgroundClip: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/background-color)
    */
  mutable backgroundColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/background-image)
    */
  mutable backgroundImage: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/background-attachment)
    */
  mutable backgroundAttachment: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/background-origin)
    */
  mutable backgroundOrigin: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/background-size)
    */
  mutable backgroundSize: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/background)
    */
  mutable background: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-style)
    */
  mutable borderStyle: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-width)
    */
  mutable borderWidth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border)
    */
  mutable border: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-image-source)
    */
  mutable borderImageSource: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-image-slice)
    */
  mutable borderImageSlice: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-image-width)
    */
  mutable borderImageWidth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-image-outset)
    */
  mutable borderImageOutset: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-image-repeat)
    */
  mutable borderImageRepeat: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-image)
    */
  mutable borderImage: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-top-color)
    */
  mutable borderTopColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-right-color)
    */
  mutable borderRightColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-bottom-color)
    */
  mutable borderBottomColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-left-color)
    */
  mutable borderLeftColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-block-start-color)
    */
  mutable borderBlockStartColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-block-end-color)
    */
  mutable borderBlockEndColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-inline-start-color)
    */
  mutable borderInlineStartColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-inline-end-color)
    */
  mutable borderInlineEndColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-color)
    */
  mutable borderColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-block-color)
    */
  mutable borderBlockColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-inline-color)
    */
  mutable borderInlineColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-top-style)
    */
  mutable borderTopStyle: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-right-style)
    */
  mutable borderRightStyle: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-bottom-style)
    */
  mutable borderBottomStyle: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-left-style)
    */
  mutable borderLeftStyle: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-block-start-style)
    */
  mutable borderBlockStartStyle: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-block-end-style)
    */
  mutable borderBlockEndStyle: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-inline-start-style)
    */
  mutable borderInlineStartStyle: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-inline-end-style)
    */
  mutable borderInlineEndStyle: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-block-style)
    */
  mutable borderBlockStyle: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-inline-style)
    */
  mutable borderInlineStyle: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-top-width)
    */
  mutable borderTopWidth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-right-width)
    */
  mutable borderRightWidth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-bottom-width)
    */
  mutable borderBottomWidth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-left-width)
    */
  mutable borderLeftWidth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-block-start-width)
    */
  mutable borderBlockStartWidth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-block-end-width)
    */
  mutable borderBlockEndWidth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-inline-start-width)
    */
  mutable borderInlineStartWidth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-inline-end-width)
    */
  mutable borderInlineEndWidth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-block-width)
    */
  mutable borderBlockWidth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-inline-width)
    */
  mutable borderInlineWidth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-top)
    */
  mutable borderTop: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-right)
    */
  mutable borderRight: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-bottom)
    */
  mutable borderBottom: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-left)
    */
  mutable borderLeft: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-block-start)
    */
  mutable borderBlockStart: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-block-end)
    */
  mutable borderBlockEnd: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-inline-start)
    */
  mutable borderInlineStart: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-inline-end)
    */
  mutable borderInlineEnd: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-block)
    */
  mutable borderBlock: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-inline)
    */
  mutable borderInline: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-top-left-radius)
    */
  mutable borderTopLeftRadius: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-top-right-radius)
    */
  mutable borderTopRightRadius: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-bottom-right-radius)
    */
  mutable borderBottomRightRadius: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-bottom-left-radius)
    */
  mutable borderBottomLeftRadius: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-start-start-radius)
    */
  mutable borderStartStartRadius: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-start-end-radius)
    */
  mutable borderStartEndRadius: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-end-start-radius)
    */
  mutable borderEndStartRadius: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-end-end-radius)
    */
  mutable borderEndEndRadius: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-radius)
    */
  mutable borderRadius: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/box-shadow)
    */
  mutable boxShadow: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/margin)
    */
  mutable margin: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/padding-top)
    */
  mutable paddingTop: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/padding-right)
    */
  mutable paddingRight: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/padding-bottom)
    */
  mutable paddingBottom: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/padding-left)
    */
  mutable paddingLeft: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/padding)
    */
  mutable padding: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/break-before)
    */
  mutable breakBefore: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/break-after)
    */
  mutable breakAfter: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/break-inside)
    */
  mutable breakInside: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/orphans)
    */
  mutable orphans: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/widows)
    */
  mutable widows: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/box-decoration-break)
    */
  mutable boxDecorationBreak: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/color-scheme)
    */
  mutable colorScheme: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/forced-color-adjust)
    */
  mutable forcedColorAdjust: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/print-color-adjust)
    */
  mutable printColorAdjust: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/color)
    */
  mutable color: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/opacity)
    */
  mutable opacity: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/content)
    */
  mutable content: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/quotes)
    */
  mutable quotes: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/order)
    */
  mutable order: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/visibility)
    */
  mutable visibility: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/flex-direction)
    */
  mutable flexDirection: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/flex-wrap)
    */
  mutable flexWrap: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/flex-flow)
    */
  mutable flexFlow: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/flex)
    */
  mutable flex: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/flex-grow)
    */
  mutable flexGrow: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/flex-shrink)
    */
  mutable flexShrink: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/flex-basis)
    */
  mutable flexBasis: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/position)
    */
  mutable position: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/float)
    */
  mutable float: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/grid-template-columns)
    */
  mutable gridTemplateColumns: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/grid-template-rows)
    */
  mutable gridTemplateRows: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/grid-auto-flow)
    */
  mutable gridAutoFlow: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/grid-template-areas)
    */
  mutable gridTemplateAreas: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/grid-template)
    */
  mutable gridTemplate: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/grid-auto-columns)
    */
  mutable gridAutoColumns: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/grid-auto-rows)
    */
  mutable gridAutoRows: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/grid)
    */
  mutable grid: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/grid-row-start)
    */
  mutable gridRowStart: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/grid-column-start)
    */
  mutable gridColumnStart: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/grid-row-end)
    */
  mutable gridRowEnd: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/grid-column-end)
    */
  mutable gridColumnEnd: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/grid-row)
    */
  mutable gridRow: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/grid-column)
    */
  mutable gridColumn: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/grid-area)
    */
  mutable gridArea: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/object-position)
    */
  mutable objectPosition: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/image-rendering)
    */
  mutable imageRendering: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/dominant-baseline)
    */
  mutable dominantBaseline: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/vertical-align)
    */
  mutable verticalAlign: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/line-height)
    */
  mutable lineHeight: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/list-style-image)
    */
  mutable listStyleImage: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/list-style-type)
    */
  mutable listStyleType: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/list-style-position)
    */
  mutable listStylePosition: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/list-style)
    */
  mutable listStyle: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/counter-reset)
    */
  mutable counterReset: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/counter-increment)
    */
  mutable counterIncrement: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/counter-set)
    */
  mutable counterSet: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/block-size)
    */
  mutable blockSize: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/inline-size)
    */
  mutable inlineSize: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/min-block-size)
    */
  mutable minBlockSize: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/min-inline-size)
    */
  mutable minInlineSize: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/max-block-size)
    */
  mutable maxBlockSize: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/max-inline-size)
    */
  mutable maxInlineSize: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/margin-block-start)
    */
  mutable marginBlockStart: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/margin-block-end)
    */
  mutable marginBlockEnd: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/margin-inline-start)
    */
  mutable marginInlineStart: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/margin-inline-end)
    */
  mutable marginInlineEnd: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/margin-block)
    */
  mutable marginBlock: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/margin-inline)
    */
  mutable marginInline: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/padding-block-start)
    */
  mutable paddingBlockStart: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/padding-block-end)
    */
  mutable paddingBlockEnd: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/padding-inline-start)
    */
  mutable paddingInlineStart: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/padding-inline-end)
    */
  mutable paddingInlineEnd: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/padding-block)
    */
  mutable paddingBlock: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/padding-inline)
    */
  mutable paddingInline: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/column-span)
    */
  mutable columnSpan: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/column-width)
    */
  mutable columnWidth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/column-count)
    */
  mutable columnCount: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/columns)
    */
  mutable columns: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/column-rule-color)
    */
  mutable columnRuleColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/column-rule-style)
    */
  mutable columnRuleStyle: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/column-rule-width)
    */
  mutable columnRuleWidth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/column-rule)
    */
  mutable columnRule: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/column-fill)
    */
  mutable columnFill: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/overflow-clip-margin)
    */
  mutable overflowClipMargin: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-overflow)
    */
  mutable textOverflow: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/overflow-x)
    */
  mutable overflowX: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/overflow-y)
    */
  mutable overflowY: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/overflow)
    */
  mutable overflow: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-behavior)
    */
  mutable scrollBehavior: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scrollbar-gutter)
    */
  mutable scrollbarGutter: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/overscroll-behavior)
    */
  mutable overscrollBehavior: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/overscroll-behavior-x)
    */
  mutable overscrollBehaviorX: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/overscroll-behavior-y)
    */
  mutable overscrollBehaviorY: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/overscroll-behavior-inline)
    */
  mutable overscrollBehaviorInline: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/overscroll-behavior-block)
    */
  mutable overscrollBehaviorBlock: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/clear)
    */
  mutable clear: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/page)
    */
  mutable page: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/inset-block-start)
    */
  mutable insetBlockStart: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/inset-inline-start)
    */
  mutable insetInlineStart: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/inset-block-end)
    */
  mutable insetBlockEnd: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/inset-inline-end)
    */
  mutable insetInlineEnd: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/inset-block)
    */
  mutable insetBlock: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/inset-inline)
    */
  mutable insetInline: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/inset)
    */
  mutable inset: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/ruby-position)
    */
  mutable rubyPosition: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/ruby-align)
    */
  mutable rubyAlign: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/overflow-anchor)
    */
  mutable overflowAnchor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-snap-type)
    */
  mutable scrollSnapType: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-padding)
    */
  mutable scrollPadding: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-margin)
    */
  mutable scrollMargin: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-snap-align)
    */
  mutable scrollSnapAlign: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-snap-stop)
    */
  mutable scrollSnapStop: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-padding-top)
    */
  mutable scrollPaddingTop: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-padding-right)
    */
  mutable scrollPaddingRight: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-padding-bottom)
    */
  mutable scrollPaddingBottom: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-padding-left)
    */
  mutable scrollPaddingLeft: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-padding-inline-start)
    */
  mutable scrollPaddingInlineStart: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-padding-block-start)
    */
  mutable scrollPaddingBlockStart: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-padding-inline-end)
    */
  mutable scrollPaddingInlineEnd: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-padding-block-end)
    */
  mutable scrollPaddingBlockEnd: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-padding-block)
    */
  mutable scrollPaddingBlock: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-padding-inline)
    */
  mutable scrollPaddingInline: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-margin-top)
    */
  mutable scrollMarginTop: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-margin-right)
    */
  mutable scrollMarginRight: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-margin-bottom)
    */
  mutable scrollMarginBottom: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-margin-left)
    */
  mutable scrollMarginLeft: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-margin-block-start)
    */
  mutable scrollMarginBlockStart: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-margin-inline-start)
    */
  mutable scrollMarginInlineStart: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-margin-block-end)
    */
  mutable scrollMarginBlockEnd: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-margin-inline-end)
    */
  mutable scrollMarginInlineEnd: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-margin-block)
    */
  mutable scrollMarginBlock: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-margin-inline)
    */
  mutable scrollMarginInline: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scrollbar-color)
    */
  mutable scrollbarColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scrollbar-width)
    */
  mutable scrollbarWidth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/shape-outside)
    */
  mutable shapeOutside: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/shape-image-threshold)
    */
  mutable shapeImageThreshold: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/shape-margin)
    */
  mutable shapeMargin: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/aspect-ratio)
    */
  mutable aspectRatio: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/contain-intrinsic-width)
    */
  mutable containIntrinsicWidth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/contain-intrinsic-height)
    */
  mutable containIntrinsicHeight: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/contain-intrinsic-block-size)
    */
  mutable containIntrinsicBlockSize: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/contain-intrinsic-inline-size)
    */
  mutable containIntrinsicInlineSize: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/contain-intrinsic-size)
    */
  mutable containIntrinsicSize: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/box-sizing)
    */
  mutable boxSizing: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/table-layout)
    */
  mutable tableLayout: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-collapse)
    */
  mutable borderCollapse: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-spacing)
    */
  mutable borderSpacing: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/caption-side)
    */
  mutable captionSide: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/empty-cells)
    */
  mutable emptyCells: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/white-space)
    */
  mutable whiteSpace: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/white-space-collapse)
    */
  mutable whiteSpaceCollapse: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/tab-size)
    */
  mutable tabSize: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-wrap-mode)
    */
  mutable textWrapMode: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-wrap-style)
    */
  mutable textWrapStyle: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-wrap)
    */
  mutable textWrap: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/word-break)
    */
  mutable wordBreak: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/line-break)
    */
  mutable lineBreak: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/hyphens)
    */
  mutable hyphens: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/hyphenate-character)
    */
  mutable hyphenateCharacter: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/overflow-wrap)
    */
  mutable overflowWrap: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-align)
    */
  mutable textAlign: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-align-last)
    */
  mutable textAlignLast: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/word-spacing)
    */
  mutable wordSpacing: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/letter-spacing)
    */
  mutable letterSpacing: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-indent)
    */
  mutable textIndent: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-decoration-line)
    */
  mutable textDecorationLine: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-decoration-style)
    */
  mutable textDecorationStyle: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-decoration-color)
    */
  mutable textDecorationColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-decoration-thickness)
    */
  mutable textDecorationThickness: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-decoration)
    */
  mutable textDecoration: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-underline-position)
    */
  mutable textUnderlinePosition: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-underline-offset)
    */
  mutable textUnderlineOffset: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-decoration-skip-ink)
    */
  mutable textDecorationSkipInk: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-emphasis-style)
    */
  mutable textEmphasisStyle: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-emphasis-color)
    */
  mutable textEmphasisColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-emphasis)
    */
  mutable textEmphasis: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-emphasis-position)
    */
  mutable textEmphasisPosition: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-shadow)
    */
  mutable textShadow: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/translate)
    */
  mutable translate: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/rotate)
    */
  mutable rotate: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scale)
    */
  mutable scale: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/transform-style)
    */
  mutable transformStyle: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/perspective)
    */
  mutable perspective: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/perspective-origin)
    */
  mutable perspectiveOrigin: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/backface-visibility)
    */
  mutable backfaceVisibility: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/transform)
    */
  mutable transform: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/transform-origin)
    */
  mutable transformOrigin: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/transform-box)
    */
  mutable transformBox: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/outline)
    */
  mutable outline: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/outline-width)
    */
  mutable outlineWidth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/outline-style)
    */
  mutable outlineStyle: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/outline-color)
    */
  mutable outlineColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/outline-offset)
    */
  mutable outlineOffset: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/resize)
    */
  mutable resize: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/cursor)
    */
  mutable cursor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/caret-color)
    */
  mutable caretColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/user-select)
    */
  mutable userSelect: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/accent-color)
    */
  mutable accentColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/appearance)
    */
  mutable appearance: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/will-change)
    */
  mutable willChange: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/direction)
    */
  mutable direction: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/unicode-bidi)
    */
  mutable unicodeBidi: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/writing-mode)
    */
  mutable writingMode: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-orientation)
    */
  mutable textOrientation: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-combine-upright)
    */
  mutable textCombineUpright: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/fill-rule)
    */
  mutable fillRule: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/fill-opacity)
    */
  mutable fillOpacity: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/stroke-width)
    */
  mutable strokeWidth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/stroke-linecap)
    */
  mutable strokeLinecap: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/stroke-linejoin)
    */
  mutable strokeLinejoin: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/stroke-miterlimit)
    */
  mutable strokeMiterlimit: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/stroke-dasharray)
    */
  mutable strokeDasharray: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/stroke-dashoffset)
    */
  mutable strokeDashoffset: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/stroke-opacity)
    */
  mutable strokeOpacity: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/backdrop-filter)
    */
  mutable backdropFilter: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/offset-path)
    */
  mutable offsetPath: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/offset-distance)
    */
  mutable offsetDistance: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/offset-position)
    */
  mutable offsetPosition: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/offset-anchor)
    */
  mutable offsetAnchor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/offset-rotate)
    */
  mutable offsetRotate: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/offset)
    */
  mutable offset: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleDeclaration/cssFloat)
    */
  mutable cssFloat: string,
}

type elementDefinitionOptions = {mutable extends: string}

type documentTimelineOptions = {mutable originTime: float}

type getRootNodeOptions = {mutable composed: bool}

type shadowRootInit = {
  mutable mode: shadowRootMode,
  mutable delegatesFocus: bool,
  mutable slotAssignment: slotAssignmentMode,
  mutable serializable: bool,
}

type checkVisibilityOptions = {
  mutable checkOpacity: bool,
  mutable checkVisibilityCSS: bool,
  mutable contentVisibilityAuto: bool,
  mutable opacityProperty: bool,
  mutable visibilityProperty: bool,
}

type scrollOptions = {mutable behavior: scrollBehavior}

type scrollToOptions = {
  ...scrollOptions,
  mutable left: any,
  mutable top: any,
}

type fullscreenOptions = {mutable navigationUI: fullscreenNavigationUI}

type getHTMLOptions = {
  mutable serializableShadowRoots: bool,
  mutable shadowRoots: array<shadowRoot>,
}

type pointerLockOptions = {mutable unadjustedMovement: bool}

type caretPositionFromPointOptions = {mutable shadowRoots: array<shadowRoot>}

type idleRequestOptions = {mutable timeout: int}

type domRectInit = {
  mutable x: any,
  mutable y: any,
  mutable width: any,
  mutable height: any,
}

type validityStateFlags = {
  mutable valueMissing: bool,
  mutable typeMismatch: bool,
  mutable patternMismatch: bool,
  mutable tooLong: bool,
  mutable tooShort: bool,
  mutable rangeUnderflow: bool,
  mutable rangeOverflow: bool,
  mutable stepMismatch: bool,
  mutable badInput: bool,
  mutable customError: bool,
}

type cssStyleSheetInit = {
  mutable baseURL: string,
  mutable media: unknown,
  mutable disabled: bool,
}

type customElementConstructor = htmlElement

type viewTransitionUpdateCallback = Promise.t<any>

type idleRequestCallback = idleDeadline => unit

module DOMException = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMException)
    */
  @new
  external make: (string, string) => domException = "DOMException"
}

module DOMStringList = {
  /**
    Returns the string with index index from strings.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMStringList/item)
    */
  @send
  external item: (domStringList, int) => string = "item"

  /**
    Returns true if strings contains string, and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMStringList/contains)
    */
  @send
  external contains: (domStringList, string) => bool = "contains"
}

module Location = {
  /**
    Navigates to the given URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/assign)
    */
  @send
  external assign: (location, string) => unit = "assign"

  /**
    Removes the current page from the session history and navigates to the given URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/replace)
    */
  @send
  external replace: (location, string) => unit = "replace"

  /**
    Reloads the current page.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/reload)
    */
  @send
  external reload: location => unit = "reload"
}

module Navigator = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/sendBeacon)
    */
  @send
  external sendBeacon: (navigator, string, bodyInit) => bool = "sendBeacon"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/requestMediaKeySystemAccess)
    */
  @send
  external requestMediaKeySystemAccess: (
    navigator,
    string,
    array<mediaKeySystemConfiguration>,
  ) => Promise.t<mediaKeySystemAccess> = "requestMediaKeySystemAccess"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/getGamepads)
    */
  @send
  external getGamepads: navigator => array<gamepad> = "getGamepads"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/vibrate)
    */
  @send
  external vibrate: (navigator, vibratePattern) => bool = "vibrate"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/share)
    */
  @send
  external share: (navigator, shareData) => Promise.t<unit> = "share"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/canShare)
    */
  @send
  external canShare: (navigator, shareData) => bool = "canShare"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/requestMIDIAccess)
    */
  @send
  external requestMIDIAccess: (navigator, midiOptions) => Promise.t<midiAccess> =
    "requestMIDIAccess"
}

module DOMTokenList = {
  /**
    Returns the token with index index.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMTokenList/item)
    */
  @send
  external item: (domTokenList, int) => string = "item"

  /**
    Returns true if token is present, and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMTokenList/contains)
    */
  @send
  external contains: (domTokenList, string) => bool = "contains"

  /**
    Adds all arguments passed, except those already present.

Throws a "SyntaxError" DOMException if one of the arguments is the empty string.

Throws an "InvalidCharacterError" DOMException if one of the arguments contains any ASCII whitespace.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMTokenList/add)
    */
  @send
  external add: (domTokenList, string) => unit = "add"

  /**
    Removes arguments passed, if they are present.

Throws a "SyntaxError" DOMException if one of the arguments is the empty string.

Throws an "InvalidCharacterError" DOMException if one of the arguments contains any ASCII whitespace.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMTokenList/remove)
    */
  @send
  external remove: (domTokenList, string) => unit = "remove"

  /**
    If force is not given, "toggles" token, removing it if it's present and adding it if it's not present. If force is true, adds token (same as add()). If force is false, removes token (same as remove()).

Returns true if token is now present, and false otherwise.

Throws a "SyntaxError" DOMException if token is empty.

Throws an "InvalidCharacterError" DOMException if token contains any spaces.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMTokenList/toggle)
    */
  @send
  external toggle: (domTokenList, string, bool) => bool = "toggle"

  /**
    Replaces token with newToken.

Returns true if token was replaced with newToken, and false otherwise.

Throws a "SyntaxError" DOMException if one of the arguments is the empty string.

Throws an "InvalidCharacterError" DOMException if one of the arguments contains any ASCII whitespace.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMTokenList/replace)
    */
  @send
  external replace: (domTokenList, string, string) => bool = "replace"

  /**
    Returns true if token is in the associated attribute's supported tokens. Returns false otherwise.

Throws a TypeError if the associated attribute has no supported tokens defined.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMTokenList/supports)
    */
  @send
  external supports: (domTokenList, string) => bool = "supports"
}

module NamedNodeMap = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/item)
    */
  @send
  external item: (namedNodeMap, int) => attr = "item"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/getNamedItem)
    */
  @send
  external getNamedItem: (namedNodeMap, string) => attr = "getNamedItem"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/getNamedItemNS)
    */
  @send
  external getNamedItemNS: (namedNodeMap, string, string) => attr = "getNamedItemNS"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/setNamedItem)
    */
  @send
  external setNamedItem: (namedNodeMap, attr) => attr = "setNamedItem"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/setNamedItemNS)
    */
  @send
  external setNamedItemNS: (namedNodeMap, attr) => attr = "setNamedItemNS"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/removeNamedItem)
    */
  @send
  external removeNamedItem: (namedNodeMap, string) => attr = "removeNamedItem"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/removeNamedItemNS)
    */
  @send
  external removeNamedItemNS: (namedNodeMap, string, string) => attr = "removeNamedItemNS"
}

module CustomElementRegistry = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CustomElementRegistry/define)
    */
  @send
  external define: (
    customElementRegistry,
    string,
    customElementConstructor,
    elementDefinitionOptions,
  ) => unit = "define"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CustomElementRegistry/getName)
    */
  @send
  external getName: (customElementRegistry, customElementConstructor) => string = "getName"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CustomElementRegistry/whenDefined)
    */
  @send
  external whenDefined: (customElementRegistry, string) => Promise.t<customElementConstructor> =
    "whenDefined"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CustomElementRegistry/upgrade)
    */
  @send
  external upgrade: (customElementRegistry, node) => unit = "upgrade"
}

module ScreenOrientation = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ScreenOrientation/unlock)
    */
  @send
  external unlock: screenOrientation => unit = "unlock"
}

module DocumentTimeline = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DocumentTimeline)
    */
  @new
  external make: documentTimelineOptions => documentTimeline = "DocumentTimeline"
}

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

module NodeList = {
  /**
    Returns the node with index index from the collection. The nodes are sorted in tree order.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NodeList/item)
    */
  @send
  external item: (nodeList, int) => node = "item"

  /**
    Performs the specified action for each node in an list.
@param callbackfn  A function that accepts up to three arguments. forEach calls the callbackfn function one time for each element in the list.
@param thisArg  An object to which the this keyword can refer in the callbackfn function. If thisArg is omitted, undefined is used as the this value.
    */
  @send
  external forEach: (nodeList, node => int => nodeList => unit) => unit = "forEach"
}

module NodeListOf = {
  /**
    Performs the specified action for each node in an list.
@param callbackfn  A function that accepts up to three arguments. forEach calls the callbackfn function one time for each element in the list.
@param thisArg  An object to which the this keyword can refer in the callbackfn function. If thisArg is omitted, undefined is used as the this value.
    */
  @send
  external forEach: (nodeListOf<'tNode>, 'tNode => int => nodeListOf<'tNode> => unit) => unit =
    "forEach"
}

module Element = {
  /**
    Returns true if element has attributes, and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/hasAttributes)
    */
  @send
  external hasAttributes: element => bool = "hasAttributes"

  /**
    Returns the qualified names of all element's attributes. Can contain duplicates.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/getAttributeNames)
    */
  @send
  external getAttributeNames: element => array<string> = "getAttributeNames"

  /**
    Returns element's first attribute whose qualified name is qualifiedName, and null if there is no such attribute otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/getAttribute)
    */
  @send
  external getAttribute: (element, string) => string = "getAttribute"

  /**
    Returns element's attribute whose namespace is namespace and local name is localName, and null if there is no such attribute otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/getAttributeNS)
    */
  @send
  external getAttributeNS: (element, string, string) => string = "getAttributeNS"

  /**
    Sets the value of element's first attribute whose qualified name is qualifiedName to value.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/setAttribute)
    */
  @send
  external setAttribute: (element, string, string) => unit = "setAttribute"

  /**
    Sets the value of element's attribute whose namespace is namespace and local name is localName to value.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/setAttributeNS)
    */
  @send
  external setAttributeNS: (element, string, string, string) => unit = "setAttributeNS"

  /**
    Removes element's first attribute whose qualified name is qualifiedName.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/removeAttribute)
    */
  @send
  external removeAttribute: (element, string) => unit = "removeAttribute"

  /**
    Removes element's attribute whose namespace is namespace and local name is localName.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/removeAttributeNS)
    */
  @send
  external removeAttributeNS: (element, string, string) => unit = "removeAttributeNS"

  /**
    If force is not given, "toggles" qualifiedName, removing it if it is present and adding it if it is not present. If force is true, adds qualifiedName. If force is false, removes qualifiedName.

Returns true if qualifiedName is now present, and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/toggleAttribute)
    */
  @send
  external toggleAttribute: (element, string, bool) => bool = "toggleAttribute"

  /**
    Returns true if element has an attribute whose qualified name is qualifiedName, and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/hasAttribute)
    */
  @send
  external hasAttribute: (element, string) => bool = "hasAttribute"

  /**
    Returns true if element has an attribute whose namespace is namespace and local name is localName.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/hasAttributeNS)
    */
  @send
  external hasAttributeNS: (element, string, string) => bool = "hasAttributeNS"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/getAttributeNode)
    */
  @send
  external getAttributeNode: (element, string) => attr = "getAttributeNode"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/getAttributeNodeNS)
    */
  @send
  external getAttributeNodeNS: (element, string, string) => attr = "getAttributeNodeNS"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/setAttributeNode)
    */
  @send
  external setAttributeNode: (element, attr) => attr = "setAttributeNode"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/setAttributeNodeNS)
    */
  @send
  external setAttributeNodeNS: (element, attr) => attr = "setAttributeNodeNS"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/removeAttributeNode)
    */
  @send
  external removeAttributeNode: (element, attr) => attr = "removeAttributeNode"

  /**
    Creates a shadow root for element and returns it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/attachShadow)
    */
  @send
  external attachShadow: (element, shadowRootInit) => shadowRoot = "attachShadow"

  /**
    Returns the first (starting at element) inclusive ancestor that matches selectors, and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/closest)
    */
  @send
  external closest: (element, string) => 'e = "closest"

  /**
    Returns true if matching selectors against element's root yields element, and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/matches)
    */
  @send
  external matches: (element, string) => bool = "matches"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/getElementsByTagName)
    */
  @send
  external getElementsByTagName: (element, string) => htmlCollection = "getElementsByTagName"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/getElementsByTagNameNS)
    */
  @send
  external getElementsByTagNameNS: (element, string, string) => htmlCollectionOf<element> =
    "getElementsByTagNameNS"

  /**
    Returns a HTMLCollection of the elements in the object on which the method was invoked (a document or an element) that have all the classes given by classNames. The classNames argument is interpreted as a space-separated list of classes.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/getElementsByClassName)
    */
  @send
  external getElementsByClassName: (element, string) => htmlCollectionOf<element> =
    "getElementsByClassName"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/insertAdjacentElement)
    */
  @send
  external insertAdjacentElement: (element, insertPosition, element) => element =
    "insertAdjacentElement"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/insertAdjacentText)
    */
  @send
  external insertAdjacentText: (element, insertPosition, string) => unit = "insertAdjacentText"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/computedStyleMap)
    */
  @send
  external computedStyleMap: element => stylePropertyMapReadOnly = "computedStyleMap"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/getClientRects)
    */
  @send
  external getClientRects: element => domRectList = "getClientRects"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/getBoundingClientRect)
    */
  @send
  external getBoundingClientRect: element => domRect = "getBoundingClientRect"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/checkVisibility)
    */
  @send
  external checkVisibility: (element, checkVisibilityOptions) => bool = "checkVisibility"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollIntoView)
    */
  @send
  external scrollIntoView: (element, unknown) => unit = "scrollIntoView"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scroll)
    */
  @send
  external scroll: (element, scrollToOptions) => unit = "scroll"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollTo)
    */
  @send
  external scrollTo: (element, scrollToOptions) => unit = "scrollTo"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollBy)
    */
  @send
  external scrollBy: (element, scrollToOptions) => unit = "scrollBy"

  /**
    Displays element fullscreen and resolves promise when done.

When supplied, options's navigationUI member indicates whether showing navigation UI while in fullscreen is preferred or not. If set to "show", navigation simplicity is preferred over screen space, and if set to "hide", more screen space is preferred. User agents are always free to honor user preference over the application's. The default value "auto" indicates no application preference.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/requestFullscreen)
    */
  @send
  external requestFullscreen: (element, fullscreenOptions) => Promise.t<unit> = "requestFullscreen"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/setHTMLUnsafe)
    */
  @send
  external setHTMLUnsafe: (element, string) => unit = "setHTMLUnsafe"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/getHTML)
    */
  @send
  external getHTML: (element, getHTMLOptions) => string = "getHTML"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/insertAdjacentHTML)
    */
  @send
  external insertAdjacentHTML: (element, insertPosition, string) => unit = "insertAdjacentHTML"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/setPointerCapture)
    */
  @send
  external setPointerCapture: (element, int) => unit = "setPointerCapture"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/releasePointerCapture)
    */
  @send
  external releasePointerCapture: (element, int) => unit = "releasePointerCapture"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/hasPointerCapture)
    */
  @send
  external hasPointerCapture: (element, int) => bool = "hasPointerCapture"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/requestPointerLock)
    */
  @send
  external requestPointerLock: (element, pointerLockOptions) => Promise.t<unit> =
    "requestPointerLock"
}

module ShadowRoot = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ShadowRoot/setHTMLUnsafe)
    */
  @send
  external setHTMLUnsafe: (shadowRoot, string) => unit = "setHTMLUnsafe"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ShadowRoot/getHTML)
    */
  @send
  external getHTML: (shadowRoot, getHTMLOptions) => string = "getHTML"
}

module HTMLCollection = {
  /**
    Retrieves an object from various collections.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLCollection/item)
    */
  @send
  external item: (htmlCollection, int) => element = "item"

  /**
    Retrieves a select object or an object from an options collection.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLCollection/namedItem)
    */
  @send
  external namedItem: (htmlCollection, string) => element = "namedItem"
}

module HTMLCollectionOf = {}

module HTMLFormControlsCollection = {}

module HTMLElement = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement)
    */
  @new
  external make: unit => htmlElement = "HTMLElement"
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/click)
    */
  @send
  external click: htmlElement => unit = "click"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/attachInternals)
    */
  @send
  external attachInternals: htmlElement => elementInternals = "attachInternals"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/showPopover)
    */
  @send
  external showPopover: htmlElement => unit = "showPopover"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/hidePopover)
    */
  @send
  external hidePopover: htmlElement => unit = "hidePopover"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/togglePopover)
    */
  @send
  external togglePopover: (htmlElement, bool) => bool = "togglePopover"
}

module HTMLHeadElement = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLHeadElement)
    */
  @new
  external make: unit => htmlHeadElement = "HTMLHeadElement"
}

module HTMLFormElement = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement)
    */
  @new
  external make: unit => htmlFormElement = "HTMLFormElement"
  /**
    Fires when a FORM is about to be submitted.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/submit)
    */
  @send
  external submit: htmlFormElement => unit = "submit"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/requestSubmit)
    */
  @send
  external requestSubmit: (htmlFormElement, htmlElement) => unit = "requestSubmit"

  /**
    Fires when the user resets a form.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/reset)
    */
  @send
  external reset: htmlFormElement => unit = "reset"

  /**
    Returns whether a form will validate when it is submitted, without having to submit it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/checkValidity)
    */
  @send
  external checkValidity: htmlFormElement => bool = "checkValidity"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/reportValidity)
    */
  @send
  external reportValidity: htmlFormElement => bool = "reportValidity"
}

module HTMLImageElement = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement)
    */
  @new
  external make: unit => htmlImageElement = "HTMLImageElement"
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/decode)
    */
  @send
  external decode: htmlImageElement => Promise.t<unit> = "decode"
}

module HTMLEmbedElement = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLEmbedElement)
    */
  @new
  external make: unit => htmlEmbedElement = "HTMLEmbedElement"
  @send
  external getSVGDocument: htmlEmbedElement => document = "getSVGDocument"
}

module HTMLAnchorElement = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAnchorElement)
    */
  @new
  external make: unit => htmlAnchorElement = "HTMLAnchorElement"
}

module HTMLAreaElement = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAreaElement)
    */
  @new
  external make: unit => htmlAreaElement = "HTMLAreaElement"
}

module HTMLScriptElement = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLScriptElement)
    */
  @new
  external make: unit => htmlScriptElement = "HTMLScriptElement"
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLScriptElement/supports_static)
    */
  @scope("HTMLScriptElement")
  external supports: string => bool = "supports"
}

module DOMImplementation = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMImplementation/createDocumentType)
    */
  @send
  external createDocumentType: (domImplementation, string, string, string) => documentType =
    "createDocumentType"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMImplementation/createDocument)
    */
  @send
  external createDocument: (domImplementation, string, string, documentType) => xmlDocument =
    "createDocument"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMImplementation/createHTMLDocument)
    */
  @send
  external createHTMLDocument: (domImplementation, string) => document = "createHTMLDocument"
}

module Document = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document)
    */
  @new
  external make: unit => document = "Document"
  /**
    Retrieves a collection of objects based on the specified element name.
@param name Specifies the name of an element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/getElementsByTagName)
    */
  @send
  external getElementsByTagName: (document, string) => htmlCollection = "getElementsByTagName"

  /**
    If namespace and localName are "*" returns a HTMLCollection of all descendant elements.

If only namespace is "*" returns a HTMLCollection of all descendant elements whose local name is localName.

If only localName is "*" returns a HTMLCollection of all descendant elements whose namespace is namespace.

Otherwise, returns a HTMLCollection of all descendant elements whose namespace is namespace and local name is localName.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/getElementsByTagNameNS)
    */
  @send
  external getElementsByTagNameNS: (document, string, string) => htmlCollectionOf<element> =
    "getElementsByTagNameNS"

  /**
    Returns a HTMLCollection of the elements in the object on which the method was invoked (a document or an element) that have all the classes given by classNames. The classNames argument is interpreted as a space-separated list of classes.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/getElementsByClassName)
    */
  @send
  external getElementsByClassName: (document, string) => htmlCollectionOf<element> =
    "getElementsByClassName"

  /**
    Creates an instance of the element for the specified tag.
@param tagName The name of an element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/createElement)
    */
  @send
  external createElement: (document, string, unknown) => element = "createElement"

  /**
    Returns an element with namespace namespace. Its namespace prefix will be everything before ":" (U+003E) in qualifiedName or null. Its local name will be everything after ":" (U+003E) in qualifiedName or qualifiedName.

If localName does not match the Name production an "InvalidCharacterError" DOMException will be thrown.

If one of the following conditions is true a "NamespaceError" DOMException will be thrown:

localName does not match the QName production.
Namespace prefix is not null and namespace is the empty string.
Namespace prefix is "xml" and namespace is not the XML namespace.
qualifiedName or namespace prefix is "xmlns" and namespace is not the XMLNS namespace.
namespace is the XMLNS namespace and neither qualifiedName nor namespace prefix is "xmlns".

When supplied, options's is can be used to create a customized built-in element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/createElementNS)
    */
  @send
  external createElementNS: (document, string, string, unknown) => element = "createElementNS"

  /**
    Creates a new document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/createDocumentFragment)
    */
  @send
  external createDocumentFragment: document => documentFragment = "createDocumentFragment"

  /**
    Creates a text string from the specified value.
@param data String that specifies the nodeValue property of the text node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/createTextNode)
    */
  @send
  external createTextNode: (document, string) => text = "createTextNode"

  /**
    Returns a CDATASection node whose data is data.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/createCDATASection)
    */
  @send
  external createCDATASection: (document, string) => cdataSection = "createCDATASection"

  /**
    Creates a comment object with the specified data.
@param data Sets the comment object's data.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/createComment)
    */
  @send
  external createComment: (document, string) => comment = "createComment"

  /**
    Returns a ProcessingInstruction node whose target is target and data is data. If target does not match the Name production an "InvalidCharacterError" DOMException will be thrown. If data contains "?>" an "InvalidCharacterError" DOMException will be thrown.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/createProcessingInstruction)
    */
  @send
  external createProcessingInstruction: (document, string, string) => processingInstruction =
    "createProcessingInstruction"

  /**
    Returns a copy of node. If deep is true, the copy also includes the node's descendants.

If node is a document or a shadow root, throws a "NotSupportedError" DOMException.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/importNode)
    */
  @send
  external importNode: (document, 't, bool) => 't = "importNode"

  /**
    Moves node from another document and returns it.

If node is a document, throws a "NotSupportedError" DOMException or, if node is a shadow root, throws a "HierarchyRequestError" DOMException.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/adoptNode)
    */
  @send
  external adoptNode: (document, 't) => 't = "adoptNode"

  /**
    Creates an attribute object with a specified name.
@param name String that sets the attribute object's name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/createAttribute)
    */
  @send
  external createAttribute: (document, string) => attr = "createAttribute"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/createAttributeNS)
    */
  @send
  external createAttributeNS: (document, string, string) => attr = "createAttributeNS"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/createEvent)
    */
  @send
  external createEvent: (document, string) => event = "createEvent"

  /**
     Returns an empty range object that has both of its boundary points positioned at the beginning of the document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/createRange)
    */
  @send
  external createRange: document => range = "createRange"

  /**
    Creates a NodeIterator object that you can use to traverse filtered lists of nodes or elements in a document.
@param root The root element or node to start traversing on.
@param whatToShow The type of nodes or elements to appear in the node list
@param filter A custom NodeFilter function to use. For more information, see filter. Use null for no filter.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/createNodeIterator)
    */
  @send
  external createNodeIterator: (document, node, int, nodeFilter) => nodeIterator =
    "createNodeIterator"

  /**
    Creates a TreeWalker object that you can use to traverse filtered lists of nodes or elements in a document.
@param root The root element or node to start traversing on.
@param whatToShow The type of nodes or elements to appear in the node list. For more information, see whatToShow.
@param filter A custom NodeFilter function to use.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/createTreeWalker)
    */
  @send
  external createTreeWalker: (document, node, int, nodeFilter) => treeWalker = "createTreeWalker"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/startViewTransition)
    */
  @send
  external startViewTransition: (document, viewTransitionUpdateCallback) => viewTransition =
    "startViewTransition"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/caretPositionFromPoint)
    */
  @send
  external caretPositionFromPoint: (
    document,
    float,
    float,
    caretPositionFromPointOptions,
  ) => caretPosition = "caretPositionFromPoint"

  /**
    Stops document's fullscreen element from being displayed fullscreen and resolves promise when done.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/exitFullscreen)
    */
  @send
  external exitFullscreen: document => Promise.t<unit> = "exitFullscreen"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/parseHTMLUnsafe_static)
    */
  @scope("Document")
  external parseHTMLUnsafe: string => document = "parseHTMLUnsafe"

  /**
    Gets a collection of objects based on the value of the NAME or ID attribute.
@param elementName Gets a collection of objects based on the value of the NAME or ID attribute.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/getElementsByName)
    */
  @send
  external getElementsByName: (document, string) => nodeListOf<htmlElement> = "getElementsByName"

  /**
    Opens a new window and loads a document specified by a given URL. Also, opens a new window that uses the url parameter and the name parameter to collect the output of the write method and the writeln method.
@param url Specifies a MIME type for the document.
@param name Specifies the name of the window. This name is used as the value for the TARGET attribute on a form or an anchor element.
@param features Contains a list of items separated by commas. Each item consists of an option and a value, separated by an equals sign (for example, "fullscreen=yes, toolbar=yes"). The following values are supported.
@param replace Specifies whether the existing entry for the document is replaced in the history list.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/open)
    */
  @send
  external open_: (document, string, string) => document = "open"

  /**
    Closes an output stream and forces the sent data to display.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/close)
    */
  @send
  external close: document => unit = "close"

  /**
    Writes one or more HTML expressions to a document in the specified window.
@param content Specifies the text and HTML tags to write.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/write)
    */
  @send
  external write: (document, string) => unit = "write"

  /**
    Writes one or more HTML expressions, followed by a carriage return, to a document in the specified window.
@param content The text and HTML tags to write.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/writeln)
    */
  @send
  external writeln: (document, string) => unit = "writeln"

  /**
    Gets a value indicating whether the object currently has focus.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/hasFocus)
    */
  @send
  external hasFocus: document => bool = "hasFocus"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/exitPictureInPicture)
    */
  @send
  external exitPictureInPicture: document => Promise.t<unit> = "exitPictureInPicture"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/exitPointerLock)
    */
  @send
  external exitPointerLock: document => unit = "exitPointerLock"

  /**
    Returns an object representing the current selection of the document that is loaded into the object displaying a webpage.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/getSelection)
    */
  @send
  external getSelection: document => selection = "getSelection"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/hasStorageAccess)
    */
  @send
  external hasStorageAccess: document => Promise.t<bool> = "hasStorageAccess"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/requestStorageAccess)
    */
  @send
  external requestStorageAccess: document => Promise.t<unit> = "requestStorageAccess"
}

module Window = {
  /**
    Closes the window.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/close)
    */
  @send
  external close: window => unit = "close"

  /**
    Cancels the document load.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/stop)
    */
  @send
  external stop: window => unit = "stop"

  /**
    Moves the focus to the window's browsing context, if any.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/focus)
    */
  @send
  external focus: window => unit = "focus"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/open)
    */
  @send
  external open_: (window, string, string, string) => window = "open"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/alert)
    */
  @send
  external alert: window => unit = "alert"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/confirm)
    */
  @send
  external confirm: (window, string) => bool = "confirm"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/prompt)
    */
  @send
  external prompt: (window, string, string) => string = "prompt"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/print)
    */
  @send
  external print: window => unit = "print"

  /**
    Posts a message to the given window. Messages can be structured objects, e.g. nested objects and arrays, can contain JavaScript values (strings, numbers, Date objects, etc), and can contain certain data objects such as File Blob, FileList, and ArrayBuffer objects.

Objects listed in the transfer member of options are transferred, not just cloned, meaning that they are no longer usable on the sending side.

A target origin can be specified using the targetOrigin member of options. If not provided, it defaults to "/". This default restricts the message to same-origin targets only.

If the origin of the target window doesn't match the given target origin, the message is discarded, to avoid information leakage. To send the message to the target regardless of origin, set the target origin to "*".

Throws a "DataCloneError" DOMException if transfer array contains duplicate objects or if message could not be cloned.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/postMessage)
    */
  @send
  external postMessage: (window, any, string, array<Dict.t<string>>) => unit = "postMessage"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/matchMedia)
    */
  @send
  external matchMedia: (window, string) => mediaQueryList = "matchMedia"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/moveTo)
    */
  @send
  external moveTo: (window, int, int) => unit = "moveTo"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/moveBy)
    */
  @send
  external moveBy: (window, int, int) => unit = "moveBy"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/resizeTo)
    */
  @send
  external resizeTo: (window, int, int) => unit = "resizeTo"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/resizeBy)
    */
  @send
  external resizeBy: (window, int, int) => unit = "resizeBy"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/scroll)
    */
  @send
  external scroll: (window, scrollToOptions) => unit = "scroll"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/scrollTo)
    */
  @send
  external scrollTo: (window, scrollToOptions) => unit = "scrollTo"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/scrollBy)
    */
  @send
  external scrollBy: (window, scrollToOptions) => unit = "scrollBy"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/getComputedStyle)
    */
  @send
  external getComputedStyle: (window, element, string) => cssStyleDeclaration = "getComputedStyle"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/requestIdleCallback)
    */
  @send
  external requestIdleCallback: (window, idleRequestCallback, idleRequestOptions) => int =
    "requestIdleCallback"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/cancelIdleCallback)
    */
  @send
  external cancelIdleCallback: (window, int) => unit = "cancelIdleCallback"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/getSelection)
    */
  @send
  external getSelection: window => selection = "getSelection"
}

module CharacterData = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/substringData)
    */
  @send
  external substringData: (characterData, int, int) => string = "substringData"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/appendData)
    */
  @send
  external appendData: (characterData, string) => unit = "appendData"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/insertData)
    */
  @send
  external insertData: (characterData, int, string) => unit = "insertData"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/deleteData)
    */
  @send
  external deleteData: (characterData, int, int) => unit = "deleteData"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/replaceData)
    */
  @send
  external replaceData: (characterData, int, int, string) => unit = "replaceData"
}

module StylePropertyMapReadOnly = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StylePropertyMapReadOnly/getAll)
    */
  @send
  external getAll: (stylePropertyMapReadOnly, string) => array<cssStyleValue> = "getAll"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StylePropertyMapReadOnly/has)
    */
  @send
  external has: (stylePropertyMapReadOnly, string) => bool = "has"
}

module DOMRectReadOnly = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly)
    */
  @new
  external make: (any, any, any, any) => domRectReadOnly = "DOMRectReadOnly"
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly/fromRect_static)
    */
  @scope("DOMRectReadOnly")
  external fromRect: domRectInit => domRectReadOnly = "fromRect"

  @send
  external toJSON: domRectReadOnly => Dict.t<string> = "toJSON"
}

module DOMRect = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRect)
    */
  @new
  external make: (any, any, any, any) => domRect = "DOMRect"
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRect/fromRect_static)
    */
  @scope("DOMRect")
  external fromRect: domRectInit => domRect = "fromRect"
}

module DOMRectList = {
  @send
  external item: (domRectList, int) => domRect = "item"
}

module ElementInternals = {
  /**
    Sets both the state and submission value of internals's target element to value.

If value is null, the element won't participate in form submission.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ElementInternals/setFormValue)
    */
  @send
  external setFormValue: (elementInternals, unknown, unknown) => unit = "setFormValue"

  /**
    Marks internals's target element as suffering from the constraints indicated by the flags argument, and sets the element's validation message to message. If anchor is specified, the user agent might use it to indicate problems with the constraints of internals's target element when the form owner is validated interactively or reportValidity() is called.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ElementInternals/setValidity)
    */
  @send
  external setValidity: (elementInternals, validityStateFlags, string, htmlElement) => unit =
    "setValidity"

  /**
    Returns true if internals's target element has no validity problems; false otherwise. Fires an invalid event at the element in the latter case.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ElementInternals/checkValidity)
    */
  @send
  external checkValidity: elementInternals => bool = "checkValidity"

  /**
    Returns true if internals's target element has no validity problems; otherwise, returns false, fires an invalid event at the element, and (if the event isn't canceled) reports the problem to the user.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ElementInternals/reportValidity)
    */
  @send
  external reportValidity: elementInternals => bool = "reportValidity"
}

module DocumentFragment = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DocumentFragment)
    */
  @new
  external make: unit => documentFragment = "DocumentFragment"
}

module Text = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Text)
    */
  @new
  external make: string => text = "Text"
  /**
    Splits data at the given offset and returns the remainder as Text node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Text/splitText)
    */
  @send
  external splitText: (text, int) => text = "splitText"
}

module Comment = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Comment)
    */
  @new
  external make: string => comment = "Comment"
}

module Range = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range)
    */
  @new
  external make: unit => range = "Range"
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/setStart)
    */
  @send
  external setStart: (range, node, int) => unit = "setStart"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/setEnd)
    */
  @send
  external setEnd: (range, node, int) => unit = "setEnd"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/setStartBefore)
    */
  @send
  external setStartBefore: (range, node) => unit = "setStartBefore"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/setStartAfter)
    */
  @send
  external setStartAfter: (range, node) => unit = "setStartAfter"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/setEndBefore)
    */
  @send
  external setEndBefore: (range, node) => unit = "setEndBefore"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/setEndAfter)
    */
  @send
  external setEndAfter: (range, node) => unit = "setEndAfter"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/collapse)
    */
  @send
  external collapse: (range, bool) => unit = "collapse"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/selectNode)
    */
  @send
  external selectNode: (range, node) => unit = "selectNode"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/selectNodeContents)
    */
  @send
  external selectNodeContents: (range, node) => unit = "selectNodeContents"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/compareBoundaryPoints)
    */
  @send
  external compareBoundaryPoints: (range, int, range) => int = "compareBoundaryPoints"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/deleteContents)
    */
  @send
  external deleteContents: range => unit = "deleteContents"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/extractContents)
    */
  @send
  external extractContents: range => documentFragment = "extractContents"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/cloneContents)
    */
  @send
  external cloneContents: range => documentFragment = "cloneContents"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/insertNode)
    */
  @send
  external insertNode: (range, node) => unit = "insertNode"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/surroundContents)
    */
  @send
  external surroundContents: (range, node) => unit = "surroundContents"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/cloneRange)
    */
  @send
  external cloneRange: range => range = "cloneRange"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/detach)
    */
  @send
  external detach: range => unit = "detach"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/isPointInRange)
    */
  @send
  external isPointInRange: (range, node, int) => bool = "isPointInRange"

  /**
    Returns −1 if the point is before the range, 0 if the point is in the range, and 1 if the point is after the range.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/comparePoint)
    */
  @send
  external comparePoint: (range, node, int) => int = "comparePoint"

  /**
    Returns whether range intersects node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/intersectsNode)
    */
  @send
  external intersectsNode: (range, node) => bool = "intersectsNode"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/getClientRects)
    */
  @send
  external getClientRects: range => domRectList = "getClientRects"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/getBoundingClientRect)
    */
  @send
  external getBoundingClientRect: range => domRect = "getBoundingClientRect"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/createContextualFragment)
    */
  @send
  external createContextualFragment: (range, string) => documentFragment =
    "createContextualFragment"
}

module NodeFilter = {
  @send
  external acceptNode: (nodeFilter, node) => int = "acceptNode"
}

module NodeIterator = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NodeIterator/nextNode)
    */
  @send
  external nextNode: nodeIterator => node = "nextNode"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NodeIterator/previousNode)
    */
  @send
  external previousNode: nodeIterator => node = "previousNode"
}

module TreeWalker = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TreeWalker/parentNode)
    */
  @send
  external parentNode: treeWalker => node = "parentNode"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TreeWalker/firstChild)
    */
  @send
  external firstChild: treeWalker => node = "firstChild"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TreeWalker/lastChild)
    */
  @send
  external lastChild: treeWalker => node = "lastChild"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TreeWalker/previousSibling)
    */
  @send
  external previousSibling: treeWalker => node = "previousSibling"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TreeWalker/nextSibling)
    */
  @send
  external nextSibling: treeWalker => node = "nextSibling"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TreeWalker/previousNode)
    */
  @send
  external previousNode: treeWalker => node = "previousNode"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TreeWalker/nextNode)
    */
  @send
  external nextNode: treeWalker => node = "nextNode"
}

module CaretPosition = {
  @send
  external getClientRect: caretPosition => domRect = "getClientRect"
}

module Selection = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/getRangeAt)
    */
  @send
  external getRangeAt: (selection, int) => range = "getRangeAt"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/addRange)
    */
  @send
  external addRange: (selection, range) => unit = "addRange"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/removeRange)
    */
  @send
  external removeRange: (selection, range) => unit = "removeRange"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/removeAllRanges)
    */
  @send
  external removeAllRanges: selection => unit = "removeAllRanges"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/removeAllRanges)
    */
  @send
  external empty: selection => unit = "empty"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/collapse)
    */
  @send
  external collapse: (selection, node, int) => unit = "collapse"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/collapse)
    */
  @send
  external setPosition: (selection, node, int) => unit = "setPosition"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/collapseToStart)
    */
  @send
  external collapseToStart: selection => unit = "collapseToStart"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/collapseToEnd)
    */
  @send
  external collapseToEnd: selection => unit = "collapseToEnd"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/extend)
    */
  @send
  external extend: (selection, node, int) => unit = "extend"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/setBaseAndExtent)
    */
  @send
  external setBaseAndExtent: (selection, node, int, node, int) => unit = "setBaseAndExtent"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/selectAllChildren)
    */
  @send
  external selectAllChildren: (selection, node) => unit = "selectAllChildren"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/modify)
    */
  @send
  external modify: (selection, string, string, string) => unit = "modify"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/deleteFromDocument)
    */
  @send
  external deleteFromDocument: selection => unit = "deleteFromDocument"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/containsNode)
    */
  @send
  external containsNode: (selection, node, bool) => bool = "containsNode"
}

module MediaQueryList = {}

module MediaList = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaList/item)
    */
  @send
  external item: (mediaList, int) => string = "item"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaList/appendMedium)
    */
  @send
  external appendMedium: (mediaList, string) => unit = "appendMedium"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaList/deleteMedium)
    */
  @send
  external deleteMedium: (mediaList, string) => unit = "deleteMedium"
}

module IdleDeadline = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IdleDeadline/timeRemaining)
    */
  @send
  external timeRemaining: idleDeadline => float = "timeRemaining"
}

module CSSStyleValue = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleValue/parse_static)
    */
  @scope("CSSStyleValue")
  external parse: (string, string) => cssStyleValue = "parse"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleValue/parseAll_static)
    */
  @scope("CSSStyleValue")
  external parseAll: (string, string) => array<cssStyleValue> = "parseAll"
}

module CSSStyleSheet = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleSheet)
    */
  @new
  external make: cssStyleSheetInit => cssStyleSheet = "CSSStyleSheet"
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleSheet/insertRule)
    */
  @send
  external insertRule: (cssStyleSheet, string, int) => int = "insertRule"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleSheet/deleteRule)
    */
  @send
  external deleteRule: (cssStyleSheet, int) => unit = "deleteRule"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleSheet/replace)
    */
  @send
  external replace: (cssStyleSheet, string) => Promise.t<cssStyleSheet> = "replace"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleSheet/replaceSync)
    */
  @send
  external replaceSync: (cssStyleSheet, string) => unit = "replaceSync"
}

module CSSRuleList = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSRuleList/item)
    */
  @send
  external item: (cssRuleList, int) => cssRule = "item"
}

module CSSStyleDeclaration = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleDeclaration/item)
    */
  @send
  external item: (cssStyleDeclaration, int) => string = "item"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleDeclaration/getPropertyValue)
    */
  @send
  external getPropertyValue: (cssStyleDeclaration, string) => string = "getPropertyValue"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleDeclaration/getPropertyPriority)
    */
  @send
  external getPropertyPriority: (cssStyleDeclaration, string) => string = "getPropertyPriority"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleDeclaration/setProperty)
    */
  @send
  external setProperty: (cssStyleDeclaration, string, string, string) => unit = "setProperty"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleDeclaration/removeProperty)
    */
  @send
  external removeProperty: (cssStyleDeclaration, string) => string = "removeProperty"
}
