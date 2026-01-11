/* This works when your form has an id of "myForm" */
@scope(("document", "forms"))
external myForm: DOMAPI.htmlFormElement = "myForm"

let formData = FormData.make(~form=myForm)

// Get a form field - returns formDataEntryValue which could be string or File
let phoneEntry: null<FetchAPI.formDataEntryValue> = formData->FormData.get("phone")

// Decode the entry to handle both string and File cases
let _ = switch phoneEntry->Null.toOption {
| None => Console.log("No phone field")
| Some(entry) =>
  switch entry->FormDataEntryValue.decode {
  | FormDataEntryValue.String(value) => Console.log(`Phone: ${value}`)
  | FormDataEntryValue.File(file) => Console.log(`Unexpected file: ${file.name}`)
  }
}

// Get all values for a field (useful for multi-select or multiple file inputs)
let allImages: array<FetchAPI.formDataEntryValue> = formData->FormData.getAll("images")

// Process all entries
let _ = allImages->Array.forEach(entry => {
  switch entry->FormDataEntryValue.decode {
  | FormDataEntryValue.String(value) => Console.log(`String value: ${value}`)
  | FormDataEntryValue.File(file) => Console.log(`File: ${file.name}`)
  }
})

// Create formDataEntryValue from string or file
let stringEntry = FormDataEntryValue.fromString("test value")
let fileEntry = FormDataEntryValue.fromFile(File.make(~fileBits=[], ~fileName="test.txt"))
