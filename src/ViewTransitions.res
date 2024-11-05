@@warning("-30")

open Prelude

/**
[See ViewTransition on MDN](https://developer.mozilla.org/docs/Web/API/ViewTransition)
*/
type viewTransition = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ViewTransition/updateCallbackDone)
    */
  updateCallbackDone: Promise.t<unit>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ViewTransition/ready)
    */
  ready: Promise.t<unit>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ViewTransition/finished)
    */
  finished: Promise.t<unit>,
}

type viewTransitionUpdateCallback = Promise.t<any>

module ViewTransition = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ViewTransition/skipTransition)
    */
  @send
  external skipTransition: viewTransition => unit = "skipTransition"
}
