external fromDocument: DOM.document => IntersectionObserverTypes.root = "%identity"
external fromElement: DomTypes.element => IntersectionObserverTypes.root = "%identity"
external fromNull: IntersectionObserverTypes.root = "null"

external toElement: IntersectionObserverTypes.root => DomTypes.element = "%identity"
external toDocument: IntersectionObserverTypes.root => DOM.document = "%identity"

type decoded =
  | Element(DomTypes.element)
  | Document(DOM.document)
  | Null

let decode = (t: IntersectionObserverTypes.root): decoded => {
  if Element.isInstanceOf(t) {
    Element(t->toElement)
  } else if Document.isInstanceOf(t) {
    Document(t->toDocument)
  } else {
    Null
  }
}
