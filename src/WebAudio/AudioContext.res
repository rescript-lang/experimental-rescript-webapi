include BaseAudioContext.Impl({type t = Types.audioContext})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioContext)
*/
@new
external make: (~contextOptions: Types.audioContextOptions=?) => Types.audioContext = "AudioContext"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioContext/getOutputTimestamp)
*/
@send
external getOutputTimestamp: Types.audioContext => Types.audioTimestamp = "getOutputTimestamp"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioContext/resume)
*/
@send
external resume: Types.audioContext => promise<unit> = "resume"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioContext/suspend)
*/
@send
external suspend: Types.audioContext => promise<unit> = "suspend"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioContext/close)
*/
@send
external close: Types.audioContext => promise<unit> = "close"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioContext/createMediaElementSource)
*/
@send
external createMediaElementSource: (
  Types.audioContext,
  WebApi.DOM.Types.htmlMediaElement,
) => Types.mediaElementAudioSourceNode = "createMediaElementSource"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioContext/createMediaStreamSource)
*/
@send
external createMediaStreamSource: (
  Types.audioContext,
  WebApi.MediaCaptureAndStreams.Types.mediaStream,
) => Types.mediaStreamAudioSourceNode = "createMediaStreamSource"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioContext/createMediaStreamDestination)
*/
@send
external createMediaStreamDestination: Types.audioContext => Types.mediaStreamAudioDestinationNode =
  "createMediaStreamDestination"
