type t = EventTypes.abortSignal = private {...EventTypes.abortSignal}

include EventTarget.Impl({type t = t})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbortSignal/abort_static)
*/
@scope("AbortSignal")
external abort: (~reason: JSON.t=?) => t = "abort"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbortSignal/timeout_static)
*/
@scope("AbortSignal")
external timeout: int => t = "timeout"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbortSignal/any_static)
*/
@scope("AbortSignal")
external any: array<t> => t = "any"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbortSignal/throwIfAborted)
*/
@send
external throwIfAborted: t => unit = "throwIfAborted"
