let stream: WebAPI.ReadableStream.t<string> = WebAPI.ReadableStream.make()
let _response = WebAPI.Response.fromReadableStream(stream)
