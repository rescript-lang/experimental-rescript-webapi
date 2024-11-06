open EventAPI
open Prelude

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbortSignal/abort_static)
*/
@scope("AbortSignal")
external abort: any => abortSignal = "abort"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbortSignal/timeout_static)
*/
@scope("AbortSignal")
external timeout: int => abortSignal = "timeout"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbortSignal/any_static)
*/
@scope("AbortSignal")
external any: array<abortSignal> => abortSignal = "any"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbortSignal/throwIfAborted)
*/
@send
external throwIfAborted: abortSignal => unit = "throwIfAborted"
