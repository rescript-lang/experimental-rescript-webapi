@@warning("-44")
@@warning("-33")
open ScreenWakeLock

module WakeLock = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WakeLock/request)
    */
  @send
  external request: (wakeLock, wakeLockType) => Promise.t<wakeLockSentinel> = "request"
}
