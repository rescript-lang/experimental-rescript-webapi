/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DocumentTimeline)
*/
@new
external make: (~options: Types.documentTimelineOptions=?) => Types.documentTimeline = "DocumentTimeline"

external asAnimationTimeline: Types.documentTimeline => Types.animationTimeline = "%identity"
