open FileAPI
open ClipboardAPI
open Prelude

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ClipboardItem)
*/
@new
external make: (any, clipboardItemOptions) => clipboardItem = "ClipboardItem"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ClipboardItem/getType)
*/
@send
external getType: (clipboardItem, string) => Promise.t<blob> = "getType"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ClipboardItem/supports_static)
*/
@scope("ClipboardItem")
external supports: string => bool = "supports"