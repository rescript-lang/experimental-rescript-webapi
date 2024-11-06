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
