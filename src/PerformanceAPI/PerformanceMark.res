open PerformanceAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceMark)
*/
@new
external make: (string, performanceMarkOptions) => performanceMark = "PerformanceMark"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceEntry/toJSON)
*/
@send
external toJSON: performanceMark => Dict.t<string> = "toJSON"
