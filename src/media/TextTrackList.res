/**
[See TextTrackList on MDN](https://developer.mozilla.org/docs/Web/API/TextTrackList)
*/
type t = private {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextTrackList/length)
    */
  length: int,
}

include EventTarget.Impl({type t = t})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextTrackList/getTrackById)
*/
@send
external getTrackById: (t, string) => WebVttTypes.textTrack = "getTrackById"
