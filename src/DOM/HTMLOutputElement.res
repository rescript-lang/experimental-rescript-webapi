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

module HTMLOutputElement = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOutputElement)
    */
  @new
  external make: unit => htmlOutputElement = "HTMLOutputElement"
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOutputElement/checkValidity)
    */
  @send
  external checkValidity: htmlOutputElement => bool = "checkValidity"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOutputElement/reportValidity)
    */
  @send
  external reportValidity: htmlOutputElement => bool = "reportValidity"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOutputElement/setCustomValidity)
    */
  @send
  external setCustomValidity: (htmlOutputElement, string) => unit = "setCustomValidity"
}
