@@warning("-30")

/**
[See FileSystemEntry on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemEntry)
*/
@editor.completeFrom(FileSystemEntry)
type fileSystemEntry = WebApiPrelude.Types.fileSystemEntry

/**
[See FileSystemDirectoryEntry on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryEntry)
*/
@editor.completeFrom(FileSystemDirectoryEntry)
type fileSystemDirectoryEntry = WebApiPrelude.Types.fileSystemDirectoryEntry

/**
[See FileSystem on MDN](https://developer.mozilla.org/docs/Web/API/FileSystem)
*/
type fileSystem = WebApiPrelude.Types.fileSystem

/**
[See FileSystemDirectoryReader on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryReader)
*/
@editor.completeFrom(FileSystemDirectoryReader)
type fileSystemDirectoryReader = {}

type fileSystemFlags = {
  mutable create?: bool,
  mutable exclusive?: bool,
}

type fileSystemEntryCallback = fileSystemEntry => unit

type errorCallback = WebApiPrelude.Types.domException => unit

type fileSystemEntriesCallback = array<fileSystemEntry> => unit
