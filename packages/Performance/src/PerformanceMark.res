/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceMark)
*/
@new
external make: (~markName: string, ~markOptions: Types.performanceMarkOptions=?) => Types.performanceMark =
  "PerformanceMark"

external asPerformanceEntry: Types.performanceMark => Types.performanceEntry = "%identity"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceEntry/toJSON)
*/
@send
external toJSON: Types.performanceMark => Dict.t<string> = "toJSON"
