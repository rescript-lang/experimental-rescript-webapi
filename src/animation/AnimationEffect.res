/**
[See AnimationEffect on MDN](https://developer.mozilla.org/docs/Web/API/AnimationEffect)
*/
type t = private {}

type fillMode =
  | @as("auto") Auto
  | @as("backwards") Backwards
  | @as("both") Both
  | @as("forwards") Forwards
  | @as("none") None

type playbackDirection =
  | @as("alternate") Alternate
  | @as("alternate-reverse") AlternateReverse
  | @as("normal") Normal
  | @as("reverse") Reverse

type effectTiming = {
  mutable fill?: fillMode,
  mutable iterationStart?: float,
  mutable iterations?: float,
  mutable direction?: playbackDirection,
  mutable easing?: string,
  mutable delay?: float,
  mutable endDelay?: float,
  mutable playbackRate?: float,
  mutable duration?: unknown,
}

type getAnimationsOptions = {mutable subtree?: bool}

type computedEffectTiming = {
  ...effectTiming,
  mutable progress?: Null.t<float>,
  mutable currentIteration?: Null.t<float>,
  mutable startTime?: float,
  mutable endTime?: float,
  mutable activeDuration?: float,
  mutable localTime?: Null.t<float>,
}

type optionalEffectTiming = {
  mutable delay?: float,
  mutable endDelay?: float,
  mutable fill?: fillMode,
  mutable iterationStart?: float,
  mutable iterations?: float,
  mutable duration?: unknown,
  mutable direction?: playbackDirection,
  mutable easing?: string,
  mutable playbackRate?: float,
}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnimationEffect/getTiming)
*/
@send
external getTiming: t => effectTiming = "getTiming"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnimationEffect/getComputedTiming)
*/
@send
external getComputedTiming: t => computedEffectTiming = "getComputedTiming"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnimationEffect/updateTiming)
*/
@send
external updateTiming: (t, ~timing: optionalEffectTiming=?) => unit = "updateTiming"
