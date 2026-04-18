/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Geolocation/getCurrentPosition)
*/
@send
external getCurrentPosition: (
  Types.geolocation,
  ~successCallback: Types.positionCallback,
  ~errorCallback: Types.positionErrorCallback=?,
  ~options: Types.positionOptions=?,
) => unit = "getCurrentPosition"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Geolocation/watchPosition)
*/
@send
external watchPosition: (
  Types.geolocation,
  ~successCallback: Types.positionCallback,
  ~errorCallback: Types.positionErrorCallback=?,
  ~options: Types.positionOptions=?,
) => int = "watchPosition"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Geolocation/clearWatch)
*/
@send
external clearWatch: (Types.geolocation, int) => unit = "clearWatch"
