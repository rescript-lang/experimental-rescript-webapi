type t = GeolocationTypes.geolocationPosition = private {...GeolocationTypes.geolocationPosition}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/GeolocationPosition/toJSON)
*/
@send
external toJSON: t => Dict.t<string> = "toJSON"
