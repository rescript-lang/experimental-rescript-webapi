@editor.completeFrom(DataTransferItem)
type t = private {
  /**
    Returns the drag data item kind, one of: "string", "file".
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DataTransferItem/kind)
    */
  kind: string,
  /**
    Returns the drag data item type string.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DataTransferItem/type)
    */
  @as("type")
  type_: string,
}

/**
Invokes the callback with the string data as the argument, if the drag data item kind is text.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DataTransferItem/getAsString)
*/
@send
external getAsString: (t, string => unit) => unit = "getAsString"

/**
Returns a WebApiFile object, if the drag data item kind is File.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DataTransferItem/getAsFile)
*/
@send
external getAsFile: t => Null.t<DOM.file> = "getAsFile"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DataTransferItem/webkitGetAsEntry)
*/
@send
external webkitGetAsEntry: t => Null.t<FileAndDirectoryEntriesTypes.fileSystemEntry> =
  "webkitGetAsEntry"
