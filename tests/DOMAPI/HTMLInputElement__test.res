external toHTMLInputElement: WebApi.DOM.Types.element => WebApi.DOM.Types.htmlInputElement =
  "%identity"

let input: WebApi.DOM.Types.htmlInputElement =
  WebApi.DOM.Global.document->WebApi.DOM.Document.createElement("input")->toHTMLInputElement
let value = input.value
