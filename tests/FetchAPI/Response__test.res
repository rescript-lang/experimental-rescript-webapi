let response = Fetch.Response.fromNull(~init={status: 204})

let response1 = Fetch.Response.fromString(
  "pong",
  ~init={status: 200, headers: Fetch.HeadersInit.fromDict(dict{"X-Fruit": "Peach"})},
)
