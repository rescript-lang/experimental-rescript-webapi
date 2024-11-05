@@warning("-30")

open Event

type wakeLockType = | @as("screen") Screen

/**
[See WakeLock on MDN](https://developer.mozilla.org/docs/Web/API/WakeLock)
*/
type wakeLock = {}

/**
[See WakeLockSentinel on MDN](https://developer.mozilla.org/docs/Web/API/WakeLockSentinel)
*/
type wakeLockSentinel = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WakeLockSentinel/released)
    */
  released: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WakeLockSentinel/type)
    */
  @as("type")
  type_: wakeLockType,
}

module WakeLock = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WakeLock/request)
    */
  @send
  external request: (wakeLock, wakeLockType) => Promise.t<wakeLockSentinel> = "request"
}

module WakeLockSentinel = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WakeLockSentinel/release)
    */
  @send
  external release: wakeLockSentinel => Promise.t<unit> = "release"
}
