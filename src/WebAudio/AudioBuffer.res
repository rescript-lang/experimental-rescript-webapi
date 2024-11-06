open Prelude
open ChannelMessaging
open Event
open DOM
open MediaCaptureAndStreams
open WebAudio

module AudioBuffer = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBuffer)
    */
  @new
  external make: audioBufferOptions => audioBuffer = "AudioBuffer"
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBuffer/getChannelData)
    */
  @send
  external getChannelData: (audioBuffer, int) => array<float> = "getChannelData"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBuffer/copyFromChannel)
    */
  @send
  external copyFromChannel: (audioBuffer, array<float>, int, int) => unit = "copyFromChannel"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBuffer/copyToChannel)
    */
  @send
  external copyToChannel: (audioBuffer, array<float>, int, int) => unit = "copyToChannel"
}
