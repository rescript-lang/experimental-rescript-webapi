/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request)
*/
type t = FetchTypes.request

/**
Returns request's HTTP method, which is "GET" by default.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/method)
*/
@get external method: t => string = "method"
/**
Returns the URL of request as a string.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/url)
*/
@get external url: t => string = "url"
/**
Returns a Headers object consisting of the headers associated with request. Note that headers added
in the network layer by the user agent will not be accounted for in this object, for example the
"Host" header.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/headers)
*/
@get external headers: t => FetchTypes.headers = "headers"
/**
Returns the kind of resource requested by request, for example "document" or "script".
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/destination)
*/
@get external destination: t => FetchTypes.requestDestination = "destination"
/**
Returns the referrer of request. Its value can be a same-origin URL if explicitly set in init, the
empty string to indicate no referrer, and "about:client" when defaulting to the global's default.
This is used during fetching to determine the value of the `Referer` header of the request being
made.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/referrer)
*/
@get external referrer: t => string = "referrer"
/**
Returns the referrer policy associated with request. This is used during fetching to compute the
value of the request's referrer.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/referrerPolicy)
*/
@get external referrerPolicy: t => FetchTypes.referrerPolicy = "referrerPolicy"
/**
Returns the mode associated with request, which is a string indicating whether the request will use
CORS, or will be restricted to same-origin URLs.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/mode)
*/
@get external mode: t => FetchTypes.requestMode = "mode"
/**
Returns the credentials mode associated with request, which is a string indicating whether
credentials will be sent with the request always, never, or only when sent to a same-origin URL.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/credentials)
*/
@get external credentials: t => FetchTypes.requestCredentials = "credentials"
/**
Returns the cache mode associated with request, which is a string indicating how the request will
interact with the browser's cache when fetching.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/cache)
*/
@get external cache: t => FetchTypes.requestCache = "cache"
/**
Returns the redirect mode associated with request, which is a string indicating how redirects for
the request will be handled during fetching. A request will follow redirects by default.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/redirect)
*/
@get external redirect: t => FetchTypes.requestRedirect = "redirect"
/**
Returns request's subresource integrity metadata, which is a cryptographic hash of the resource being
fetched. Its value consists of multiple hashes separated by whitespace. [SRI]
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/integrity)
*/
@get external integrity: t => string = "integrity"
/**
Returns a boolean indicating whether or not request can outlive the global in which it was created.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/keepalive)
*/
@get external keepalive: t => bool = "keepalive"
/**
Returns the signal associated with request, which is an AbortSignal object indicating whether or not
request has been aborted, and its abort event handler.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/signal)
*/
@get external signal: t => DOM.abortSignal = "signal"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/body)
*/
@get external body: t => Null.t<FileTypes.readableStream<Uint8Array.t>> = "body"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/bodyUsed)
*/
@get external bodyUsed: t => bool = "bodyUsed"
type requestInit = FetchTypes.requestInit
type bodyInit = BodyInit.t
type headersInit = HeadersInit.t

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request)
*/
@throws(JsExn) @new
external fromURL: (string, ~init: requestInit=?) => t = "Request"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request)
*/
@throws(JsExn) @new
external fromRequest: (t, ~init: requestInit=?) => t = "Request"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/arrayBuffer)
*/
@send
external arrayBuffer: t => promise<ArrayBuffer.t> = "arrayBuffer"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/blob)
*/
@send
external blob: t => promise<Blob.t> = "blob"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/bytes)
*/
@send
external bytes: t => promise<Uint8Array.t> = "bytes"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/formData)
*/
@send
external formData: t => promise<FormData.t> = "formData"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/json)
*/
@send
external json: t => promise<JSON.t> = "json"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/text)
*/
@send
external text: t => promise<string> = "text"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/clone)
*/
@throws(JsExn) @send
external clone: t => t = "clone"
