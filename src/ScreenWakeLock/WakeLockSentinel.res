type t = ScreenWakeLockTypes.wakeLockSentinel = private {
  ...ScreenWakeLockTypes.wakeLockSentinel,
}

include EventTarget.Impl({type t = t})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WakeLockSentinel/release)
*/
@send
external release: t => promise<unit> = "release"
