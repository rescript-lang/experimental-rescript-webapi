type t = WebVttTypes.textTrack = private {...WebVttTypes.textTrack}

include EventTarget.Impl({type t = t})

/**
Adds the given cue to textTrack's text track list of cues.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextTrack/addCue)
*/
@send
external addCue: (t, WebVttTypes.textTrackCue) => unit = "addCue"

/**
Removes the given cue from textTrack's text track list of cues.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextTrack/removeCue)
*/
@send
external removeCue: (t, WebVttTypes.textTrackCue) => unit = "removeCue"
