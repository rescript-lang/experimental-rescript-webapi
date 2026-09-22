type httpError = {
  response: Response.t,
}

type fetchError =
  | FetchRejected(exn)
  | ResponseNotOk(httpError)

type readError = {
  response: Response.t,
  cause: exn,
}

type response<'body> = {
  response: Response.t,
  body: 'body,
}

let checkOk: Response.t => result<Response.t, httpError>

let fetch: (string, ~init: Request.requestInit=?) => promise<result<Response.t, fetchError>>

let fetchWithRequest: (
  Request.t,
  ~init: Request.requestInit=?,
) => promise<result<Response.t, fetchError>>

let arrayBuffer: Response.t => promise<result<response<ArrayBuffer.t>, readError>>
let blob: Response.t => promise<result<response<Blob.t>, readError>>
let bytes: Response.t => promise<result<response<array<int>>, readError>>
let formData: Response.t => promise<result<response<FormData.t>, readError>>
let json: Response.t => promise<result<response<JSON.t>, readError>>
let text: Response.t => promise<result<response<string>, readError>>
