@@warning("-30")

/**
[See FileSystemEntry on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemEntry)
*/
@editor.completeFrom(FileSystemEntry)
type fileSystemEntry = WebApiBase.FileAndDirectoryEntries.fileSystemEntry

/**
[See FileSystemDirectoryEntry on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryEntry)
*/
@editor.completeFrom(FileSystemDirectoryEntry)
type fileSystemDirectoryEntry = WebApiBase.FileAndDirectoryEntries.fileSystemDirectoryEntry

/**
[See FileSystem on MDN](https://developer.mozilla.org/docs/Web/API/FileSystem)
*/
type fileSystem = WebApiBase.FileAndDirectoryEntries.fileSystem

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

type errorCallback = WebApiBase.DOM.domException => unit

type fileSystemEntriesCallback = array<fileSystemEntry> => unit
