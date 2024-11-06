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

module StylePropertyMap = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StylePropertyMap/set)
    */
  @send
  external set: (stylePropertyMap, string, unknown) => unit = "set"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StylePropertyMap/append)
    */
  @send
  external append: (stylePropertyMap, string, unknown) => unit = "append"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StylePropertyMap/delete)
    */
  @send
  external delete: (stylePropertyMap, string) => unit = "delete"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StylePropertyMap/clear)
    */
  @send
  external clear: stylePropertyMap => unit = "clear"
}
