/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySystemAccess/getConfiguration)
*/
@send
external getConfiguration: Types.mediaKeySystemAccess => Types.mediaKeySystemConfiguration =
  "getConfiguration"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySystemAccess/createMediaKeys)
*/
@send
external createMediaKeys: Types.mediaKeySystemAccess => promise<Types.mediaKeys> = "createMediaKeys"
