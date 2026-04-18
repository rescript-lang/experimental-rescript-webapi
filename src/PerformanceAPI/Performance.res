open PerformanceTypes

type t = PerformanceTypes.performance = {...PerformanceTypes.performance}

external current: t = "performance"

include EventTarget.Impl({type t = t})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/now)
*/
@send
external now: t => float = "now"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/toJSON)
*/
@send
external toJSON: t => Dict.t<string> = "toJSON"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/getEntries)
*/
@send
external getEntries: t => performanceEntryList = "getEntries"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/getEntriesByType)
*/
@send
external getEntriesByType: (t, string) => performanceEntryList = "getEntriesByType"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/getEntriesByName)
*/
@send
external getEntriesByName: (t, ~name: string, ~type_: string=?) => performanceEntryList =
  "getEntriesByName"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/clearResourceTimings)
*/
@send
external clearResourceTimings: t => unit = "clearResourceTimings"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/setResourceTimingBufferSize)
*/
@send
external setResourceTimingBufferSize: (t, int) => unit = "setResourceTimingBufferSize"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/mark)
*/
@send
external mark: (t, ~markName: string, ~markOptions: performanceMarkOptions=?) => performanceMark =
  "mark"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/clearMarks)
*/
@send
external clearMarks: (t, ~markName: string=?) => unit = "clearMarks"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/measure)
*/
@send
external measure: (
  t,
  ~measureName: string,
  ~startOrMeasureOptions: string=?,
  ~endMark: string=?,
) => performanceMeasure = "measure"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/measure)
*/
@send
external measureWithOptions: (
  t,
  ~measureName: string,
  ~startOrMeasureOptions: performanceMeasureOptions=?,
  ~endMark: string=?,
) => performanceMeasure = "measure"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/clearMeasures)
*/
@send
external clearMeasures: (t, ~measureName: string=?) => unit = "clearMeasures"
