open Prelude

module DOMException = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMException)
    */
  @new
  external make: (string, string) => domException = "DOMException"
}
