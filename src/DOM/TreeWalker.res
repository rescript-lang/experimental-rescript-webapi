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

module TreeWalker = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TreeWalker/parentNode)
    */
  @send
  external parentNode: treeWalker => node = "parentNode"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TreeWalker/firstChild)
    */
  @send
  external firstChild: treeWalker => node = "firstChild"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TreeWalker/lastChild)
    */
  @send
  external lastChild: treeWalker => node = "lastChild"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TreeWalker/previousSibling)
    */
  @send
  external previousSibling: treeWalker => node = "previousSibling"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TreeWalker/nextSibling)
    */
  @send
  external nextSibling: treeWalker => node = "nextSibling"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TreeWalker/previousNode)
    */
  @send
  external previousNode: treeWalker => node = "previousNode"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TreeWalker/nextNode)
    */
  @send
  external nextNode: treeWalker => node = "nextNode"
}
