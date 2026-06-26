let target = EventTarget.make()

target->EventTarget.addEventListener(EventType.Click, (event: Event.t) => {
  event->Event.preventDefault
})
