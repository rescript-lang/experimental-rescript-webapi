@editor.completeFrom(DataTransfer)
type t = private {
  /**
    Returns the kind of operation that is currently selected. If the kind of operation isn't one of those that is allowed by the effectAllowed attribute, then the operation will fail.

Can be set, to change the selected operation.

The possible values are "none", "copy", "link", and "move".
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DataTransfer/dropEffect)
    */
  mutable dropEffect: string,
  /**
    Returns the kinds of operations that are to be allowed.

Can be set (during the dragstart event), to change the allowed operations.

The possible values are "none", "copy", "copyLink", "copyMove", "link", "linkMove", "move", "all", and "uninitialized",
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DataTransfer/effectAllowed)
    */
  mutable effectAllowed: string,
  /**
    Returns a DataTransferItemList object, with the drag data.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DataTransfer/items)
    */
  items: DataTransferItemList.t,
  /**
    Returns a frozen array listing the formats that were set in the dragstart event. In addition, if any files are being dragged, then one of the types will be the string "Files".
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DataTransfer/types)
    */
  types: array<string>,
  /**
    Returns a FileList of the files being dragged, if any.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DataTransfer/files)
    */
  files: DOM.fileList,
}

@set external setDropEffect: (t, string) => unit = "dropEffect"
@set external setEffectAllowed: (t, string) => unit = "effectAllowed"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DataTransfer)
*/
@new
external make: unit => t = "DataTransfer"

/**
Uses the given element to update the drag feedback, replacing any previously specified feedback.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DataTransfer/setDragImage)
*/
@send
external setDragImage: (t, ~image: DOMTree.element, ~x: int, ~y: int) => unit = "setDragImage"

/**
Returns the specified data. If there is no such data, returns the empty string.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DataTransfer/getData)
*/
@send
external getData: (t, string) => string = "getData"

/**
Adds the specified data.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DataTransfer/setData)
*/
@send
external setData: (t, ~format: string, ~data: string) => unit = "setData"

/**
Removes the data of the specified formats. Removes all data if the argument is omitted.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DataTransfer/clearData)
*/
@send
external clearData: (t, ~format: string=?) => unit = "clearData"
