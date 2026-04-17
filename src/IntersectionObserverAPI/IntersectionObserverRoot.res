open DOMAPI
open IntersectionObserverAPI

external fromDocument: document => root = "%identity"
external fromElement: element => root = "%identity"
external fromNull: root = "null"

external toElement: root => element = "%identity"
external toDocument: root => document = "%identity"

type decoded =
  | Element(element)
  | Document(document)
  | Null

let decode = (t: root): decoded => {
  if Element.isInstanceOf(t) {
    Element(t->toElement)
  } else if Document.isInstanceOf(t) {
    Document(t->toDocument)
  } else {
    Null
  }
}
