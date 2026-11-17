@editor.completeFrom(TouchList)
type t = private {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TouchList/length)
    */
  length: int,
}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/TouchList/item)
*/
@send
external item: (t, int) => Null.t<Touch.t> = "item"
