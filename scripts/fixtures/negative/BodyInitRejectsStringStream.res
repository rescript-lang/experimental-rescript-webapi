let stream: WebAPI.ReadableStream.t<string> = WebAPI.ReadableStream.make()
let _body = WebAPI.BodyInit.fromReadableStream(stream)
