let acceptsDOMEventTarget = (_target: DOM.eventTarget) => ()
let acceptsEventTargetAlias = (_target: Event.eventTarget) => ()
let acceptsEventTargetLeaf = (_target: EventTarget.t) => ()

let _ = (target: DOM.eventTarget) => {
  acceptsEventTargetAlias(target)
  acceptsEventTargetLeaf(target)
}

let _ = (target: Event.eventTarget) => {
  acceptsDOMEventTarget(target)
  acceptsEventTargetLeaf(target)
}

let _ = (target: EventTarget.t) => {
  acceptsDOMEventTarget(target)
  acceptsEventTargetAlias(target)
}
