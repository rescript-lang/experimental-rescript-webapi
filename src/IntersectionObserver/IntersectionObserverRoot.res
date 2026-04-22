external fromDocument: WebApi.DOM.Types.document => Types.root = "%identity"
external fromElement: WebApi.DOM.Types.element => Types.root = "%identity"
external fromNull: Types.root = "null"

external toElement: Types.root => WebApi.DOM.Types.element = "%identity"
external toDocument: Types.root => WebApi.DOM.Types.document = "%identity"

type decoded =
  | Element(WebApi.DOM.Types.element)
  | Document(WebApi.DOM.Types.document)
  | Null

let decode = (t: Types.root): decoded => {
  if WebApi.DOM.Element.isInstanceOf(t) {
    Element(t->toElement)
  } else if WebApi.DOM.Document.isInstanceOf(t) {
    Document(t->toDocument)
  } else {
    Null
  }
}
