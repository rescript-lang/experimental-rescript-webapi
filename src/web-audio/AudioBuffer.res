/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBuffer)
*/
@throws(JsExn) @new
external make: WebAudioTypes.audioBufferOptions => WebAudioTypes.audioBuffer = "AudioBuffer"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBuffer/getChannelData)
*/
@throws(JsExn) @send
external getChannelData: (WebAudioTypes.audioBuffer, int) => array<float> = "getChannelData"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBuffer/copyFromChannel)
*/
@throws(JsExn) @send
external copyFromChannel: (
  WebAudioTypes.audioBuffer,
  ~destination: array<float>,
  ~channelNumber: int,
  ~bufferOffset: int=?,
) => unit = "copyFromChannel"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBuffer/copyToChannel)
*/
@throws(JsExn) @send
external copyToChannel: (
  WebAudioTypes.audioBuffer,
  ~source: array<float>,
  ~channelNumber: int,
  ~bufferOffset: int=?,
) => unit = "copyToChannel"
