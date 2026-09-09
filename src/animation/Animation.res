type animationPlayState =
  | @as("finished") Finished
  | @as("idle") Idle
  | @as("paused") Paused
  | @as("running") Running

type animationReplaceState =
  | @as("active") Active
  | @as("persisted") Persisted
  | @as("removed") Removed

/**
  [See AnimationTimeline on MDN](https://developer.mozilla.org/docs/Web/API/AnimationTimeline)
  */
type animationTimeline = private {
  /**
      [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnimationTimeline/currentTime)
      */
  currentTime: Null.t<float>,
}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation)
*/
type rec t = {
  ...DOM.eventTarget,
  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/id)
*/
  mutable id: string,
  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/effect)
*/
  mutable effect: Null.t<AnimationEffect.t>,
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
  ready: promise<t>,
  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/finished)
*/
  finished: promise<t>,
  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/startTime)
*/
  mutable startTime: Null.t<float>,
  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/currentTime)
*/
  mutable currentTime: Null.t<float>,
}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation)
*/
@new
external make: (~effect: AnimationEffect.t=?, ~timeline: animationTimeline=?) => t = "Animation"

include EventTarget.Impl({type t = t})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/cancel)
*/
@send
external cancel: t => unit = "cancel"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/finish)
*/
@throws(JsExn) @send
external finish: t => unit = "finish"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/play)
*/
@send
external play: t => unit = "play"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/pause)
*/
@throws(JsExn) @send
external pause: t => unit = "pause"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/updatePlaybackRate)
*/
@send
external updatePlaybackRate: (t, float) => unit = "updatePlaybackRate"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/reverse)
*/
@send
external reverse: t => unit = "reverse"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/persist)
*/
@send
external persist: t => unit = "persist"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/commitStyles)
*/
@send
external commitStyles: t => unit = "commitStyles"

type compositeOperation =
  | @as("accumulate") Accumulate
  | @as("add") Add
  | @as("replace") Replace

type iterationCompositeOperation =
  | @as("accumulate") Accumulate
  | @as("replace") Replace

type keyframeEffectOptions = {
  ...AnimationEffect.effectTiming,
  mutable composite?: compositeOperation,
  mutable pseudoElement?: Nullable.t<string>,
  mutable iterationComposite?: iterationCompositeOperation,
}

type keyframeAnimationOptions = {
  ...keyframeEffectOptions,
  mutable id?: string,
  mutable timeline?: Nullable.t<animationTimeline>,
}
