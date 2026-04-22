external toHTMLInputElement: DOM.Types.element => DOM.Types.htmlInputElement = "%identity"

let input: DOM.Types.htmlInputElement =
  DOM.Global.document->DOM.Document.createElement("input")->toHTMLInputElement
let value = input.value
