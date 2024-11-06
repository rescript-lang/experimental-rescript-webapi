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

module HTMLFieldSetElement = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFieldSetElement)
    */
  @new
  external make: unit => htmlFieldSetElement = "HTMLFieldSetElement"
  /**
    Returns whether a form will validate when it is submitted, without having to submit it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFieldSetElement/checkValidity)
    */
  @send
  external checkValidity: htmlFieldSetElement => bool = "checkValidity"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFieldSetElement/reportValidity)
    */
  @send
  external reportValidity: htmlFieldSetElement => bool = "reportValidity"

  /**
    Sets a custom error message that is displayed when a form is submitted.
@param error Sets a custom error message that is displayed when a form is submitted.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFieldSetElement/setCustomValidity)
    */
  @send
  external setCustomValidity: (htmlFieldSetElement, string) => unit = "setCustomValidity"
}
