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

let fn = (target: DOM_.eventTarget) =>
  target->EventTarget.addEventListener(Click, () => Console.log("Click 1"))

let x = fn(target)

// Testing out global event listeners
DOM_.window->Window.addEventListener(Click, () => Console.log("Click 2"))
