open Prelude
open Event
open Performance

module PerformanceMark = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceMark)
    */
  @new
  external make: (string, performanceMarkOptions) => performanceMark = "PerformanceMark"
}
