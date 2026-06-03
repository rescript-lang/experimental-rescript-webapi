let acceptsAnimationTimeline = (_value: Animation.timeline) => ()
let acceptsDomTypesAnimationTimeline = (_value: DomTypes.animationTimeline) => ()

let _ = (value: Animation.timeline) => {
  acceptsAnimationTimeline(value)
  acceptsDomTypesAnimationTimeline(value)
}

let acceptsDocumentTimeline = (_value: DocumentTimeline.t) => ()
let acceptsDomTypesDocumentTimeline = (_value: DomTypes.documentTimeline) => ()

let _ = (value: DocumentTimeline.t) => {
  acceptsDocumentTimeline(value)
  acceptsDomTypesDocumentTimeline(value)
}

let acceptsDomTypesAnimation = (_value: DomTypes.animation) => ()
let acceptsAnimation = (_value: Animation.t) => ()

let _ = (value: DomTypes.animation) => acceptsAnimation(value)
let _ = (value: Animation.t) => acceptsDomTypesAnimation(value)

let acceptsDomTypesAnimationEffect = (_value: DomTypes.animationEffect) => ()
let acceptsAnimationEffect = (_value: AnimationEffect.t) => ()

let _ = (value: DomTypes.animationEffect) => acceptsAnimationEffect(value)
let _ = (value: AnimationEffect.t) => acceptsDomTypesAnimationEffect(value)

let _animationPlayState: Animation.playState = Animation.Running
let _domTypesAnimationPlayState: DomTypes.animationPlayState = DomTypes.Finished

let _replaceState: Animation.replaceState = Animation.Active
let _domTypesReplaceState: DomTypes.animationReplaceState = DomTypes.Removed

let _fillMode: Animation.fillMode = Animation.Forwards
let _domTypesFillMode: DomTypes.fillMode = DomTypes.Both

let _direction: Animation.playbackDirection = Animation.Alternate
let _domTypesDirection: DomTypes.playbackDirection = DomTypes.Reverse

let _composite: Animation.compositeOperation = Animation.Add
let _domTypesComposite: DomTypes.compositeOperation = DomTypes.Accumulate

let _iterationComposite: Animation.iterationCompositeOperation = Animation.Replace
let _domTypesIterationComposite: DomTypes.iterationCompositeOperation = DomTypes.Replace

let _timelineOptions: DocumentTimeline.options = {originTime: 0.}
let _domTimelineOptions: DomTypes.documentTimelineOptions = {originTime: 1.}

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

let _domKeyframeOptions: DomTypes.keyframeAnimationOptions = {
  fill: DomTypes.Forwards,
  direction: DomTypes.Normal,
  composite: DomTypes.Replace,
  iterationComposite: DomTypes.Accumulate,
}
