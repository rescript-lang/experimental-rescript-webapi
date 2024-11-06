@@warning("-44")
@@warning("-33")
open Performance

module PerformanceEntry = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceEntry/toJSON)
    */
  @send
  external toJSON: performanceEntry => Dict.t<string> = "toJSON"
}
