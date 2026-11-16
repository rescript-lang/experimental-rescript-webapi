include EventTarget.Impl({type t = WebVttTypes.textTrack})

external asEventTarget: WebVttTypes.textTrack => DOM.eventTarget = "%identity"

@set external setTextTrackMode: (WebVttTypes.textTrack, WebVttTypes.textTrackMode) => unit = "mode"
@set external setCueId: (WebVttTypes.textTrackCue, string) => unit = "id"
@set external setCueStartTime: (WebVttTypes.textTrackCue, float) => unit = "startTime"
@set external setCueEndTime: (WebVttTypes.textTrackCue, float) => unit = "endTime"
@set external setCuePauseOnExit: (WebVttTypes.textTrackCue, bool) => unit = "pauseOnExit"

/**
Adds the given cue to textTrack's text track list of cues.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextTrack/addCue)
*/
@throws(JsExn) @send
external addCue: (WebVttTypes.textTrack, WebVttTypes.textTrackCue) => unit = "addCue"

/**
Removes the given cue from textTrack's text track list of cues.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextTrack/removeCue)
*/
@throws(JsExn) @send
external removeCue: (WebVttTypes.textTrack, WebVttTypes.textTrackCue) => unit = "removeCue"
