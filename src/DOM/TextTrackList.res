include Event.EventTarget.Impl({type t = DomTypes.textTrackList})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextTrackList/getTrackById)
*/
@send
external getTrackById: (DomTypes.textTrackList, string) => WebVTT.Types.textTrack = "getTrackById"
