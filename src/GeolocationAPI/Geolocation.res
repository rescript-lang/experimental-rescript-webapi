@@warning("-33")
open GeolocationAPI

module Geolocation = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Geolocation/getCurrentPosition)
    */
  @send
  external getCurrentPosition: (
    geolocation,
    positionCallback,
    positionErrorCallback,
    positionOptions,
  ) => unit = "getCurrentPosition"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Geolocation/watchPosition)
    */
  @send
  external watchPosition: (
    geolocation,
    positionCallback,
    positionErrorCallback,
    positionOptions,
  ) => int = "watchPosition"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Geolocation/clearWatch)
    */
  @send
  external clearWatch: (geolocation, int) => unit = "clearWatch"
}
