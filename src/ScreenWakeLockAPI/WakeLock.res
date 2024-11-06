open ScreenWakeLockAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WakeLock/request)
*/
@send
external request: (wakeLock, wakeLockType) => Promise.t<wakeLockSentinel> = "request"
