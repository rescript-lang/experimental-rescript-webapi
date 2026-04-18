/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryReader/readEntries)
*/
@send
external readEntries: (
  Types.fileSystemDirectoryReader,
  ~successCallback: Types.fileSystemEntriesCallback,
  ~errorCallback: Types.errorCallback=?,
) => unit = "readEntries"
