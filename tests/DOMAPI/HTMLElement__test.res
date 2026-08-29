DomGlobal.document
->Document.querySelector("form")
->Null.toOption
->Option.forEach(form => {
  form->Element.scrollIntoViewWithOptions({behavior: DOM.Smooth})
})

let asNode = (element: Element.t): Node.t => element->Element.asNode

let asElement = (element: HTMLElement.t): Element.t => element->HTMLElement.asElement

let setNamespacedAttribute = (element: HTMLElement.t) =>
  element->HTMLElement.setAttributeNS(
    ~namespace="http://www.w3.org/1999/xhtml",
    ~qualifiedName="data-follow-up",
    ~value="complete",
  )
