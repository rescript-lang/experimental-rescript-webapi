type t = WebAudioTypes.audioBuffer

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBuffer)
*/
@throws(JsExn) @new
external make: WebAudioTypes.audioBufferOptions => WebAudioTypes.audioBuffer = "AudioBuffer"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBuffer/getChannelData)
*/
@throws(JsExn) @send
external getChannelData: (WebAudioTypes.audioBuffer, int) => Float32Array.t = "getChannelData"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBuffer/copyFromChannel)
*/
@throws(JsExn) @send
external copyFromChannel: (
  WebAudioTypes.audioBuffer,
  ~destination: Float32Array.t,
  ~channelNumber: int,
  ~bufferOffset: int=?,
) => unit = "copyFromChannel"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBuffer/copyToChannel)
*/
@throws(JsExn) @send
external copyToChannel: (
  WebAudioTypes.audioBuffer,
  ~source: Float32Array.t,
  ~channelNumber: int,
  ~bufferOffset: int=?,
) => unit = "copyToChannel"
