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

module CharacterData = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/substringData)
    */
  @send
  external substringData: (characterData, int, int) => string = "substringData"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/appendData)
    */
  @send
  external appendData: (characterData, string) => unit = "appendData"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/insertData)
    */
  @send
  external insertData: (characterData, int, string) => unit = "insertData"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/deleteData)
    */
  @send
  external deleteData: (characterData, int, int) => unit = "deleteData"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/replaceData)
    */
  @send
  external replaceData: (characterData, int, int, string) => unit = "replaceData"
}
