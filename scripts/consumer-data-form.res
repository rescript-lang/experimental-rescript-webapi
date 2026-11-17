let make = (): WebAPI.FormData.t => WebAPI.FormData.make()
let appendBlob = (form: WebAPI.FormData.t, blob: WebAPI.DOM.blob) =>
  form->WebAPI.FormData.appendBlob(~name="file", ~blobValue=blob, ~filename="file.txt")
let entry = (value: WebAPI.FormDataEntryValue.t) =>
  switch value {
  | String(text) => text
  | File(file) => file.name
  }
let get = (form: WebAPI.FormData.t): Null.t<WebAPI.FormDataEntryValue.t> =>
  form->WebAPI.FormData.get("name")
let entries = (form: WebAPI.FormData.t): iterable<(string, WebAPI.FormDataEntryValue.t)> =>
  form->WebAPI.FormData.entries
