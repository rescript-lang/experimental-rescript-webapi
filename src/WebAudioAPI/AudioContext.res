open WebAudioTypes
open DOMTypes
open MediaCaptureAndStreamsTypes

type t = audioContext = {...audioContext}
type baseAudioContext = WebAudioTypes.baseAudioContext = {...WebAudioTypes.baseAudioContext}
type audioContextOptions = WebAudioTypes.audioContextOptions = {
  ...WebAudioTypes.audioContextOptions,
}
type audioTimestamp = WebAudioTypes.audioTimestamp = {...WebAudioTypes.audioTimestamp}

include BaseAudioContext.Impl({type t = t})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioContext)
*/
@new
external make: (~contextOptions: audioContextOptions=?) => t = "AudioContext"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioContext/getOutputTimestamp)
*/
@send
external getOutputTimestamp: t => audioTimestamp = "getOutputTimestamp"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioContext/resume)
*/
@send
external resume: t => promise<unit> = "resume"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioContext/suspend)
*/
@send
external suspend: t => promise<unit> = "suspend"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioContext/close)
*/
@send
external close: t => promise<unit> = "close"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioContext/createMediaElementSource)
*/
@send
external createMediaElementSource: (t, htmlMediaElement) => mediaElementAudioSourceNode =
  "createMediaElementSource"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioContext/createMediaStreamSource)
*/
@send
external createMediaStreamSource: (t, mediaStream) => mediaStreamAudioSourceNode =
  "createMediaStreamSource"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioContext/createMediaStreamDestination)
*/
@send
external createMediaStreamDestination: t => mediaStreamAudioDestinationNode =
  "createMediaStreamDestination"
