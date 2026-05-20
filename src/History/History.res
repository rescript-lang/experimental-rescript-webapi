/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/History/go)
*/
@scope("globalThis.history")
external go: (~delta: int=?) => unit = "go"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/History/back)
*/
@scope("globalThis.history")
external back: unit => unit = "back"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/History/forward)
*/
@scope("globalThis.history")
external forward: unit => unit = "forward"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/History/pushState)
*/
@scope("globalThis.history")
external pushState: (~data: JSON.t, ~unused: string, ~url: string=?) => unit = "pushState"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/History/replaceState)
*/
@scope("globalThis.history")
external replaceState: (~data: JSON.t, ~unused: string, ~url: string=?) => unit = "replaceState"

module Types = HistoryTypes
