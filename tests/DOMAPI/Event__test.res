let acceptsDOMEvent = (_event: DOM.event) => ()
let acceptsDOMExtendableEvent = (_event: DOM.extendableEvent) => ()

let _ = (event: PushEvent.t) => {
  acceptsDOMEvent(event->PushEvent.asEvent)
  acceptsDOMExtendableEvent(event->PushEvent.asExtendableEvent)
}

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
