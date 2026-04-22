include BaseAudioContext.Impl({type t = WebAudioTypes.offlineAudioContext})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/OfflineAudioContext)
*/
@new
external make: WebAudioTypes.offlineAudioContextOptions => WebAudioTypes.offlineAudioContext =
  "OfflineAudioContext"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/OfflineAudioContext)
*/
@new
external make2: (
  ~numberOfChannels: int,
  ~length: int,
  ~sampleRate: float,
) => WebAudioTypes.offlineAudioContext = "OfflineAudioContext"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/OfflineAudioContext/startRendering)
*/
@send
external startRendering: WebAudioTypes.offlineAudioContext => promise<WebAudioTypes.audioBuffer> =
  "startRendering"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/OfflineAudioContext/resume)
*/
@send
external resume: WebAudioTypes.offlineAudioContext => promise<unit> = "resume"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/OfflineAudioContext/suspend)
*/
@send
external suspend: (WebAudioTypes.offlineAudioContext, float) => promise<unit> = "suspend"
