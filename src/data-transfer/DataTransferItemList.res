@editor.completeFrom(DataTransferItemList)
type t = private {
  /**
    Returns the number of items in the drag data store.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DataTransferItemList/length)
    */
  length: int,
}

/**
Adds a new entry for the given data to the drag data store. If the data is plain text then a type string has to be provided also.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DataTransferItemList/add)
*/
@throws(JsExn) @send
external add: (t, ~data: string, ~type_: string) => Null.t<DataTransferItem.t> = "add"

/**
Adds a new entry for the given data to the drag data store. If the data is plain text then a type string has to be provided also.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DataTransferItemList/add)
*/
@throws(JsExn) @send
external addFile: (t, DOM.file) => Null.t<DataTransferItem.t> = "add"

/**
Removes the indexth entry in the drag data store.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DataTransferItemList/remove)
*/
@throws(JsExn) @send
external remove: (t, int) => unit = "remove"

/**
Removes all the entries in the drag data store.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DataTransferItemList/clear)
*/
@send
external clear: t => unit = "clear"
