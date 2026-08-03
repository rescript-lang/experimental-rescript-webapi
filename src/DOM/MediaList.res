/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaList/item)
*/
@send
external item: (DOM.mediaList, int) => string = "item"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaList/appendMedium)
*/
@send
external appendMedium: (DOM.mediaList, string) => unit = "appendMedium"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaList/deleteMedium)
*/
@send
external deleteMedium: (DOM.mediaList, string) => unit = "deleteMedium"
