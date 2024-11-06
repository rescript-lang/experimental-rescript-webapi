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
