type t = Types.mediaStream = private {...Types.mediaStream}

/**
`make()`

The MediaStream() constructor creates a new empty MediaStream.

Source shape:
- no source input; this constructor creates a fresh MDN [MediaStream](https://developer.mozilla.org/docs/Web/API/MediaStream).

```res
let stream = MediaStream.make()
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream)
*/
@new
external make: unit => t = "MediaStream"

/**
`fromMediaStream(mediaStream)`

The MediaStream() constructor creates a new MediaStream by copying another MediaStream source.

Source shape:
- local [`MediaStream.t`](#t) mapped to MDN [MediaStream](https://developer.mozilla.org/docs/Web/API/MediaStream).

```res
let copiedStream = MediaStream.fromMediaStream(existingStream)
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream)
*/
@new
external fromMediaStream: t => t = "MediaStream"

/**
`fromTracks(array<MediaStreamTrack.t>)`

The MediaStream() constructor creates a new MediaStream from an array of MediaStreamTrack values.

Source shape:
- ReScript [array](https://rescript-lang.org/docs/manual/api/stdlib/array) of local [`MediaStreamTrack.t`](./media-stream-track#t) values mapped to MDN [MediaStreamTrack](https://developer.mozilla.org/docs/Web/API/MediaStreamTrack).

```res
let stream = MediaStream.fromTracks([audioTrack, videoTrack])
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream)
*/
@new
external fromTracks: array<MediaStreamTrack.t> => t = "MediaStream"

include WebApiEvent.EventTarget.Impl({type t = t})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream/getAudioTracks)
*/
@send
external getAudioTracks: t => array<MediaStreamTrack.t> = "getAudioTracks"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream/getVideoTracks)
*/
@send
external getVideoTracks: t => array<MediaStreamTrack.t> = "getVideoTracks"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream/getTracks)
*/
@send
external getTracks: t => array<MediaStreamTrack.t> = "getTracks"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream/getTrackById)
*/
@send
external getTrackById: (t, string) => MediaStreamTrack.t = "getTrackById"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream/addTrack)
*/
@send
external addTrack: (t, MediaStreamTrack.t) => unit = "addTrack"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream/removeTrack)
*/
@send
external removeTrack: (t, MediaStreamTrack.t) => unit = "removeTrack"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream/clone)
*/
@send
external clone: t => t = "clone"
