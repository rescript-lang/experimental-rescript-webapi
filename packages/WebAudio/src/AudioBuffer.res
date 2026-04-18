/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBuffer)
*/
@new
external make: Types.audioBufferOptions => Types.audioBuffer = "AudioBuffer"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBuffer/getChannelData)
*/
@send
external getChannelData: (Types.audioBuffer, int) => array<float> = "getChannelData"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBuffer/copyFromChannel)
*/
@send
external copyFromChannel: (
  Types.audioBuffer,
  ~destination: array<float>,
  ~channelNumber: int,
  ~bufferOffset: int=?,
) => unit = "copyFromChannel"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBuffer/copyToChannel)
*/
@send
external copyToChannel: (
  Types.audioBuffer,
  ~source: array<float>,
  ~channelNumber: int,
  ~bufferOffset: int=?,
) => unit = "copyToChannel"
