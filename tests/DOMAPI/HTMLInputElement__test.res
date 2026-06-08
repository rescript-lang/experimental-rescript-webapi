external toHTMLInputElement: Element.t => DOM.htmlInputElement = "%identity"

let input: DOM.htmlInputElement = Document.createElement("input")->toHTMLInputElement
input->HTMLInputElement.checkValidity->ignore
