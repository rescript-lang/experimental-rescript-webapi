let acceptsAnimationTimeline = (_value: Animation.timeline) => ()
let acceptsDOMTypesAnimationTimeline = (_value: Animation.timeline) => ()

let _ = (value: Animation.timeline) => {
  acceptsAnimationTimeline(value)
  acceptsDOMTypesAnimationTimeline(value)
}

let acceptsDocumentTimeline = (_value: DocumentTimeline.t) => ()
let acceptsDOMTypesDocumentTimeline = (_value: DocumentTimeline.t) => ()

let _ = (value: DocumentTimeline.t) => {
  acceptsDocumentTimeline(value)
  acceptsDOMTypesDocumentTimeline(value)
}

let acceptsDOMTypesAnimation = (_value: Animation.t) => ()
let acceptsAnimation = (_value: Animation.t) => ()

let _ = (value: Animation.t) => acceptsAnimation(value)
let _ = (value: Animation.t) => acceptsDOMTypesAnimation(value)

let acceptsDOMTypesAnimationEffect = (_value: AnimationEffect.t) => ()
let acceptsAnimationEffect = (_value: AnimationEffect.t) => ()

let _ = (value: AnimationEffect.t) => acceptsAnimationEffect(value)
let _ = (value: AnimationEffect.t) => acceptsDOMTypesAnimationEffect(value)

let _animationPlayState: Animation.playState = Animation.Running
let _domTypesAnimationPlayState: Animation.playState = Animation.Finished

let _replaceState: Animation.replaceState = Animation.Active
let _domTypesReplaceState: Animation.replaceState = Animation.Removed

let _fillMode: Animation.fillMode = Animation.Forwards
let _domTypesFillMode: Animation.fillMode = Animation.Both

let _direction: Animation.playbackDirection = Animation.Alternate
let _domTypesDirection: Animation.playbackDirection = Animation.Reverse

let _composite: Animation.compositeOperation = Animation.Add
let _domTypesComposite: Animation.compositeOperation = Animation.Accumulate

let _iterationComposite: Animation.iterationCompositeOperation = Animation.Replace
let _domTypesIterationComposite: Animation.iterationCompositeOperation = Animation.Replace

let _timelineOptions: DocumentTimeline.options = {originTime: 0.}
let _domTimelineOptions: DocumentTimeline.options = {originTime: 1.}

let _effectTiming: AnimationEffect.timing = {
  fill: Animation.Forwards,
  direction: Animation.Normal,
}

let _optionalTiming: AnimationEffect.optionalTiming = {
  fill: Animation.Both,
  direction: Animation.AlternateReverse,
}

let _keyframeOptions: Animation.keyframeAnimationOptions = {
  fill: Animation.Forwards,
  direction: Animation.Normal,
  composite: Animation.Add,
  iterationComposite: Animation.Replace,
  id: "fade",
}

let _domKeyframeOptions: Animation.keyframeAnimationOptions = {
  fill: Animation.Forwards,
  direction: Animation.Normal,
  composite: Animation.Replace,
  iterationComposite: Animation.Accumulate,
}
