let acceptsDOMEventTarget = (_target: EventTarget.t) => ()
let acceptsEventTargetLeaf = (_target: EventTarget.t) => ()

let _ = (target: EventTarget.t) => {
  acceptsEventTargetLeaf(target)
}

let _ = (target: EventTarget.t) => {
  acceptsDOMEventTarget(target)
}
