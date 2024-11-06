@@warning("-44")
@@warning("-33")
open DOMAPI

module AnimationEffect = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnimationEffect/getTiming)
    */
  @send
  external getTiming: animationEffect => effectTiming = "getTiming"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnimationEffect/getComputedTiming)
    */
  @send
  external getComputedTiming: animationEffect => computedEffectTiming = "getComputedTiming"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnimationEffect/updateTiming)
    */
  @send
  external updateTiming: (animationEffect, optionalEffectTiming) => unit = "updateTiming"
}
