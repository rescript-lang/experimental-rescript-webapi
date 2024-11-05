@@warning("-30")

open Prelude

/**
An object able to programmatically obtain the position of the device. It gives Web content access to the location of the device. This allows a Web site or app to offer customized results based on the user's location.
[See Geolocation on MDN](https://developer.mozilla.org/docs/Web/API/Geolocation)
*/
type geolocation = {}

/**
[See GeolocationCoordinates on MDN](https://developer.mozilla.org/docs/Web/API/GeolocationCoordinates)
*/
type geolocationCoordinates = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/GeolocationCoordinates/accuracy)
    */
  accuracy: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/GeolocationCoordinates/latitude)
    */
  latitude: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/GeolocationCoordinates/longitude)
    */
  longitude: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/GeolocationCoordinates/altitude)
    */
  altitude: Null.t<float>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/GeolocationCoordinates/altitudeAccuracy)
    */
  altitudeAccuracy: Null.t<float>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/GeolocationCoordinates/heading)
    */
  heading: Null.t<float>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/GeolocationCoordinates/speed)
    */
  speed: Null.t<float>,
}

/**
[See GeolocationPosition on MDN](https://developer.mozilla.org/docs/Web/API/GeolocationPosition)
*/
type geolocationPosition = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/GeolocationPosition/coords)
    */
  coords: geolocationCoordinates,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/GeolocationPosition/timestamp)
    */
  timestamp: int,
}

/**
[See GeolocationPositionError on MDN](https://developer.mozilla.org/docs/Web/API/GeolocationPositionError)
*/
type geolocationPositionError = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/GeolocationPositionError/code)
    */
  code: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/GeolocationPositionError/message)
    */
  message: string,
}

type positionOptions = {
  mutable enableHighAccuracy: bool,
  mutable timeout: any,
  mutable maximumAge: any,
}

type positionCallback = geolocationPosition => unit

type positionErrorCallback = geolocationPositionError => unit

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

module GeolocationCoordinates = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/GeolocationCoordinates/toJSON)
    */
  @send
  external toJSON: geolocationCoordinates => Dict.t<string> = "toJSON"
}

module GeolocationPosition = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/GeolocationPosition/toJSON)
    */
  @send
  external toJSON: geolocationPosition => Dict.t<string> = "toJSON"
}
