open ScreenWakeLockAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WakeLockSentinel/release)
*/
@send
external release: wakeLockSentinel => Promise.t<unit> = "release"
