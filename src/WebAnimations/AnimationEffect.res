type t = WebAnimationsTypes.animationEffect = private {...WebAnimationsTypes.animationEffect}
type timing = WebAnimationsTypes.effectTiming = {...WebAnimationsTypes.effectTiming}
type computedTiming = WebAnimationsTypes.computedEffectTiming = {
  ...WebAnimationsTypes.computedEffectTiming,
}
type optionalTiming = WebAnimationsTypes.optionalEffectTiming = {
  ...WebAnimationsTypes.optionalEffectTiming,
}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnimationEffect/getTiming)
*/
@send
external getTiming: t => timing = "getTiming"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnimationEffect/getComputedTiming)
*/
@send
external getComputedTiming: t => computedTiming = "getComputedTiming"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnimationEffect/updateTiming)
*/
@send
external updateTiming: (t, ~timing: optionalTiming=?) => unit = "updateTiming"
