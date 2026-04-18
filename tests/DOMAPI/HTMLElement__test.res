open WebAPI

Window.current.document
->Document.querySelector("form")
->Null.toOption
->Option.forEach(form => {
  form->Element.scrollIntoViewWithOptions({behavior: DOMTypes.Smooth})
})
