open WebAudioAPI

include BaseAudioContext.Impl({
  type t = offlineAudioContext
})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/OfflineAudioContext)
*/
@new
external make: offlineAudioContextOptions => offlineAudioContext = "OfflineAudioContext"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/OfflineAudioContext)
*/
@new
external make2: (~numberOfChannels: int, ~length: int, ~sampleRate: float) => offlineAudioContext =
  "OfflineAudioContext"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/OfflineAudioContext/startRendering)
*/
@send
external startRendering: offlineAudioContext => Promise.t<audioBuffer> = "startRendering"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/OfflineAudioContext/resume)
*/
@send
external resume: offlineAudioContext => Promise.t<unit> = "resume"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/OfflineAudioContext/suspend)
*/
@send
external suspend: (offlineAudioContext, float) => Promise.t<unit> = "suspend"
