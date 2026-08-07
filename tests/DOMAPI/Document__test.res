let createSvgElement = (document: DOM.document) =>
  document->Document.createElementNS(~namespace="http://www.w3.org/2000/svg", ~qualifiedName="svg")

let makeAnimation = (timeline: Animation.animationTimeline) => Animation.make(~timeline)

let asAnimationTimeline = (timeline: DomTypes.documentTimeline): Animation.animationTimeline =>
  timeline->DocumentTimeline.asAnimationTimeline
