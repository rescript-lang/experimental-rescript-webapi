type t = WebAnimationsTypes.documentTimeline = private {...WebAnimationsTypes.documentTimeline}
type options = WebAnimationsTypes.documentTimelineOptions = {
  ...WebAnimationsTypes.documentTimelineOptions,
}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DocumentTimeline)
*/
@new
external make: (~options: options=?) => t = "DocumentTimeline"

external asAnimationTimeline: t => Animation.timeline = "%identity"
