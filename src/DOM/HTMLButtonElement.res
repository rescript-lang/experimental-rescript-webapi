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

module HTMLButtonElement = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLButtonElement)
    */
  @new
  external make: unit => htmlButtonElement = "HTMLButtonElement"
  /**
    Returns whether a form will validate when it is submitted, without having to submit it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLButtonElement/checkValidity)
    */
  @send
  external checkValidity: htmlButtonElement => bool = "checkValidity"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLButtonElement/reportValidity)
    */
  @send
  external reportValidity: htmlButtonElement => bool = "reportValidity"

  /**
    Sets a custom error message that is displayed when a form is submitted.
@param error Sets a custom error message that is displayed when a form is submitted.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLButtonElement/setCustomValidity)
    */
  @send
  external setCustomValidity: (htmlButtonElement, string) => unit = "setCustomValidity"
}
