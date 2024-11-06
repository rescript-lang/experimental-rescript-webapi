open Prelude
open ChannelMessaging
open Event
open DOM
open MediaCaptureAndStreams
open WebAudio

module AudioContext = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioContext)
    */
  @new
  external make: audioContextOptions => audioContext = "AudioContext"
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioContext/getOutputTimestamp)
    */
  @send
  external getOutputTimestamp: audioContext => audioTimestamp = "getOutputTimestamp"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioContext/resume)
    */
  @send
  external resume: audioContext => Promise.t<unit> = "resume"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioContext/suspend)
    */
  @send
  external suspend: audioContext => Promise.t<unit> = "suspend"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioContext/close)
    */
  @send
  external close: audioContext => Promise.t<unit> = "close"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioContext/createMediaElementSource)
    */
  @send
  external createMediaElementSource: (
    audioContext,
    htmlMediaElement,
  ) => mediaElementAudioSourceNode = "createMediaElementSource"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioContext/createMediaStreamSource)
    */
  @send
  external createMediaStreamSource: (audioContext, mediaStream) => mediaStreamAudioSourceNode =
    "createMediaStreamSource"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioContext/createMediaStreamDestination)
    */
  @send
  external createMediaStreamDestination: audioContext => mediaStreamAudioDestinationNode =
    "createMediaStreamDestination"
}
