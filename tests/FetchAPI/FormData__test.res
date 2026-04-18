/* This works when your form has an id of "myForm" */
@scope(("document", "forms"))
external myForm: WebApiDOM.Types.htmlFormElement = "myForm"

let formData = WebApiFetch.FormData.make(~form=myForm)

// Get a form field - returns formDataEntryValue which could be string or WebApiFile
let phoneEntry: null<WebApiFetch.Types.formDataEntryValue> = formData->WebApiFetch.FormData.get("phone")

// Decode the entry to handle both string and WebApiFile cases
let _ = switch phoneEntry->Null.toOption {
| None => Console.log("No phone field")
| Some(WebApiFetch.Types.String(value)) => Console.log(`Phone: ${value}`)
| Some(WebApiFetch.Types.File(file)) => Console.log(`Unexpected file: ${file.name}`)
}

// Get all values for a field (useful for multi-select or multiple file inputs)
let allImages: array<WebApiFetch.Types.formDataEntryValue> = formData->WebApiFetch.FormData.getAll("images")

// Process all entries
let _ = allImages->Array.forEach(entry => {
  switch entry {
  | WebApiFetch.Types.String(value) => Console.log(`String value: ${value}`)
  | WebApiFetch.Types.File(file) => Console.log(`WebApiFile: ${file.name}`)
  }
})

// Create formDataEntryValue from string or file
let stringEntry = WebApiFetch.Types.String("test value")
let fileEntry = WebApiFetch.Types.File(WebApiFile.File.make(~fileBits=[], ~fileName="test.txt"))

// Iterate over all entries in the FormData
let entries: Iterator.t<(string, WebApiFetch.Types.formDataEntryValue)> = formData->WebApiFetch.FormData.entries
let _ = entries->Iterator.forEach(((key, value)) => {
  switch value {
  | WebApiFetch.Types.String(s) => Console.log(`${key}: ${s}`)
  | WebApiFetch.Types.File(f) => Console.log(`${key}: [WebApiFile] ${f.name}`)
  }
})
