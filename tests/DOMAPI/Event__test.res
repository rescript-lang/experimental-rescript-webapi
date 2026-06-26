let acceptsDOMEvent = (_event: Event.t) => ()
let acceptsEvent = (_event: Event.t) => ()

let _ = (event: Event.t) => {
  acceptsEvent(event)
}

let _ = (event: Event.t) => {
  acceptsDOMEvent(event)
}
