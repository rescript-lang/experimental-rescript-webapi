/**
Invokes the callback with the string data as the argument, if the drag data item kind is text.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DataTransferItem/getAsString)
*/
@send
external getAsString: (Types.dataTransferItem, string => unit) => unit = "getAsString"

/**
Returns a File object, if the drag data item kind is File.File.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DataTransferItem/getAsFile)
*/
@send
external getAsFile: Types.dataTransferItem => File.Types.file = "getAsFile"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DataTransferItem/webkitGetAsEntry)
*/
@send
external webkitGetAsEntry: Types.dataTransferItem => FileAndDirectoryEntries.Types.fileSystemEntry =
  "webkitGetAsEntry"
