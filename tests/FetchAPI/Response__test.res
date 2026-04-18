let response = WebApiFetch.Response.fromNull(~init={status: 204})

let response1 = WebApiFetch.Response.fromString(
  "pong",
  ~init={status: 200, headers: WebApiFetch.HeadersInit.fromDict(dict{"X-Fruit": "Peach"})},
)
