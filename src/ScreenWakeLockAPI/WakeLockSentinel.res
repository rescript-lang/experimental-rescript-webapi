@@warning("-44")
@@warning("-33")
open ScreenWakeLockAPI

module WakeLockSentinel = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WakeLockSentinel/release)
    */
  @send
  external release: wakeLockSentinel => Promise.t<unit> = "release"
}
