include EventTarget.Impl({type t = ClipboardTypes.clipboard})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Clipboard/read)
*/
@scope("globalThis.navigator.clipboard")
external read: unit => promise<array<ClipboardTypes.clipboardItem>> = "read"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Clipboard/readText)
*/
@scope("globalThis.navigator.clipboard")
external readText: unit => promise<string> = "readText"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Clipboard/write)
*/
@scope("globalThis.navigator.clipboard")
external write: array<ClipboardTypes.clipboardItem> => promise<unit> = "write"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Clipboard/writeText)
*/
@scope("globalThis.navigator.clipboard")
external writeText: string => promise<unit> = "writeText"

module ClipboardItem = ClipboardItem
module Types = ClipboardTypes
