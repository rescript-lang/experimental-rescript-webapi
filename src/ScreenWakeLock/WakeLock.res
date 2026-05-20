/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WakeLock/request)
*/
@scope("globalThis.navigator.wakeLock")
external request: (
  ~type_: ScreenWakeLockTypes.wakeLockType=?,
) => promise<ScreenWakeLockTypes.wakeLockSentinel> = "request"
