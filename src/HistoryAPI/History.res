open HistoryTypes

type t = HistoryTypes.history = {...HistoryTypes.history}

external current: t = "history"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/History/go)
*/
@send
external go: (t, ~delta: int=?) => unit = "go"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/History/back)
*/
@send
external back: t => unit = "back"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/History/forward)
*/
@send
external forward: t => unit = "forward"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/History/pushState)
*/
@send
external pushState: (t, ~data: JSON.t, ~unused: string, ~url: string=?) => unit = "pushState"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/History/replaceState)
*/
@send
external replaceState: (t, ~data: JSON.t, ~unused: string, ~url: string=?) => unit =
  "replaceState"
