type t = ClipboardTypes.clipboardItem = private {...ClipboardTypes.clipboardItem}
type options = ClipboardTypes.clipboardItemOptions = private {
  ...ClipboardTypes.clipboardItemOptions,
}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ClipboardItem)
*/
@new
external make: (~items: unknown, ~options: options=?) => t = "ClipboardItem"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ClipboardItem/getType)
*/
@send
external getType: (t, string) => promise<FileTypes.blob> = "getType"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ClipboardItem/supports_static)
*/
@scope("ClipboardItem")
external supports: string => bool = "supports"
