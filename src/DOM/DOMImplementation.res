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

module DOMImplementation = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMImplementation/createDocumentType)
    */
  @send
  external createDocumentType: (domImplementation, string, string, string) => documentType =
    "createDocumentType"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMImplementation/createDocument)
    */
  @send
  external createDocument: (domImplementation, string, string, documentType) => xmlDocument =
    "createDocument"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMImplementation/createHTMLDocument)
    */
  @send
  external createHTMLDocument: (domImplementation, string) => document = "createHTMLDocument"
}
