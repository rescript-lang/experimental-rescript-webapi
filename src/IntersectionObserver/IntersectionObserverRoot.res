external fromDocument: DOM.Types.document => IntersectionObserverTypes.root = "%identity"
external fromElement: DOM.Types.element => IntersectionObserverTypes.root = "%identity"
external fromNull: IntersectionObserverTypes.root = "null"

external toElement: IntersectionObserverTypes.root => DOM.Types.element = "%identity"
external toDocument: IntersectionObserverTypes.root => DOM.Types.document = "%identity"

type decoded =
  | Element(DOM.Types.element)
  | Document(DOM.Types.document)
  | Null

let decode = (t: IntersectionObserverTypes.root): decoded => {
  if DOM.Element.isInstanceOf(t) {
    Element(t->toElement)
  } else if DOM.Document.isInstanceOf(t) {
    Document(t->toDocument)
  } else {
    Null
  }
}
