external toHTMLInputElement: Element.t => DomTypes.htmlInputElement = "%identity"

let input: DomTypes.htmlInputElement = Document.createElement("input")->toHTMLInputElement
input->HTMLInputElement.checkValidity->ignore
