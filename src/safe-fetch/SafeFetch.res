type httpError = {
  response: Response.t,
}

type fetchError = [#FetchRejected(exn) | #ResponseNotOk(httpError)]

type readError = {
  response: Response.t,
  cause: exn,
}

type bodyError = [#BodyReadRejected(readError)]

type response<'body> = {
  response: Response.t,
  body: 'body,
}

let checkOk = (response: Response.t) =>
  if Response.ok(response) {
    Ok(response)
  } else {
    Error(#ResponseNotOk({response: response}))
  }

let fetchUrl = async (url, ~init=?) => {
  try {
    let response = await (
      switch init {
      | Some(init) => Fetch.fetch(url, ~init)
      | None => Fetch.fetch(url)
      }
    )
    if Response.ok(response) {
      Ok(response)
    } else {
      Error(#ResponseNotOk({response: response}))
    }
  } catch {
  | cause => Error(#FetchRejected(cause))
  }
}

let fetchWithRequest = async (request, ~init=?) => {
  try {
    let response = await (
      switch init {
      | Some(init) => Fetch.fetchWithRequest(request, ~init)
      | None => Fetch.fetchWithRequest(request)
      }
    )
    if Response.ok(response) {
      Ok(response)
    } else {
      Error(#ResponseNotOk({response: response}))
    }
  } catch {
  | cause => Error(#FetchRejected(cause))
  }
}

// Bind the public name after both native calls so it cannot shadow JavaScript fetch.
let fetch = fetchUrl

let read = async (response, readBody) => {
  try {
    Ok({response, body: await readBody(response)})
  } catch {
  | cause => Error(#BodyReadRejected({response, cause}))
  }
}

let arrayBuffer = response => read(response, Response.arrayBuffer)
let blob = response => read(response, Response.blob)
let bytes = response => read(response, Response.bytes)
let formData = response => read(response, Response.formData)
let json = response => read(response, Response.json)
let text = response => read(response, Response.text)
