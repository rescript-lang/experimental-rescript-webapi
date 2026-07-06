// This file is temporary and will eventually replace DOM.res

@editor.completeFrom(Window)
type window = private {}
external window: window = "window"

@editor.completeFrom(Event)
type event = private {}

@editor.completeFrom(EventTarget)
type eventTarget = private {}
