@@warning("-30")

type responseType =
  | @as("basic") Basic
  | @as("cors") Cors
  | @as("default") Default
  | @as("error") Error
  | @as("opaque") Opaque
  | @as("opaqueredirect") Opaqueredirect

type requestDestination =
  | @as("") Empty
  | @as("audio") Audio
  | @as("audioworklet") Audioworklet
  | @as("document") Document
  | @as("embed") Embed
  | @as("font") Font
  | @as("frame") Frame
  | @as("iframe") Iframe
  | @as("image") Image
  | @as("manifest") Manifest
  | @as("object") Object
  | @as("paintworklet") Paintworklet
  | @as("report") Report
  | @as("script") Script
  | @as("sharedworker") Sharedworker
  | @as("style") Style
  | @as("track") Track
  | @as("video") Video
  | @as("worker") Worker
  | @as("xslt") Xslt

type referrerPolicy =
  | @as("") Empty
  | @as("no-referrer") NoReferrer
  | @as("no-referrer-when-downgrade") NoReferrerWhenDowngrade
  | @as("origin") Origin
  | @as("origin-when-cross-origin") OriginWhenCrossOrigin
  | @as("same-origin") SameOrigin
  | @as("strict-origin") StrictOrigin
  | @as("strict-origin-when-cross-origin") StrictOriginWhenCrossOrigin
  | @as("unsafe-url") UnsafeUrl

type requestMode =
  | @as("cors") Cors
  | @as("navigate") Navigate
  | @as("no-cors") NoCors
  | @as("same-origin") SameOrigin

type requestCredentials =
  | @as("include") Include
  | @as("omit") Omit
  | @as("same-origin") SameOrigin

type requestCache =
  | @as("default") Default
  | @as("force-cache") ForceCache
  | @as("no-cache") NoCache
  | @as("no-store") NoStore
  | @as("only-if-cached") OnlyIfCached
  | @as("reload") Reload

type requestRedirect =
  | @as("error") Error
  | @as("follow") Follow
  | @as("manual") Manual

type requestPriority =
  | @as("auto") Auto
  | @as("high") High
  | @as("low") Low

/**
@editor.completeFrom(Response) This WebApiFetch API interface allows you to perform various actions on HTTP request and response headers. These actions include retrieving, setting, adding to, and removing. A Headers object has an associated header list, which is initially empty and consists of zero or more name and value pairs.  You can add to this using methods like append() (see Examples.) In all methods of this interface, header names are matched by case-insensitive byte sequence.
[See Headers on MDN](https://developer.mozilla.org/docs/Web/API/Headers)
*/
@editor.completeFrom(Headers)
type headers

/**
This WebApiFetch API interface represents a resource request.
[See Request on MDN](https://developer.mozilla.org/docs/Web/API/Request)
*/
@editor.completeFrom(Request)
type request

/**
This WebApiFetch API interface represents the response to a request.
[See Response on MDN](https://developer.mozilla.org/docs/Web/API/Response)
*/
@editor.completeFrom(Response)
type response

/**
Provides a way to easily construct a set of key/value pairs representing form fields and their values, which can then be easily sent using the XMLHttpRequest.send() method. It uses the same format a form would use if the encoding type were set to "multipart/form-data".
[See FormData on MDN](https://developer.mozilla.org/docs/Web/API/FormData)
*/
@editor.completeFrom(FormData)
type formData

@editor.completeFrom(HeadersInit) type headersInit

@editor.completeFrom(BodyInit) type bodyInit

type requestInfo = unknown

@editor.completeFrom(FormDataEntryValue)
type formDataEntryValue

type requestInit = {
  /**
    A string to set request's method.
    */
  mutable method?: string,
  /**
    A Headers object, an object literal, or an array of two-item arrays to set request's headers.
    */
  mutable headers?: headersInit,
  /**
    A BodyInit object or null to set request's body.
    */
  mutable body?: Nullable.t<bodyInit>,
  /**
    A string whose value is a same-origin WebApiURL, "about:client", or the empty string, to set request's referrer.
    */
  mutable referrer?: string,
  /**
    A referrer policy to set request's referrerPolicy.
    */
  mutable referrerPolicy?: referrerPolicy,
  /**
    A string to indicate whether the request will use CORS, or will be restricted to same-origin URLs. Sets request's mode.
    */
  mutable mode?: requestMode,
  /**
    A string indicating whether credentials will be sent with the request always, never, or only when sent to a same-origin URL. Sets request's credentials.
    */
  mutable credentials?: requestCredentials,
  /**
    A string indicating how the request will interact with the browser's cache to set request's cache.
    */
  mutable cache?: requestCache,
  /**
    A string indicating whether request follows redirects, results in an error upon encountering a redirect, or returns the redirect (in an opaque fashion). Sets request's redirect.
    */
  mutable redirect?: requestRedirect,
  /**
    A cryptographic hash of the resource to be fetched by request. Sets request's integrity.
    */
  mutable integrity?: string,
  /**
    A boolean to set request's keepalive.
    */
  mutable keepalive?: bool,
  /**
    An AbortSignal to set request's signal.
    */
  mutable signal?: Nullable.t<DOM.abortSignal>,
  mutable priority?: requestPriority,
  /**
    Can only be null. Used to disassociate request from any Window.
    */
  mutable window?: Nullable.t<unit>,
}

type responseInit = {
  mutable status?: int,
  mutable statusText?: string,
  mutable headers?: headersInit,
}
