/* This works when your form has an id of "myForm" */
@scope(("document", "forms"))
external myForm: DOM.Types.htmlFormElement = "myForm"

let formData = Fetch.FormData.make(~form=myForm)

// Get a form field - returns formDataEntryValue which could be string or File
let phoneEntry: null<Fetch.Types.formDataEntryValue> = formData->Fetch.FormData.get("phone")

// Decode the entry to handle both string and File cases
let _ = switch phoneEntry->Null.toOption {
| None => Console.log("No phone field")
| Some(Fetch.Types.String(value)) => Console.log(`Phone: ${value}`)
| Some(Fetch.Types.File(file)) => Console.log(`Unexpected file: ${file.name}`)
}

// Get all values for a field (useful for multi-select or multiple file inputs)
let allImages: array<Fetch.Types.formDataEntryValue> = formData->Fetch.FormData.getAll("images")

// Process all entries
let _ = allImages->Array.forEach(entry => {
  switch entry {
  | Fetch.Types.String(value) => Console.log(`String value: ${value}`)
  | Fetch.Types.File(file) => Console.log(`File: ${file.name}`)
  }
})

// Create formDataEntryValue from string or file
let stringEntry = Fetch.Types.String("test value")
let fileEntry = Fetch.Types.File(File.File.make(~fileBits=[], ~fileName="test.txt"))

// Iterate over all entries in the FormData
let entries: Iterator.t<(string, Fetch.Types.formDataEntryValue)> = formData->Fetch.FormData.entries
let _ = entries->Iterator.forEach(((key, value)) => {
  switch value {
  | Fetch.Types.String(s) => Console.log(`${key}: ${s}`)
  | Fetch.Types.File(f) => Console.log(`${key}: [File] ${f.name}`)
  }
})
