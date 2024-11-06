@@warning("-44")
@@warning("-33")
open History
open Prelude

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
