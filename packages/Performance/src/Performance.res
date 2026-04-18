include WebApiEvent.EventTarget.Impl({type t = Types.performance})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiPerformance/now)
*/
@send
external now: Types.performance => float = "now"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiPerformance/toJSON)
*/
@send
external toJSON: Types.performance => Dict.t<string> = "toJSON"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiPerformance/getEntries)
*/
@send
external getEntries: Types.performance => Types.performanceEntryList = "getEntries"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiPerformance/getEntriesByType)
*/
@send
external getEntriesByType: (Types.performance, string) => Types.performanceEntryList =
  "getEntriesByType"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiPerformance/getEntriesByName)
*/
@send
external getEntriesByName: (
  Types.performance,
  ~name: string,
  ~type_: string=?,
) => Types.performanceEntryList = "getEntriesByName"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiPerformance/clearResourceTimings)
*/
@send
external clearResourceTimings: Types.performance => unit = "clearResourceTimings"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiPerformance/setResourceTimingBufferSize)
*/
@send
external setResourceTimingBufferSize: (Types.performance, int) => unit =
  "setResourceTimingBufferSize"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiPerformance/mark)
*/
@send
external mark: (
  Types.performance,
  ~markName: string,
  ~markOptions: Types.performanceMarkOptions=?,
) => Types.performanceMark = "mark"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiPerformance/clearMarks)
*/
@send
external clearMarks: (Types.performance, ~markName: string=?) => unit = "clearMarks"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiPerformance/measure)
*/
@send
external measure: (
  Types.performance,
  ~measureName: string,
  ~startOrMeasureOptions: string=?,
  ~endMark: string=?,
) => Types.performanceMeasure = "measure"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiPerformance/measure)
*/
@send
external measure2: (
  Types.performance,
  ~measureName: string,
  ~startOrMeasureOptions: Types.performanceMeasureOptions=?,
  ~endMark: string=?,
) => Types.performanceMeasure = "measure"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiPerformance/clearMeasures)
*/
@send
external clearMeasures: (Types.performance, ~measureName: string=?) => unit = "clearMeasures"
