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
