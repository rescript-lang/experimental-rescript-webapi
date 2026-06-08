external toHTMLInputElement: Element.t => DOMTypes.htmlInputElement = "%identity"

let input: DOMTypes.htmlInputElement = Document.createElement("input")->toHTMLInputElement
input->HTMLInputElement.checkValidity->ignore
