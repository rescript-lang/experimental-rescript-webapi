@@warning("-30")

/**
[See FileSystemEntry on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemEntry)
*/
@editor.completeFrom(FileSystemEntry)
type fileSystemEntry = WebApi.Base.FileAndDirectoryEntries.fileSystemEntry

/**
[See FileSystemDirectoryEntry on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryEntry)
*/
@editor.completeFrom(FileSystemDirectoryEntry)
type fileSystemDirectoryEntry = WebApi.Base.FileAndDirectoryEntries.fileSystemDirectoryEntry

/**
[See FileSystem on MDN](https://developer.mozilla.org/docs/Web/API/FileSystem)
*/
type fileSystem = WebApi.Base.FileAndDirectoryEntries.fileSystem

/**
[See FileSystemDirectoryReader on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryReader)
*/
@editor.completeFrom(FileSystemDirectoryReader)
type fileSystemDirectoryReader = private {}

type fileSystemFlags = {
  mutable create?: bool,
  mutable exclusive?: bool,
}

type fileSystemEntryCallback = fileSystemEntry => unit

type errorCallback = WebApi.Base.DOM.domException => unit

type fileSystemEntriesCallback = array<fileSystemEntry> => unit
