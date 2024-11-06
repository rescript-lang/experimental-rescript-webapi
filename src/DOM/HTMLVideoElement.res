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

module HTMLVideoElement = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLVideoElement)
    */
  @new
  external make: unit => htmlVideoElement = "HTMLVideoElement"
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLVideoElement/getVideoPlaybackQuality)
    */
  @send
  external getVideoPlaybackQuality: htmlVideoElement => videoPlaybackQuality =
    "getVideoPlaybackQuality"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLVideoElement/requestPictureInPicture)
    */
  @send
  external requestPictureInPicture: htmlVideoElement => Promise.t<pictureInPictureWindow> =
    "requestPictureInPicture"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLVideoElement/requestVideoFrameCallback)
    */
  @send
  external requestVideoFrameCallback: (htmlVideoElement, videoFrameRequestCallback) => int =
    "requestVideoFrameCallback"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLVideoElement/cancelVideoFrameCallback)
    */
  @send
  external cancelVideoFrameCallback: (htmlVideoElement, int) => unit = "cancelVideoFrameCallback"
}
