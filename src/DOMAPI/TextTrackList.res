open WebVTTAPI
open DOMAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextTrackList/getTrackById)
*/
@send
external getTrackById: (textTrackList, string) => textTrack = "getTrackById"
