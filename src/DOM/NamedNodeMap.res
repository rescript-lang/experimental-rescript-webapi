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

module NamedNodeMap = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/item)
    */
  @send
  external item: (namedNodeMap, int) => attr = "item"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/getNamedItem)
    */
  @send
  external getNamedItem: (namedNodeMap, string) => attr = "getNamedItem"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/getNamedItemNS)
    */
  @send
  external getNamedItemNS: (namedNodeMap, string, string) => attr = "getNamedItemNS"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/setNamedItem)
    */
  @send
  external setNamedItem: (namedNodeMap, attr) => attr = "setNamedItem"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/setNamedItemNS)
    */
  @send
  external setNamedItemNS: (namedNodeMap, attr) => attr = "setNamedItemNS"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/removeNamedItem)
    */
  @send
  external removeNamedItem: (namedNodeMap, string) => attr = "removeNamedItem"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/removeNamedItemNS)
    */
  @send
  external removeNamedItemNS: (namedNodeMap, string, string) => attr = "removeNamedItemNS"
}
