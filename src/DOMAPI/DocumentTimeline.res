@@warning("-33")
open DOMAPI

module DocumentTimeline = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DocumentTimeline)
    */
  @new
  external make: documentTimelineOptions => documentTimeline = "DocumentTimeline"
}
