type requestShape = {
  method: string,
  url: string,
  headers: WebAPI.FetchTypes.headers,
  destination: WebAPI.FetchTypes.requestDestination,
  referrer: string,
  referrerPolicy: WebAPI.FetchTypes.referrerPolicy,
  mode: WebAPI.FetchTypes.requestMode,
  credentials: WebAPI.FetchTypes.requestCredentials,
  cache: WebAPI.FetchTypes.requestCache,
  redirect: WebAPI.FetchTypes.requestRedirect,
  integrity: string,
  keepalive: bool,
  signal: WebAPI.DOM.abortSignal,
  body: Null.t<WebAPI.ReadableStream.t<Uint8Array.t>>,
  bodyUsed: bool,
}

let original = WebAPI.Request.fromURL("https://example.com/")
let record: requestShape = {
  method: WebAPI.Request.method(original),
  url: WebAPI.Request.url(original),
  headers: WebAPI.Request.headers(original),
  destination: WebAPI.Request.destination(original),
  referrer: WebAPI.Request.referrer(original),
  referrerPolicy: WebAPI.Request.referrerPolicy(original),
  mode: WebAPI.Request.mode(original),
  credentials: WebAPI.Request.credentials(original),
  cache: WebAPI.Request.cache(original),
  redirect: WebAPI.Request.redirect(original),
  integrity: WebAPI.Request.integrity(original),
  keepalive: WebAPI.Request.keepalive(original),
  signal: WebAPI.Request.signal(original),
  body: WebAPI.Request.body(original),
  bodyUsed: WebAPI.Request.bodyUsed(original),
}
let fake = (record :> WebAPI.Request.t)
