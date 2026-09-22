let fromUrl = (url: string, ~init: option<Request.requestInit>=?) => Fetch.fetch(url, ~init?)

let fromRequest = (request: Request.t, ~init: option<Request.requestInit>=?) =>
  Fetch.fetchWithRequest(request, ~init?)
