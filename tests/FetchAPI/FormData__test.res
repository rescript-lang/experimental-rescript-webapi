/* This works when your form has an id of "myForm" */
@scope(("document", "forms"))
external myForm: DOMTree.htmlFormElement = "myForm"

module EntryValue = FormDataEntryValue

let logEntry = (~stringPrefix: string, ~filePrefix: string, entry: EntryValue.t) =>
  switch EntryValue.asString(entry) {
  | Some(value) => Console.log(`${stringPrefix}${value}`)
  | None =>
    switch EntryValue.asFile(entry) {
    | Some(file) => Console.log(`${filePrefix}${File.name(file)}`)
    | None => Console.log("Unsupported FormData entry")
    }
  }

let formData: FormData.t = FormData.make(~form=myForm)

// Get a form field - returns formDataEntryValue which could be string or WebApiFile
let phoneEntry: null<EntryValue.t> = formData->FormData.get("phone")

// Decode the entry to handle both string and WebApiFile cases
let _ = switch phoneEntry->Null.toOption {
| None => Console.log("No phone field")
| Some(entry) => logEntry(~stringPrefix="Phone: ", ~filePrefix="Unexpected file: ", entry)
}

// Get all values for a field (useful for multi-select or multiple file inputs)
let allImages: array<EntryValue.t> = formData->FormData.getAll("images")
let _ =
  allImages->Array.forEach(entry =>
    logEntry(~stringPrefix="String value: ", ~filePrefix="WebApiFile: ", entry)
  )

// Create actual string and file entries, then inspect the native results.
let blob: Blob.t = Blob.make(~blobParts=[])
let file: File.t = File.make(~fileBits=[], ~fileName="test.txt")

formData->FormData.append(~name="text-entry", ~value="test value")
formData->FormData.appendBlob(
  ~name="file-entry",
  ~blobValue=File.asBlob(file),
  ~filename="test.txt",
)
formData->FormData.appendBlob(~name="avatar", ~blobValue=blob)

let stringEntry = formData->FormData.get("text-entry")
let _ = switch stringEntry->Null.toOption {
| Some(entry) =>
  logEntry(~stringPrefix="String entry: ", ~filePrefix="Unexpected file entry: ", entry)
| None => Console.log("No string entry")
}

let fileEntry = formData->FormData.get("file-entry")
let _ = switch fileEntry->Null.toOption {
| Some(entry) =>
  logEntry(~stringPrefix="Unexpected string entry: ", ~filePrefix="File entry: ", entry)
| None => Console.log("No file entry")
}

// Iterate over all entries in the FormData
let entries: iterable<(string, EntryValue.t)> = formData->FormData.entries
let _ =
  entries
  ->Array.fromIterable
  ->Array.forEach(((key, value)) => {
    switch EntryValue.asString(value) {
    | Some(s) => Console.log(`${key}: ${s}`)
    | None =>
      switch EntryValue.asFile(value) {
      | Some(f) => Console.log(`${key}: [WebApiFile] ${File.name(f)}`)
      | None => Console.log(`${key}: unsupported entry`)
      }
    }
  })
