/**
Invokes the callback with the string data as the argument, if the drag data item kind is text.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DataTransferItem/getAsString)
*/
@send
external getAsString: (UiEventsTypes.dataTransferItem, string => unit) => unit = "getAsString"

/**
Returns a WebApiFile object, if the drag data item kind is File.File.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DataTransferItem/getAsFile)
*/
@send
external getAsFile: UiEventsTypes.dataTransferItem => File.Types.file = "getAsFile"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DataTransferItem/webkitGetAsEntry)
*/
@send
external webkitGetAsEntry: UiEventsTypes.dataTransferItem => FileAndDirectoryEntries.Types.fileSystemEntry =
  "webkitGetAsEntry"
