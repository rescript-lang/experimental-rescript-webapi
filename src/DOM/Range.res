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
