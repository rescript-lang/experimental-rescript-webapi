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

let checkOk = (response: Response.t): result<Response.t, httpError> =>
  if response.ok {
    Ok(response)
  } else {
    Error({response: response})
  }

let fetch = async (url: string, ~init: option<Request.requestInit>=?) => {
  try {
    let response = await Fetch.fetch(url, ~init?)
    response->checkOk->Result.mapError(error => ResponseNotOk(error))
  } catch {
  | cause => Error(FetchRejected(cause))
  }
}

let fetchWithRequest = async (request: Request.t, ~init: option<Request.requestInit>=?) => {
  try {
    let response = await Fetch.fetchWithRequest(request, ~init?)
    response->checkOk->Result.mapError(error => ResponseNotOk(error))
  } catch {
  | cause => Error(FetchRejected(cause))
  }
}

let read = async (response: Response.t, readBody: Response.t => promise<'body>) => {
  try {
    Ok({response, body: await readBody(response)})
  } catch {
  | cause => Error({response, cause})
  }
}

let arrayBuffer = response => read(response, Response.arrayBuffer)
let blob = response => read(response, Response.blob)
let bytes = response => read(response, Response.bytes)
let formData = response => read(response, Response.formData)
let json = response => read(response, Response.json)
let text = response => read(response, Response.text)
