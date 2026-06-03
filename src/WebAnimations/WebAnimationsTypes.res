@@warning("-30")

type animationPlayState =
  | @as("finished") Finished
  | @as("idle") Idle
  | @as("paused") Paused
  | @as("running") Running

type animationReplaceState =
  | @as("active") Active
  | @as("persisted") Persisted
  | @as("removed") Removed

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

type compositeOperation =
  | @as("accumulate") Accumulate
  | @as("add") Add
  | @as("replace") Replace

type iterationCompositeOperation =
  | @as("accumulate") Accumulate
  | @as("replace") Replace

/**
[See AnimationTimeline on MDN](https://developer.mozilla.org/docs/Web/API/AnimationTimeline)
*/
@editor.completeFrom(Animation)
type rec animationTimeline = private {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnimationTimeline/currentTime)
    */
  currentTime: Null.t<float>,
}

/**
[See DocumentTimeline on MDN](https://developer.mozilla.org/docs/Web/API/DocumentTimeline)
*/
@editor.completeFrom(DocumentTimeline) and documentTimeline = private {
  // Base properties from AnimationTimeline
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnimationTimeline/currentTime)
    */
  currentTime: Null.t<float>,
  // End base properties from AnimationTimeline
}

/**
[See AnimationEffect on MDN](https://developer.mozilla.org/docs/Web/API/AnimationEffect)
*/
@editor.completeFrom(AnimationEffect)
type animationEffect = private {}

type rec animation = {
  ...Base__EventTarget.t,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/id)
    */
  mutable id: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/effect)
    */
  mutable effect: Null.t<animationEffect>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/timeline)
    */
  mutable timeline: Null.t<animationTimeline>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/playbackRate)
    */
  mutable playbackRate: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/playState)
    */
  playState: animationPlayState,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/replaceState)
    */
  replaceState: animationReplaceState,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/pending)
    */
  pending: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/ready)
    */
  ready: promise<animation>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/finished)
    */
  finished: promise<animation>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/startTime)
    */
  mutable startTime: Null.t<float>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/currentTime)
    */
  mutable currentTime: Null.t<float>,
}

type documentTimelineOptions = {mutable originTime?: float}

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

type keyframeEffectOptions = {
  ...effectTiming,
  mutable composite?: compositeOperation,
  mutable pseudoElement?: Null.t<string>,
  mutable iterationComposite?: iterationCompositeOperation,
}

type keyframeAnimationOptions = {
  ...keyframeEffectOptions,
  mutable id?: string,
  mutable timeline?: Null.t<animationTimeline>,
}
