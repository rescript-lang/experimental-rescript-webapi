type playState = WebAnimationsTypes.animationPlayState = | ...WebAnimationsTypes.animationPlayState
type replaceState = WebAnimationsTypes.animationReplaceState =
  | ...WebAnimationsTypes.animationReplaceState

type fillMode = WebAnimationsTypes.fillMode = | ...WebAnimationsTypes.fillMode
type playbackDirection = WebAnimationsTypes.playbackDirection =
  | ...WebAnimationsTypes.playbackDirection
type compositeOperation = WebAnimationsTypes.compositeOperation =
  | ...WebAnimationsTypes.compositeOperation
type iterationCompositeOperation = WebAnimationsTypes.iterationCompositeOperation =
  | ...WebAnimationsTypes.iterationCompositeOperation

type timeline = WebAnimationsTypes.animationTimeline = private {
  ...WebAnimationsTypes.animationTimeline,
}
type t = WebAnimationsTypes.animation = {...WebAnimationsTypes.animation}
type getAnimationsOptions = WebAnimationsTypes.getAnimationsOptions = {
  ...WebAnimationsTypes.getAnimationsOptions,
}
type keyframeEffectOptions = WebAnimationsTypes.keyframeEffectOptions = {
  ...WebAnimationsTypes.keyframeEffectOptions,
}
type keyframeAnimationOptions = WebAnimationsTypes.keyframeAnimationOptions = {
  ...WebAnimationsTypes.keyframeAnimationOptions,
}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation)
*/
@new
external make: (~effect: AnimationEffect.t=?, ~timeline: timeline=?) => t = "Animation"

include EventTarget.Impl({type t = t})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/cancel)
*/
@send
external cancel: t => unit = "cancel"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/finish)
*/
@send
external finish: t => unit = "finish"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/play)
*/
@send
external play: t => unit = "play"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/pause)
*/
@send
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
