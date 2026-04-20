include WebApiEvent.EventTarget.Impl({type t = Types.performance})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/now)
*/
@send
external now: Types.performance => float = "now"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/toJSON)
*/
@send
external toJSON: Types.performance => Dict.t<string> = "toJSON"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/getEntries)
*/
@send
external getEntries: Types.performance => Types.performanceEntryList = "getEntries"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/getEntriesByType)
*/
@send
external getEntriesByType: (Types.performance, string) => Types.performanceEntryList =
  "getEntriesByType"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/getEntriesByName)
*/
@send
external getEntriesByName: (
  Types.performance,
  ~name: string,
  ~type_: string=?,
) => Types.performanceEntryList = "getEntriesByName"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/clearResourceTimings)
*/
@send
external clearResourceTimings: Types.performance => unit = "clearResourceTimings"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/setResourceTimingBufferSize)
*/
@send
external setResourceTimingBufferSize: (Types.performance, int) => unit =
  "setResourceTimingBufferSize"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/mark)
*/
@send
external mark: (
  Types.performance,
  ~markName: string,
  ~markOptions: Types.performanceMarkOptions=?,
) => Types.performanceMark = "mark"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/clearMarks)
*/
@send
external clearMarks: (Types.performance, ~markName: string=?) => unit = "clearMarks"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/measure)
*/
@send
external measure: (
  Types.performance,
  ~measureName: string,
  ~startOrMeasureOptions: string=?,
  ~endMark: string=?,
) => Types.performanceMeasure = "measure"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/measure)
*/
@send
external measure2: (
  Types.performance,
  ~measureName: string,
  ~startOrMeasureOptions: Types.performanceMeasureOptions=?,
  ~endMark: string=?,
) => Types.performanceMeasure = "measure"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/clearMeasures)
*/
@send
external clearMeasures: (Types.performance, ~measureName: string=?) => unit = "clearMeasures"
