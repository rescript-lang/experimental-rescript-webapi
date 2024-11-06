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

module CSSStyleSheet = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleSheet)
    */
  @new
  external make: cssStyleSheetInit => cssStyleSheet = "CSSStyleSheet"
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleSheet/insertRule)
    */
  @send
  external insertRule: (cssStyleSheet, string, int) => int = "insertRule"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleSheet/deleteRule)
    */
  @send
  external deleteRule: (cssStyleSheet, int) => unit = "deleteRule"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleSheet/replace)
    */
  @send
  external replace: (cssStyleSheet, string) => Promise.t<cssStyleSheet> = "replace"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleSheet/replaceSync)
    */
  @send
  external replaceSync: (cssStyleSheet, string) => unit = "replaceSync"
}
