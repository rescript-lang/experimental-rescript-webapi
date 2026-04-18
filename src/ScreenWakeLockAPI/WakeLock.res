open ScreenWakeLockTypes

type t = ScreenWakeLockTypes.wakeLock = {}

external current: t = "wakeLock"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WakeLock/request)
*/
@send
external request: (t, ~type_: wakeLockType=?) => promise<wakeLockSentinel> = "request"
