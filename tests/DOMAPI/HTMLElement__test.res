DOM.Global.document
->DOM.Document.querySelector("form")
->Null.toOption
->Option.forEach(form => {
  form->DOM.Element.scrollIntoViewWithOptions({behavior: DOM.Types.Smooth})
})
