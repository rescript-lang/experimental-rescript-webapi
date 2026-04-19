include BaseAudioContext.Impl({type t = Types.offlineAudioContext})

/**
`fromOptions(offlineAudioContextOptions)`

The OfflineAudioContext() constructor creates a new OfflineAudioContext from an options record.

Source shape:
- local [`offlineAudioContextOptions`](../#offlineAudioContextOptions) values accepted by MDN [OfflineAudioContext()](https://developer.mozilla.org/docs/Web/API/OfflineAudioContext/OfflineAudioContext).

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

The OfflineAudioContext() constructor creates a new OfflineAudioContext from explicit channel-count, length, and sample-rate values.

Source shape:
- numeric `numberOfChannels`, `length`, and `sampleRate` values accepted by MDN [OfflineAudioContext()](https://developer.mozilla.org/docs/Web/API/OfflineAudioContext/OfflineAudioContext).

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
