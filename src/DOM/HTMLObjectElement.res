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

module HTMLObjectElement = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLObjectElement)
    */
  @new
  external make: unit => htmlObjectElement = "HTMLObjectElement"
  @send
  external getSVGDocument: htmlObjectElement => document = "getSVGDocument"

  /**
    Returns whether a form will validate when it is submitted, without having to submit it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLObjectElement/checkValidity)
    */
  @send
  external checkValidity: htmlObjectElement => bool = "checkValidity"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLObjectElement/reportValidity)
    */
  @send
  external reportValidity: htmlObjectElement => bool = "reportValidity"

  /**
    Sets a custom error message that is displayed when a form is submitted.
@param error Sets a custom error message that is displayed when a form is submitted.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLObjectElement/setCustomValidity)
    */
  @send
  external setCustomValidity: (htmlObjectElement, string) => unit = "setCustomValidity"
}
