/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WakeLock/request)
*/
@send
external request: (Types.wakeLock, ~type_: Types.wakeLockType=?) => promise<Types.wakeLockSentinel> = "request"
