include EventTarget.Impl({type t = PerformanceTypes.performance})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/now)
*/
@scope("globalThis.performance")
external now: unit => float = "now"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/toJSON)
*/
@scope("globalThis.performance")
external toJSON: unit => Dict.t<string> = "toJSON"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/getEntries)
*/
@scope("globalThis.performance")
external getEntries: unit => PerformanceTypes.performanceEntryList = "getEntries"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/getEntriesByType)
*/
@scope("globalThis.performance")
external getEntriesByType: string => PerformanceTypes.performanceEntryList = "getEntriesByType"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/getEntriesByName)
*/
@scope("globalThis.performance")
external getEntriesByName: (
  ~name: string,
  ~type_: string=?,
) => PerformanceTypes.performanceEntryList = "getEntriesByName"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/clearResourceTimings)
*/
@scope("globalThis.performance")
external clearResourceTimings: unit => unit = "clearResourceTimings"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/setResourceTimingBufferSize)
*/
@scope("globalThis.performance")
external setResourceTimingBufferSize: int => unit = "setResourceTimingBufferSize"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/mark)
*/
@scope("globalThis.performance")
external mark: (
  ~markName: string,
  ~markOptions: PerformanceTypes.performanceMarkOptions=?,
) => PerformanceTypes.performanceMark = "mark"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/clearMarks)
*/
@scope("globalThis.performance")
external clearMarks: (~markName: string=?) => unit = "clearMarks"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/measure)
*/
@scope("globalThis.performance")
external measure: (
  ~measureName: string,
  ~startOrMeasureOptions: string=?,
  ~endMark: string=?,
) => PerformanceTypes.performanceMeasure = "measure"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/measure)
*/
@scope("globalThis.performance")
external measure2: (
  ~measureName: string,
  ~startOrMeasureOptions: PerformanceTypes.performanceMeasureOptions=?,
  ~endMark: string=?,
) => PerformanceTypes.performanceMeasure = "measure"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/clearMeasures)
*/
@scope("globalThis.performance")
external clearMeasures: (~measureName: string=?) => unit = "clearMeasures"

module PerformanceEntry = PerformanceEntry
module PerformanceMark = PerformanceMark
module Types = PerformanceTypes
