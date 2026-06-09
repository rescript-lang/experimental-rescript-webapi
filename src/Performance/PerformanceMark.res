type t = PerformanceTypes.performanceMark = private {...PerformanceTypes.performanceMark}
type options = PerformanceTypes.performanceMarkOptions = private {
  ...PerformanceTypes.performanceMarkOptions,
}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceMark)
*/
@new
external make: (~markName: string, ~markOptions: options=?) => t = "PerformanceMark"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceEntry/toJSON)
*/
@send
external toJSON: t => Dict.t<string> = "toJSON"
