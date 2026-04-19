/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaList/item)
*/
@send
external item: (Types.mediaList, int) => string = "item"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaList/appendMedium)
*/
@send
external appendMedium: (Types.mediaList, string) => unit = "appendMedium"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaList/deleteMedium)
*/
@send
external deleteMedium: (Types.mediaList, string) => unit = "deleteMedium"
