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
