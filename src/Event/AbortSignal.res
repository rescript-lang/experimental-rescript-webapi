include EventTarget.Impl({type t = Types.abortSignal})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbortSignal/abort_static)
*/
@scope("AbortSignal")
external abort: (~reason: JSON.t=?) => Types.abortSignal = "abort"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbortSignal/timeout_static)
*/
@scope("AbortSignal")
external timeout: int => Types.abortSignal = "timeout"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbortSignal/any_static)
*/
@scope("AbortSignal")
external any: array<Types.abortSignal> => Types.abortSignal = "any"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbortSignal/throwIfAborted)
*/
@send
external throwIfAborted: Types.abortSignal => unit = "throwIfAborted"
