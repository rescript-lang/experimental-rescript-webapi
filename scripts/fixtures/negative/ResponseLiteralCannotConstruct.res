let original = WebAPI.Response.fromString("body")
let fake: WebAPI.Response.t = {
  type_: WebAPI.Response.type_(original),
  url: WebAPI.Response.url(original),
  redirected: WebAPI.Response.redirected(original),
  status: WebAPI.Response.status(original),
  ok: WebAPI.Response.ok(original),
  statusText: WebAPI.Response.statusText(original),
  headers: WebAPI.Response.headers(original),
  body: WebAPI.Response.body(original),
  bodyUsed: WebAPI.Response.bodyUsed(original),
}
