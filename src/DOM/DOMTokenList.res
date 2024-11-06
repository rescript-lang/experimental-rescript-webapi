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

module DOMTokenList = {
  /**
    Returns the token with index index.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMTokenList/item)
    */
  @send
  external item: (domTokenList, int) => string = "item"

  /**
    Returns true if token is present, and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMTokenList/contains)
    */
  @send
  external contains: (domTokenList, string) => bool = "contains"

  /**
    Adds all arguments passed, except those already present.

Throws a "SyntaxError" DOMException if one of the arguments is the empty string.

Throws an "InvalidCharacterError" DOMException if one of the arguments contains any ASCII whitespace.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMTokenList/add)
    */
  @send
  external add: (domTokenList, string) => unit = "add"

  /**
    Removes arguments passed, if they are present.

Throws a "SyntaxError" DOMException if one of the arguments is the empty string.

Throws an "InvalidCharacterError" DOMException if one of the arguments contains any ASCII whitespace.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMTokenList/remove)
    */
  @send
  external remove: (domTokenList, string) => unit = "remove"

  /**
    If force is not given, "toggles" token, removing it if it's present and adding it if it's not present. If force is true, adds token (same as add()). If force is false, removes token (same as remove()).

Returns true if token is now present, and false otherwise.

Throws a "SyntaxError" DOMException if token is empty.

Throws an "InvalidCharacterError" DOMException if token contains any spaces.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMTokenList/toggle)
    */
  @send
  external toggle: (domTokenList, string, bool) => bool = "toggle"

  /**
    Replaces token with newToken.

Returns true if token was replaced with newToken, and false otherwise.

Throws a "SyntaxError" DOMException if one of the arguments is the empty string.

Throws an "InvalidCharacterError" DOMException if one of the arguments contains any ASCII whitespace.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMTokenList/replace)
    */
  @send
  external replace: (domTokenList, string, string) => bool = "replace"

  /**
    Returns true if token is in the associated attribute's supported tokens. Returns false otherwise.

Throws a TypeError if the associated attribute has no supported tokens defined.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMTokenList/supports)
    */
  @send
  external supports: (domTokenList, string) => bool = "supports"
}
