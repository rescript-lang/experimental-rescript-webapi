let req = Fetch.Request.fromURL("https://example.com")

let req1 = Fetch.Request.fromURL(
  "https://example.com/api",
  ~init={method: "POST", body: Fetch.BodyInit.fromString("hello")},
)

let req2 = Fetch.Request.fromRequest(req1)

Console.log(await req2->Fetch.Request.text)
