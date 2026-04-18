let response: Response.t = Response.fromNull(~init={status: 204})

let response1: Response.t = Response.fromString(
  "pong",
  ~init={status: 200, headers: HeadersInit.fromDict(dict{"X-Fruit": "Peach"})},
)
