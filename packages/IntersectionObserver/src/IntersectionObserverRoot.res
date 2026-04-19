external fromDocument: WebApiDOM.Types.document => Types.root = "%identity"
external fromElement: WebApiDOM.Types.element => Types.root = "%identity"
external fromNull: Types.root = "null"

external toElement: Types.root => WebApiDOM.Types.element = "%identity"
external toDocument: Types.root => WebApiDOM.Types.document = "%identity"

type decoded =
  | Element(WebApiDOM.Types.element)
  | Document(WebApiDOM.Types.document)
  | Null

let decode = (t: Types.root): decoded => {
  if WebApiDOM.Element.isInstanceOf(t) {
    Element(t->toElement)
  } else if WebApiDOM.Document.isInstanceOf(t) {
    Document(t->toDocument)
  } else {
    Null
  }
}
