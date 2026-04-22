include WebApi.Event.EventTarget.Impl({type t = Types.textTrack})

/**
Adds the given cue to textTrack's text track list of cues.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextTrack/addCue)
*/
@send
external addCue: (Types.textTrack, Types.textTrackCue) => unit = "addCue"

/**
Removes the given cue from textTrack's text track list of cues.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextTrack/removeCue)
*/
@send
external removeCue: (Types.textTrack, Types.textTrackCue) => unit = "removeCue"
