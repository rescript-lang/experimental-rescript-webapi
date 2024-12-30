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

let response3 = await fetch_withRequest(
  Request.make2(~input="https://rescript-lang.org/"),
  ~init={
    method: "POST",
    headers: HeadersInit.fromDict(
      dict{
        "Content-Type": "application/x-www-form-urlencoded",
      },
    ),
    body: BodyInit.fromString(`secret=foo&response=bar`),
  },
)

removeEventListener(Mousedown, MouseEvent.preventDefault, ~options={capture: false})
