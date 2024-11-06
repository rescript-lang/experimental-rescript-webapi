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

module TimeRanges = {
  /**
    Returns the time for the start of the range with the given index.

Throws an "IndexSizeError" DOMException if the index is out of range.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TimeRanges/start)
    */
  @send
  external start: (timeRanges, int) => float = "start"

  /**
    Returns the time for the end of the range with the given index.

Throws an "IndexSizeError" DOMException if the index is out of range.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TimeRanges/end)
    */
  @send
  external end: (timeRanges, int) => float = "end"
}
