open WebAPI
@new external blob: array<string> => DOM.blob = "Blob"
let form = FormData.make()
form->FormData.append(~name="text", ~value="hello")
form->FormData.appendBlob(~name="file", ~blobValue=blob(["contents"]), ~filename="sample.txt")
assert(form->FormData.get("missing")->Null.toOption == None)

assert(switch form->FormData.get("text")->Null.toOption {
| Some(String("hello")) => true
| _ => false
})

assert(switch form->FormData.get("file")->Null.toOption {
| Some(File(file)) => file.name == "sample.txt" && file.size == 8
| _ => false
})

let values = form->FormData.getAll("text")
assert(values->Array.length == 1)
let entry: FormDataEntryValue.t = String("unboxed")
let isUnboxed = (_value: FormDataEntryValue.t): bool => %raw(`_value === "unboxed"`)
assert(isUnboxed(entry))
