let request = WebAPI.Request.fromURL("https://example.invalid")

let fetch = () => WebAPI.Fetch.fetchWithRequest(request)

let read = (response: WebAPI.Response.t) => response->WebAPI.Response.text
