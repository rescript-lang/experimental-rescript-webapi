type t = ViewTransitionsTypes.viewTransition = private {
  ...ViewTransitionsTypes.viewTransition,
}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ViewTransition/skipTransition)
*/
@send
external skipTransition: t => unit = "skipTransition"
