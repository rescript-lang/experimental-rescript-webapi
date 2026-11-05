type user = {name: string}

let decodeUser = json =>
  switch json {
  | JSON.Object(dict{"name": JSON.String(name)}) => Ok({name: name})
  | _ => Error(#InvalidUser)
  }

let loadUser = async url => {
  let? Ok(response) = await WebAPI.SafeFetch.fetch(url)
  let? Ok({body}) = await response->WebAPI.SafeFetch.json
  let? Ok(user) = body->decodeUser
  Ok(user)
}

let loadUserWithRequest = async request => {
  let? Ok(response) = await WebAPI.SafeFetch.fetchWithRequest(request)
  let? Ok({body}) = await response->WebAPI.SafeFetch.json
  let? Ok(user) = body->decodeUser
  Ok(user)
}

type error = [
  | WebAPI.SafeFetch.fetchError
  | WebAPI.SafeFetch.bodyError
  | #InvalidUser
]

let classify = (result: result<user, error>) =>
  switch result {
  | Ok({name}) => name
  | Error(#FetchRejected(_)) => "fetch"
  | Error(#ResponseNotOk(_)) => "status"
  | Error(#BodyReadRejected(_)) => "body"
  | Error(#InvalidUser) => "user"
  }

let consume = async () => {
  let request = WebAPI.Request.fromURL("https://example.invalid")
  let _ = classify(await loadUser("https://example.invalid"))
  classify(await loadUserWithRequest(request))
}

let readCheckedText = async (response: WebAPI.Response.t) => {
  let? Ok(response) = response->WebAPI.SafeFetch.checkOk
  let? Ok({body}) = await response->WebAPI.SafeFetch.text
  Ok(body)
}
