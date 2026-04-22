/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnimationEffect/getTiming)
*/
@send
external getTiming: Types.animationEffect => Types.effectTiming = "getTiming"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnimationEffect/getComputedTiming)
*/
@send
external getComputedTiming: Types.animationEffect => Types.computedEffectTiming =
  "getComputedTiming"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnimationEffect/updateTiming)
*/
@send
external updateTiming: (Types.animationEffect, ~timing: Types.optionalEffectTiming=?) => unit =
  "updateTiming"
