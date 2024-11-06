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

module CustomElementRegistry = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CustomElementRegistry/define)
    */
  @send
  external define: (
    customElementRegistry,
    string,
    customElementConstructor,
    elementDefinitionOptions,
  ) => unit = "define"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CustomElementRegistry/getName)
    */
  @send
  external getName: (customElementRegistry, customElementConstructor) => string = "getName"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CustomElementRegistry/whenDefined)
    */
  @send
  external whenDefined: (customElementRegistry, string) => Promise.t<customElementConstructor> =
    "whenDefined"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CustomElementRegistry/upgrade)
    */
  @send
  external upgrade: (customElementRegistry, node) => unit = "upgrade"
}
