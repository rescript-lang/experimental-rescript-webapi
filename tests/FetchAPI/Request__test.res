let req = WebApiFetch.Request.fromURL("https://example.com")

let req1 = WebApiFetch.Request.fromURL(
  "https://example.com/api",
  ~init={method: "POST", body: WebApiFetch.BodyInit.fromString("hello")},
)

let req2 = WebApiFetch.Request.fromRequest(req1)

Console.log(await req2->WebApiFetch.Request.text)
