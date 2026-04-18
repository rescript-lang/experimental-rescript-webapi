include BaseAudioContext.Impl({type t = Types.offlineAudioContext})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/OfflineAudioContext)
*/
@new
external make: Types.offlineAudioContextOptions => Types.offlineAudioContext = "OfflineAudioContext"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/OfflineAudioContext)
*/
@new
external make2: (~numberOfChannels: int, ~length: int, ~sampleRate: float) => Types.offlineAudioContext =
  "OfflineAudioContext"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/OfflineAudioContext/startRendering)
*/
@send
external startRendering: Types.offlineAudioContext => promise<Types.audioBuffer> = "startRendering"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/OfflineAudioContext/resume)
*/
@send
external resume: Types.offlineAudioContext => promise<unit> = "resume"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/OfflineAudioContext/suspend)
*/
@send
external suspend: (Types.offlineAudioContext, float) => promise<unit> = "suspend"
