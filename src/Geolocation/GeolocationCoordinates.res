type t = GeolocationTypes.geolocationCoordinates = private {
  ...GeolocationTypes.geolocationCoordinates,
}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/GeolocationCoordinates/toJSON)
*/
@send
external toJSON: t => Dict.t<string> = "toJSON"
