include WebApiEvent.EventTarget.Impl({type t = Types.textTrackList})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextTrackList/getTrackById)
*/
@send
external getTrackById: (Types.textTrackList, string) => WebApiWebVTT.Types.textTrack = "getTrackById"
