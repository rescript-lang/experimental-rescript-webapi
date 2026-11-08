/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/TouchList/item)
*/
type t = UiEventsTypes.touchList

@send
external item: (UiEventsTypes.touchList, int) => Null.t<UiEventsTypes.touch> = "item"
