/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/History/go)
*/
@throws(JsExn) @send
external go: (HistoryTypes.history, ~delta: int=?) => unit = "go"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/History/back)
*/
@throws(JsExn) @send
external back: HistoryTypes.history => unit = "back"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/History/forward)
*/
@throws(JsExn) @send
external forward: HistoryTypes.history => unit = "forward"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/History/pushState)
*/
@throws(JsExn) @send
external pushState: (HistoryTypes.history, ~data: JSON.t, ~unused: string, ~url: string=?) => unit =
  "pushState"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/History/replaceState)
*/
@throws(JsExn) @send
external replaceState: (
  HistoryTypes.history,
  ~data: JSON.t,
  ~unused: string,
  ~url: string=?,
) => unit = "replaceState"

module Types = HistoryTypes
