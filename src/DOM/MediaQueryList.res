/**
Stores information on a media query applied to a document, and handles sending notifications to listeners when the media query state change (i.e. when the media query test starts or stops evaluating to true).
[See MediaQueryList on MDN](https://developer.mozilla.org/docs/Web/API/MediaQueryList)
*/
@editor.completeFrom(MediaQueryList)
type t = private {
  ...DOM.eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaQueryList/media)
    */
  media: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaQueryList/matches)
    */
  matches: bool,
}

include EventTarget.Impl({type t = t})
