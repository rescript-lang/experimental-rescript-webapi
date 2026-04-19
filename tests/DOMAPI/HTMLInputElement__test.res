external toHTMLInputElement: WebApiDOM.Types.element => WebApiDOM.Types.htmlInputElement =
  "%identity"

let input: WebApiDOM.Types.htmlInputElement =
  WebApiDOM.Global.document->WebApiDOM.Document.createElement("input")->toHTMLInputElement
let value = input.value
