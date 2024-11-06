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

module Navigator = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/sendBeacon)
    */
  @send
  external sendBeacon: (navigator, string, bodyInit) => bool = "sendBeacon"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/requestMediaKeySystemAccess)
    */
  @send
  external requestMediaKeySystemAccess: (
    navigator,
    string,
    array<mediaKeySystemConfiguration>,
  ) => Promise.t<mediaKeySystemAccess> = "requestMediaKeySystemAccess"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/getGamepads)
    */
  @send
  external getGamepads: navigator => array<gamepad> = "getGamepads"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/vibrate)
    */
  @send
  external vibrate: (navigator, vibratePattern) => bool = "vibrate"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/share)
    */
  @send
  external share: (navigator, shareData) => Promise.t<unit> = "share"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/canShare)
    */
  @send
  external canShare: (navigator, shareData) => bool = "canShare"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/requestMIDIAccess)
    */
  @send
  external requestMIDIAccess: (navigator, midiOptions) => Promise.t<midiAccess> =
    "requestMIDIAccess"
}
