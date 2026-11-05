let headers = WebAPI.Headers.make()
headers->WebAPI.Headers.set(~name="X-Artifact", ~value="installed")
assert(headers->WebAPI.Headers.get("x-artifact")->Null.getOr("") == "installed")

let response = WebAPI.Response.fromString("packed consumer")
assert(await response->WebAPI.Response.text == "packed consumer")
