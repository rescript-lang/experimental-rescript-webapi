open Prelude
open Event
open File
open Clipboard

module Clipboard = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Clipboard/read)
    */
  @send
  external read: clipboard => Promise.t<array<clipboardItem>> = "read"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Clipboard/readText)
    */
  @send
  external readText: clipboard => Promise.t<string> = "readText"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Clipboard/write)
    */
  @send
  external write: (clipboard, array<clipboardItem>) => Promise.t<unit> = "write"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Clipboard/writeText)
    */
  @send
  external writeText: (clipboard, string) => Promise.t<unit> = "writeText"
}
