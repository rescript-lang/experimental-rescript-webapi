external fromDocument: DOM.Types.document => Types.root = "%identity"
external fromElement: DOM.Types.element => Types.root = "%identity"
external fromNull: Types.root = "null"

external toElement: Types.root => DOM.Types.element = "%identity"
external toDocument: Types.root => DOM.Types.document = "%identity"

type decoded =
  | Element(DOM.Types.element)
  | Document(DOM.Types.document)
  | Null

let decode = (t: Types.root): decoded => {
  if DOM.Element.isInstanceOf(t) {
    Element(t->toElement)
  } else if DOM.Document.isInstanceOf(t) {
    Document(t->toDocument)
  } else {
    Null
  }
}
