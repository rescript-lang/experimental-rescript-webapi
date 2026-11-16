include EventTarget.Impl({type t = ScreenWakeLockTypes.wakeLockSentinel})

external asEventTarget: ScreenWakeLockTypes.wakeLockSentinel => DOM.eventTarget = "%identity"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WakeLockSentinel/release)
*/
@send
external release: ScreenWakeLockTypes.wakeLockSentinel => promise<unit> = "release"
