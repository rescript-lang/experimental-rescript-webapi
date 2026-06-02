let acceptsDOMEvent = (_event: DOM.event) => ()
let acceptsEvent = (_event: Event.t) => ()

let _ = (event: DOM.event) => {
  acceptsEvent(event)
}

let _ = (event: Event.t) => {
  acceptsDOMEvent(event)
}
