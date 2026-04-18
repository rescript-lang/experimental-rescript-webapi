open ClipboardTypes

type t = ClipboardTypes.clipboard = {...ClipboardTypes.clipboard}

external current: t = "clipboard"

include EventTarget.Impl({type t = t})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Clipboard/read)
*/
@send
external read: t => promise<array<clipboardItem>> = "read"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Clipboard/readText)
*/
@send
external readText: t => promise<string> = "readText"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Clipboard/write)
*/
@send
external write: (t, array<clipboardItem>) => promise<unit> = "write"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Clipboard/writeText)
*/
@send
external writeText: (t, string) => promise<unit> = "writeText"
