include WebApiEvent.EventTarget.Impl({type t = Types.clipboard})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Clipboard/read)
*/
@send
external read: Types.clipboard => promise<array<Types.clipboardItem>> = "read"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Clipboard/readText)
*/
@send
external readText: Types.clipboard => promise<string> = "readText"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Clipboard/write)
*/
@send
external write: (Types.clipboard, array<Types.clipboardItem>) => promise<unit> = "write"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Clipboard/writeText)
*/
@send
external writeText: (Types.clipboard, string) => promise<unit> = "writeText"
