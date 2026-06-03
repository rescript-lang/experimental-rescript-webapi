external toHTMLInputElement: DomTypes.element => DomTypes.htmlInputElement = "%identity"

let input: DomTypes.htmlInputElement =
  DomGlobal.document->Document.createElement("input")->toHTMLInputElement
input->HTMLInputElement.checkValidity->ignore
