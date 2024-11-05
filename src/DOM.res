@@warning("-30")

open Prelude
open Clipboard
open CredentialManagement
open Geolocation
open MediaCapabilities
open MediaCaptureAndStreams
open MediaSession
open Permissions

/**
An abnormal event (called an exception) which occurs as a result of calling a method or accessing a property of a web API.
[See DOMException on MDN](https://developer.mozilla.org/docs/Web/API/DOMException)
*/
type domException = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMException/name)
    */
  name: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMException/message)
    */
  message: string,
}

/**
A type returned by some APIs which contains a list of DOMString (strings).
[See DOMStringList on MDN](https://developer.mozilla.org/docs/Web/API/DOMStringList)
*/
type domStringList = {
  /**
    Returns the number of strings in strings.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMStringList/length)
    */
  length: any,
}

/**
The location (URL) of the object it is linked to. Changes done on it are reflected on the object it relates to. Both the Document and Window interface have such a linked Location, accessible via Document.location and Window.location respectively.
[See Location on MDN](https://developer.mozilla.org/docs/Web/API/Location)
*/
type location = {
  /**
    Returns the Location object's URL.

Can be set, to navigate to the given URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/href)
    */
  mutable href: string,
  /**
    Returns the Location object's URL's origin.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/origin)
    */
  origin: string,
  /**
    Returns the Location object's URL's scheme.

Can be set, to navigate to the same URL with a changed scheme.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/protocol)
    */
  mutable protocol: string,
  /**
    Returns the Location object's URL's host and port (if different from the default port for the scheme).

Can be set, to navigate to the same URL with a changed host and port.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/host)
    */
  mutable host: string,
  /**
    Returns the Location object's URL's host.

Can be set, to navigate to the same URL with a changed host.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/hostname)
    */
  mutable hostname: string,
  /**
    Returns the Location object's URL's port.

Can be set, to navigate to the same URL with a changed port.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/port)
    */
  mutable port: string,
  /**
    Returns the Location object's URL's path.

Can be set, to navigate to the same URL with a changed path.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/pathname)
    */
  mutable pathname: string,
  /**
    Returns the Location object's URL's query (includes leading "?" if non-empty).

Can be set, to navigate to the same URL with a changed query (ignores leading "?").
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/search)
    */
  mutable search: string,
  /**
    Returns the Location object's URL's fragment (includes leading "#" if non-empty).

Can be set, to navigate to the same URL with a changed fragment (ignores leading "#").
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/hash)
    */
  mutable hash: string,
  /**
    Returns a DOMStringList object listing the origins of the ancestor browsing contexts, from the parent browsing context to the top-level browsing context.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/ancestorOrigins)
    */
  ancestorOrigins: domStringList,
}

/**
[See UserActivation on MDN](https://developer.mozilla.org/docs/Web/API/UserActivation)
*/
type userActivation = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/UserActivation/hasBeenActive)
    */
  hasBeenActive: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/UserActivation/isActive)
    */
  isActive: bool,
}

/**
The state and the identity of the user agent. It allows scripts to query it and to register themselves to carry on some activities.
[See Navigator on MDN](https://developer.mozilla.org/docs/Web/API/Navigator)
*/
type navigator = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/clipboard)
    */
  clipboard: clipboard,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/credentials)
    */
  credentials: credentialsContainer,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/geolocation)
    */
  geolocation: geolocation,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/userActivation)
    */
  userActivation: userActivation,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/mediaCapabilities)
    */
  mediaCapabilities: mediaCapabilities,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/mediaDevices)
    */
  mediaDevices: mediaDevices,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/mediaSession)
    */
  mediaSession: mediaSession,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/permissions)
    */
  permissions: permissions,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/maxTouchPoints)
    */
  maxTouchPoints: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/wakeLock)
    */
  wakeLock: wakeLock,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/serviceWorker)
    */
  serviceWorker: serviceWorkerContainer,
}

type htmlMediaElement = any
module DOMException = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMException)
    */
  @new
  external make: (string, string) => domException = "DOMException"
}

module DOMStringList = {
  /**
    Returns the string with index index from strings.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMStringList/item)
    */
  @send
  external item: (domStringList, any) => string = "item"

  /**
    Returns true if strings contains string, and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMStringList/contains)
    */
  @send
  external contains: (domStringList, string) => bool = "contains"
}

module Location = {
  /**
    Navigates to the given URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/assign)
    */
  @send
  external assign: (location, string) => unit = "assign"

  /**
    Removes the current page from the session history and navigates to the given URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/replace)
    */
  @send
  external replace: (location, string) => unit = "replace"

  /**
    Reloads the current page.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/reload)
    */
  @send
  external reload: location => unit = "reload"
}

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
