let response = Response.make(~init={status: 204})

let response1 = Response.make(
  ~body=BodyInit.fromString("pong"),
  ~init={status: 200, headers: HeadersInit.fromDict(dict{"X-Fruit": "Peach"})},
)
