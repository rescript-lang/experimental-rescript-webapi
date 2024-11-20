open WebAPI.Global

let response = await fetch("https://rescript-lang.org/")

let response2 = await fetch(
  "https://rescript-lang.org/",
  ~init={
    headers: HeadersInit.fromDict(
      dict{
        "Content-Type": "application/json",
        "Authorization": "Bearer token",
      },
    ),
    body: BodyInit.fromString(`secret=foo&response=bar`),
  },
)
