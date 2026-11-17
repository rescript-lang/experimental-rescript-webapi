type responseShape = {...WebAPI.Response.t}

let original = WebAPI.Response.fromString("body")

let ordinaryRecord: responseShape = {
  type_: original.type_,
  url: "",
  redirected: false,
  status: 200,
  ok: true,
  statusText: "OK",
  headers: original.headers,
  body: Null,
  bodyUsed: false,
}

let forged = (ordinaryRecord :> WebAPI.Response.t)
