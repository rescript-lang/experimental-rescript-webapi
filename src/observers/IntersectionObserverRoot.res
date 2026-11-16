external fromDocument: DOM.document => IntersectionObserverTypes.root = "%identity"
external fromElement: DOMTree.element => IntersectionObserverTypes.root = "%identity"
external fromNull: IntersectionObserverTypes.root = "null"

/** Narrows only native Elements in the current JavaScript realm. */
let toElement = (value: IntersectionObserverTypes.root): option<DOMTree.element> =>
  Element.classify(value)

let isDocument = (_: 't): bool =>
  %raw(`typeof globalThis.Document === "function" && param instanceof globalThis.Document`)

/** Narrows only native Documents in the current JavaScript realm. */
let toDocument = (value: IntersectionObserverTypes.root): option<DOM.document> =>
  if isDocument(value) {
    Some(Obj.magic(value))
  } else {
    None
  }

type decoded =
  | Element(DOMTree.element)
  | Document(DOM.document)
  | Null

let decode = (t: IntersectionObserverTypes.root): decoded => {
  switch toElement(t) {
  | Some(element) => Element(element)
  | None =>
    switch toDocument(t) {
    | Some(document) => Document(document)
    | None => Null
    }
  }
}
