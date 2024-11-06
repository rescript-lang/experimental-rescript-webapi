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
open FileAndDirectoryEntries
open WebVTT
open RemotePlayback
open Canvas
open PictureInPicture
open Storage
open WebLocks
open CSSFontLoading
open IndexedDB
open WebCrypto
open Performance
open WebStorage
open DOM

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
