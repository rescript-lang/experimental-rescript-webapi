/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Geolocation/getCurrentPosition)
*/
@scope("globalThis.navigator.geolocation")
external getCurrentPosition: (
  ~successCallback: GeolocationTypes.positionCallback,
  ~errorCallback: GeolocationTypes.positionErrorCallback=?,
  ~options: GeolocationTypes.positionOptions=?,
) => unit = "getCurrentPosition"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Geolocation/watchPosition)
*/
@scope("globalThis.navigator.geolocation")
external watchPosition: (
  ~successCallback: GeolocationTypes.positionCallback,
  ~errorCallback: GeolocationTypes.positionErrorCallback=?,
  ~options: GeolocationTypes.positionOptions=?,
) => int = "watchPosition"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Geolocation/clearWatch)
*/
@scope("globalThis.navigator.geolocation")
external clearWatch: int => unit = "clearWatch"

module GeolocationCoordinates = GeolocationCoordinates
module GeolocationPosition = GeolocationPosition
module Types = GeolocationTypes
