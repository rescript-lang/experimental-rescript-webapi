WebApi.DOM.Global.document
->WebApi.DOM.Document.querySelector("form")
->Null.toOption
->Option.forEach(form => {
  form->WebApi.DOM.Element.scrollIntoViewWithOptions({behavior: WebApi.DOM.Types.Smooth})
})
