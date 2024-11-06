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

module HTMLOptionsCollection = {
  /**
    Inserts element before the node given by before.

The before argument can be a number, in which case element is inserted before the item with that number, or an element from the collection, in which case element is inserted before that element.

If before is omitted, null, or a number out of range, then element will be added at the end of the list.

This method will throw a "HierarchyRequestError" DOMException if element is an ancestor of the element into which it is to be inserted.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOptionsCollection/add)
    */
  @send
  external add: (htmlOptionsCollection, unknown, unknown) => unit = "add"

  /**
    Removes the item with index index from the collection.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOptionsCollection/remove)
    */
  @send
  external remove: (htmlOptionsCollection, int) => unit = "remove"
}
