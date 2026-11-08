type responseShape = {
  @as("type")
  type_: WebAPI.FetchTypes.responseType,
  url: string,
  redirected: bool,
  status: int,
  ok: bool,
  statusText: string,
  headers: WebAPI.FetchTypes.headers,
  body: Null.t<WebAPI.ReadableStream.t<Uint8Array.t>>,
  bodyUsed: bool,
}

let original = WebAPI.Response.fromString("body")
let record: responseShape = {
  type_: WebAPI.Response.type_(original),
  url: WebAPI.Response.url(original),
  redirected: WebAPI.Response.redirected(original),
  status: WebAPI.Response.status(original),
  ok: WebAPI.Response.ok(original),
  statusText: WebAPI.Response.statusText(original),
  headers: WebAPI.Headers.make(),
  body: WebAPI.Response.body(original),
  bodyUsed: WebAPI.Response.bodyUsed(original),
}
let fake = (record :> WebAPI.Response.t)
