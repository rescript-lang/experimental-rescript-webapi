let acceptsDOMEvent = (_event: Event.t) => ()
let acceptsEvent = (_event: Event.t) => ()

let _ = (event: Event.t) => {
  acceptsEvent(event)
}

let _ = (event: Event.t) => {
  acceptsDOMEvent(event)
}

let handleClick = (event: Event.t) => {
  event->Event.preventDefault
  switch event->Event.target {
  | Value(target) => Console.log(target)
  | Null => Console.log("No target found")
  }
}

let target: EventTarget.t = {}

let fn = (target: Event.eventTarget) => target

let x = fn(target)
