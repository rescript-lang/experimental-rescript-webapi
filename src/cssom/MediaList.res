@editor.completeFrom(MediaList)
type t = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaList/mediaText)
    */
  mutable mediaText: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaList/length)
    */
  length: int,
}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaList/item)
*/
@send
external item: (t, int) => Null.t<string> = "item"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaList/appendMedium)
*/
@send
external appendMedium: (t, string) => unit = "appendMedium"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaList/deleteMedium)
*/
@throws(JsExn) @send
external deleteMedium: (t, string) => unit = "deleteMedium"
