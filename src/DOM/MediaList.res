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

module MediaList = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaList/item)
    */
  @send
  external item: (mediaList, int) => string = "item"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaList/appendMedium)
    */
  @send
  external appendMedium: (mediaList, string) => unit = "appendMedium"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaList/deleteMedium)
    */
  @send
  external deleteMedium: (mediaList, string) => unit = "deleteMedium"
}
