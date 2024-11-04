@@warning("-30")

open Prelude
open Event
open File

type presentationStyle =
  | @as("attachment") Attachment
  | @as("inline") Inline
  | @as("unspecified") Unspecified

/**
[See ClipboardItem on MDN](https://developer.mozilla.org/docs/Web/API/ClipboardItem)
*/
type clipboardItem = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ClipboardItem/presentationStyle)
    */
  presentationStyle: presentationStyle,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ClipboardItem/types)
    */
  types: array<string>,
}

/**
[See Clipboard on MDN](https://developer.mozilla.org/docs/Web/API/Clipboard)
*/
type clipboard = {
  ...eventTarget,
}

type clipboardItemOptions = {mutable presentationStyle: presentationStyle}

module ClipboardItem = {
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
}

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
