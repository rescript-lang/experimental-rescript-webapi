/**
Adds a new entry for the given data to the drag data store. If the data is plain text then a type string has to be provided also.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DataTransferItemList/add)
*/
@send
external add: (
  Types.dataTransferItemList,
  ~data: string,
  ~type_: string,
) => Types.dataTransferItem = "add"

/**
Adds a new entry for the given data to the drag data store. If the data is plain text then a type string has to be provided also.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DataTransferItemList/add)
*/
@send
external addFile: (Types.dataTransferItemList, WebApiFile.Types.file) => Types.dataTransferItem =
  "add"

/**
Removes the indexth entry in the drag data store.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DataTransferItemList/remove)
*/
@send
external remove: (Types.dataTransferItemList, int) => unit = "remove"

/**
Removes all the entries in the drag data store.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DataTransferItemList/clear)
*/
@send
external clear: Types.dataTransferItemList => unit = "clear"
