@@warning("-44")
@@warning("-33")
open Geolocation

module GeolocationCoordinates = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/GeolocationCoordinates/toJSON)
    */
  @send
  external toJSON: geolocationCoordinates => Dict.t<string> = "toJSON"
}
