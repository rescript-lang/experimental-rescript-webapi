let getParent = (entry: WebAPI.FileSystemEntry.t) =>
  entry->WebAPI.FileSystemEntry.getParent(~successCallback=parent => ignore(parent.name))
let read = (directory: WebAPI.FileSystemDirectoryEntry.t) =>
  directory->WebAPI.FileSystemDirectoryEntry.createReader
  ->WebAPI.FileSystemDirectoryReader.readEntries(~successCallback=ignore)
