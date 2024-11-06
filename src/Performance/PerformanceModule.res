open Prelude
open Event
open Performance

module Performance = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/now)
    */
  @send
  external now: performance => float = "now"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/toJSON)
    */
  @send
  external toJSON: performance => Dict.t<string> = "toJSON"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/getEntries)
    */
  @send
  external getEntries: performance => performanceEntryList = "getEntries"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/getEntriesByType)
    */
  @send
  external getEntriesByType: (performance, string) => performanceEntryList = "getEntriesByType"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/getEntriesByName)
    */
  @send
  external getEntriesByName: (performance, string, string) => performanceEntryList =
    "getEntriesByName"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/clearResourceTimings)
    */
  @send
  external clearResourceTimings: performance => unit = "clearResourceTimings"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/setResourceTimingBufferSize)
    */
  @send
  external setResourceTimingBufferSize: (performance, int) => unit = "setResourceTimingBufferSize"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/mark)
    */
  @send
  external mark: (performance, string, performanceMarkOptions) => performanceMark = "mark"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/clearMarks)
    */
  @send
  external clearMarks: (performance, string) => unit = "clearMarks"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/measure)
    */
  @send
  external measure: (performance, string, unknown, string) => performanceMeasure = "measure"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/clearMeasures)
    */
  @send
  external clearMeasures: (performance, string) => unit = "clearMeasures"
}
