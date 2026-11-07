let fetchWithRequest = (request: Request.t, init: Request.requestInit) =>
  Worker.fetchWithRequest(Worker.current, request, ~init)

let text = response => Response.text(response)
