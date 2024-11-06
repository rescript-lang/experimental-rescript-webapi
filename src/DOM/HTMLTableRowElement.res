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

module HTMLTableRowElement = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableRowElement)
    */
  @new
  external make: unit => htmlTableRowElement = "HTMLTableRowElement"
  /**
    Creates a new cell in the table row, and adds the cell to the cells collection.
@param index Number that specifies where to insert the cell in the tr. The default value is -1, which appends the new cell to the end of the cells collection.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableRowElement/insertCell)
    */
  @send
  external insertCell: (htmlTableRowElement, int) => htmlTableCellElement = "insertCell"

  /**
    Removes the specified cell from the table row, as well as from the cells collection.
@param index Number that specifies the zero-based position of the cell to remove from the table row. If no value is provided, the last cell in the cells collection is deleted.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableRowElement/deleteCell)
    */
  @send
  external deleteCell: (htmlTableRowElement, int) => unit = "deleteCell"
}
