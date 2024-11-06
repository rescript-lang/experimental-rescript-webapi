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

module DOMRect = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRect)
    */
  @new
  external make: (any, any, any, any) => domRect = "DOMRect"
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRect/fromRect_static)
    */
  @scope("DOMRect")
  external fromRect: domRectInit => domRect = "fromRect"
}
