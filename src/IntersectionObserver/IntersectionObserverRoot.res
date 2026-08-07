external fromDocument: DOM.document => IntersectionObserverTypes.root = "%identity"
external fromElement: DOMTree.element => IntersectionObserverTypes.root = "%identity"
external fromNull: IntersectionObserverTypes.root = "null"

external toElement: IntersectionObserverTypes.root => DOMTree.element = "%identity"
external toDocument: IntersectionObserverTypes.root => DOM.document = "%identity"

type decoded =
  | Element(DOMTree.element)
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
