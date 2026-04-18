type t = Types.mediaDeviceInfo = {...Types.mediaDeviceInfo}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaDeviceInfo/toJSON)
*/
@send
external toJSON: t => Dict.t<string> = "toJSON"
