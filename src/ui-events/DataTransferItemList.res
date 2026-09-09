/**
Adds a new entry for the given data to the drag data store. If the data is plain text then a type string has to be provided also.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DataTransferItemList/add)
*/
@throws(JsExn) @send
external add: (
  UiEventsTypes.dataTransferItemList,
  ~data: string,
  ~type_: string,
) => Null.t<UiEventsTypes.dataTransferItem> = "add"

/**
Adds a new entry for the given data to the drag data store. If the data is plain text then a type string has to be provided also.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DataTransferItemList/add)
*/
@throws(JsExn) @send
external addFile: (
  UiEventsTypes.dataTransferItemList,
  FileTypes.file,
) => Null.t<UiEventsTypes.dataTransferItem> = "add"

/**
Removes the indexth entry in the drag data store.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DataTransferItemList/remove)
*/
@throws(JsExn) @send
external remove: (UiEventsTypes.dataTransferItemList, int) => unit = "remove"

/**
Removes all the entries in the drag data store.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DataTransferItemList/clear)
*/
@send
external clear: UiEventsTypes.dataTransferItemList => unit = "clear"
