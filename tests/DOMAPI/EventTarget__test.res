let acceptsDOMEventTarget = (_target: DOM.eventTarget) => ()
let acceptsEventTargetLeaf = (_target: DOM.eventTarget) => ()

let _ = (target: DOM.eventTarget) => {
  acceptsEventTargetLeaf(target)
}

let _ = (target: DOM.eventTarget) => {
  acceptsDOMEventTarget(target)
}

let el = switch Document.make()->Document.getElementById("foo") {
| Null => ()
| Value(el) => el->Element.addEventListener(Click, () => ())
}
