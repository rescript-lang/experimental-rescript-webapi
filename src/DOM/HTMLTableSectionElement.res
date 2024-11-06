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

module HTMLTableSectionElement = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableSectionElement)
    */
  @new
  external make: unit => htmlTableSectionElement = "HTMLTableSectionElement"
  /**
    Creates a new row (tr) in the table, and adds the row to the rows collection.
@param index Number that specifies where to insert the row in the rows collection. The default value is -1, which appends the new row to the end of the rows collection.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableSectionElement/insertRow)
    */
  @send
  external insertRow: (htmlTableSectionElement, int) => htmlTableRowElement = "insertRow"

  /**
    Removes the specified row (tr) from the element and from the rows collection.
@param index Number that specifies the zero-based position in the rows collection of the row to remove.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableSectionElement/deleteRow)
    */
  @send
  external deleteRow: (htmlTableSectionElement, int) => unit = "deleteRow"
}
