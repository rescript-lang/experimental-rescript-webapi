@@warning("-33")
open PerformanceAPI

module PerformanceEntry = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceEntry/toJSON)
    */
  @send
  external toJSON: performanceEntry => Dict.t<string> = "toJSON"
}
