@@warning("-30")

open Prelude

type scrollRestoration =
  | @as("auto") Auto
  | @as("manual") Manual

/**
Allows manipulation of the browser session history, that is the pages visited in the tab or frame that the current page is loaded in.
[See History on MDN](https://developer.mozilla.org/docs/Web/API/History)
*/
type history = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/History/length)
    */
  length: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/History/scrollRestoration)
    */
  mutable scrollRestoration: scrollRestoration,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/History/state)
    */
  state: any,
}

module History = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/History/go)
    */
  @send
  external go: (history, int) => unit = "go"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/History/back)
    */
  @send
  external back: history => unit = "back"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/History/forward)
    */
  @send
  external forward: history => unit = "forward"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/History/pushState)
    */
  @send
  external pushState: (history, any, string, string) => unit = "pushState"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/History/replaceState)
    */
  @send
  external replaceState: (history, any, string, string) => unit = "replaceState"
}
