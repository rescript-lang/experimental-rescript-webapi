@@warning("-33")
open ViewTransitionsAPI

module ViewTransition = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ViewTransition/skipTransition)
    */
  @send
  external skipTransition: viewTransition => unit = "skipTransition"
}
