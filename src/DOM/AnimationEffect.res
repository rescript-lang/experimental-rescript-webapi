/**
[See AnimationEffect on MDN](https://developer.mozilla.org/docs/Web/API/AnimationEffect)
*/
type t = private {}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnimationEffect/getTiming)
*/
@send
external getTiming: t => DomTypes.effectTiming = "getTiming"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnimationEffect/getComputedTiming)
*/
@send
external getComputedTiming: t => DomTypes.computedEffectTiming = "getComputedTiming"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnimationEffect/updateTiming)
*/
@send
external updateTiming: (t, ~timing: DomTypes.optionalEffectTiming=?) => unit = "updateTiming"
