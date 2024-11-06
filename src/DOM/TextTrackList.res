@@warning("-44")
@@warning("-33")
open WebVTT
open DOM

module TextTrackList = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextTrackList/getTrackById)
    */
  @send
  external getTrackById: (textTrackList, string) => textTrack = "getTrackById"
}
