external fromDocument: DomTypes.document => IntersectionObserverTypes.root = "%identity"
external fromElement: Element.t => IntersectionObserverTypes.root = "%identity"
external fromNull: IntersectionObserverTypes.root = "null"

external toElement: IntersectionObserverTypes.root => Element.t = "%identity"
external toDocument: IntersectionObserverTypes.root => DomTypes.document = "%identity"

type decoded =
  | Element(Element.t)
  | Document(DomTypes.document)
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
