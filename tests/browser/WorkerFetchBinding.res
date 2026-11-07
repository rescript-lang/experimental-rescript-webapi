let fetchWithRequest = (request: Request.t, init: Request.requestInit) =>
  Worker.fetchWithRequest(Worker.current, request, ~init)

let fetchWithRequestDefault = (request: Request.t) =>
  Worker.fetchWithRequest(Worker.current, request)

let text = response => Response.text(response)
