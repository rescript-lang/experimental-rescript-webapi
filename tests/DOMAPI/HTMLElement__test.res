Document.querySelector("form")
->Null.toOption
->Option.forEach(form => {
  form->Element.hasAttribute("id")->ignore
})
