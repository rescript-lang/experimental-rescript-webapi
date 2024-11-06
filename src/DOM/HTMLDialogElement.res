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

module HTMLDialogElement = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLDialogElement)
    */
  @new
  external make: unit => htmlDialogElement = "HTMLDialogElement"
  /**
    Displays the dialog element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLDialogElement/show)
    */
  @send
  external show: htmlDialogElement => unit = "show"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLDialogElement/showModal)
    */
  @send
  external showModal: htmlDialogElement => unit = "showModal"

  /**
    Closes the dialog element.

The argument, if provided, provides a return value.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLDialogElement/close)
    */
  @send
  external close: (htmlDialogElement, string) => unit = "close"
}
