open WebAPI
open WebAPI.Global

document
->Document.querySelector("form")
->Null.toOption
->Option.forEach(form => {
  form->Element.scrollIntoView_withOptions({behavior: DOMAPI.Smooth})
})
