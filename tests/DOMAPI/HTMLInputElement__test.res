open Global

external toHTMLInputElement: DOMAPI.element => DOMAPI.htmlInputElement = "%identity"

let input: DOMAPI.htmlInputElement = document->Document.createElement("input")->toHTMLInputElement
let value = input.value
