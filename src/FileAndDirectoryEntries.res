@@warning("-30")

open Prelude

/**
[See FileSystemEntry on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemEntry)
*/
type rec fileSystemEntry = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemEntry/isFile)
    */
  isFile: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemEntry/isDirectory)
    */
  isDirectory: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemEntry/name)
    */
  name: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemEntry/fullPath)
    */
  fullPath: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemEntry/filesystem)
    */
  filesystem: fileSystem,
}

/**
[See FileSystemDirectoryEntry on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryEntry)
*/
and fileSystemDirectoryEntry = {
  // Base properties from FileSystemEntry
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemEntry/isFile)
    */
  isFile: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemEntry/isDirectory)
    */
  isDirectory: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemEntry/name)
    */
  name: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemEntry/fullPath)
    */
  fullPath: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemEntry/filesystem)
    */
  filesystem: fileSystem,
  // End base properties from FileSystemEntry
}

/**
[See FileSystem on MDN](https://developer.mozilla.org/docs/Web/API/FileSystem)
*/
and fileSystem = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystem/name)
    */
  name: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystem/root)
    */
  root: fileSystemDirectoryEntry,
}

/**
[See FileSystemDirectoryReader on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryReader)
*/
type fileSystemDirectoryReader = {}

type fileSystemFlags = {
  mutable create: bool,
  mutable exclusive: bool,
}

type fileSystemEntryCallback = fileSystemEntry => unit

type errorCallback = domException => unit

type fileSystemEntriesCallback = array<fileSystemEntry> => unit

module FileSystemEntry = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemEntry/getParent)
    */
  @send
  external getParent: (fileSystemEntry, fileSystemEntryCallback, errorCallback) => unit =
    "getParent"
}

module FileSystemDirectoryEntry = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryEntry/createReader)
    */
  @send
  external createReader: fileSystemDirectoryEntry => fileSystemDirectoryReader = "createReader"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryEntry/getFile)
    */
  @send
  external getFile: (
    fileSystemDirectoryEntry,
    string,
    fileSystemFlags,
    fileSystemEntryCallback,
    errorCallback,
  ) => unit = "getFile"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryEntry/getDirectory)
    */
  @send
  external getDirectory: (
    fileSystemDirectoryEntry,
    string,
    fileSystemFlags,
    fileSystemEntryCallback,
    errorCallback,
  ) => unit = "getDirectory"
}

module FileSystemDirectoryReader = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryReader/readEntries)
    */
  @send
  external readEntries: (
    fileSystemDirectoryReader,
    fileSystemEntriesCallback,
    errorCallback,
  ) => unit = "readEntries"
}
