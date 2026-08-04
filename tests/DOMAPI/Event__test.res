let acceptsDOMEvent = (_event: DOM.event) => ()
let acceptsEvent = (_event: DOM.event) => ()

let _ = (event: DOM.event) => {
  acceptsEvent(event)
}

let _ = (event: DOM.event) => {
  acceptsDOMEvent(event->Event.asEvent)
}

let _ = (event: DOM.extendableEvent) => event->ExtendableEvent.asExtendableEvent

let handleClick = (event: DOM.event) => {
  event->Event.preventDefault
  switch event->Event.target {
  | Value(target) => Console.log(target)
  | Null => Console.log("No target found")
  }
}

let target: DOM.eventTarget = {}

let fn = (target: DOM.eventTarget) =>
  target->EventTarget.addEventListener(Click, () => Console.log("Click 1"))

let x = fn(target)

// Testing out global event listeners
DOM.window->Window.addEventListener(Click, () => Console.log("Click 2"))
