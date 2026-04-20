include BaseAudioContext.Impl({type t = Types.offlineAudioContext})

/**
`fromOptions(offlineAudioContextOptions)`

Creates a new `OfflineAudioContext` from `offlineAudioContextOptions`.

```res
let context = OfflineAudioContext.fromOptions(myOfflineAudioContextOptions)
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/OfflineAudioContext)
*/
@new
external fromOptions: Types.offlineAudioContextOptions => Types.offlineAudioContext =
  "OfflineAudioContext"

/**
`fromChannelCountLengthAndSampleRate(~numberOfChannels: int, ~length: int, ~sampleRate: float)`

Creates a new `OfflineAudioContext` from explicit channel, length, and sample-rate values.

```res
let context =
  OfflineAudioContext.fromChannelCountLengthAndSampleRate(
    ~numberOfChannels=2,
    ~length=44_100,
    ~sampleRate=44_100.,
  )
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/OfflineAudioContext)
*/
@new
external fromChannelCountLengthAndSampleRate: (
  ~numberOfChannels: int,
  ~length: int,
  ~sampleRate: float,
) => Types.offlineAudioContext = "OfflineAudioContext"

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
