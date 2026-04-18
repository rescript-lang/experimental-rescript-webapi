open UIEventsTypes

type t = touchList = {...touchList}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/TouchList/item)
*/
@send
external item: (touchList, int) => touch = "item"
