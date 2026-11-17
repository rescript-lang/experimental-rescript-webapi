let make = (target: WebAPI.DOM.eventTarget): WebAPI.Touch.t =>
  WebAPI.Touch.make({identifier: 1, target, touchType: WebAPI.Touch.Direct})
let item = (list: WebAPI.TouchList.t): Null.t<WebAPI.Touch.t> =>
  list->WebAPI.TouchList.item(0)
let target = (touch: WebAPI.Touch.t): WebAPI.DOM.eventTarget => touch.target
