let fetchWithRequest = request =>
  Worker.fetchWithRequest(Worker.current, request, ~init={method: "POST"})

let text = response => Response.text(response)
