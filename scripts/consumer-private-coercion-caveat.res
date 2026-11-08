type responseShape = {...WebAPI.Response.t}

let deliberatelyForgeResponse = (original: WebAPI.Response.t) => {
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
  (ordinaryRecord :> WebAPI.Response.t)
}

let _ = deliberatelyForgeResponse
