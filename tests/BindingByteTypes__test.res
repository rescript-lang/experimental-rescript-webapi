let _requestBytes: promise<Uint8Array.t> = Request.fromURL("/")->Request.bytes
let _responseBytes: promise<Uint8Array.t> = Response.fromString("")->Response.bytes
let _blobBytes: promise<Uint8Array.t> = Blob.make()->Blob.bytes
let _blobStream: ReadableStream.t<Uint8Array.t> = Blob.make()->Blob.stream

let _analyserFloat: (
  WebAudioTypes.analyserNode,
  Float32Array.t,
) => unit = AnalyserNode.getFloatTimeDomainData
let _analyserByte: (
  WebAudioTypes.analyserNode,
  Uint8Array.t,
) => unit = AnalyserNode.getByteTimeDomainData
let _audioBuffer: (WebAudioTypes.audioBuffer, int) => Float32Array.t = AudioBuffer.getChannelData

let _sign: SubtleCrypto.keyUsage = WebCryptoTypes.Sign
