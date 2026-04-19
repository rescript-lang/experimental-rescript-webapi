/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemEntry/getParent)
*/
@send
external getParent: (
  Types.fileSystemEntry,
  ~successCallback: Types.fileSystemEntryCallback=?,
  ~errorCallback: Types.errorCallback=?,
) => unit = "getParent"
