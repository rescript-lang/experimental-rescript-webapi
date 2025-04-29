/* This works when your form has an id of "myForm" */
@scope(("document", "forms"))
external myForm: DOMAPI.htmlFormElement = "myForm"

let formData = FormData.make(~form=myForm)
let phone = formData->FormData.get("phone")
let image = formData->FormData.getFile("image")
