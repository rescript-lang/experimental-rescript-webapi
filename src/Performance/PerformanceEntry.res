type t = PerformanceTypes.performanceEntry = private {...PerformanceTypes.performanceEntry}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceEntry/toJSON)
*/
@send
external toJSON: t => Dict.t<string> = "toJSON"
