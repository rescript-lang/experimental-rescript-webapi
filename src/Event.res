@@warning("-30")

open Prelude

@unboxed
type eventType =
  | @as("abort") Abort
  | @as("auxclick") Auxclick
  | @as("beforeinput") Beforeinput
  | @as("beforetoggle") Beforetoggle
  | @as("blur") Blur
  | @as("cancel") Cancel
  | @as("canplay") Canplay
  | @as("canplaythrough") Canplaythrough
  | @as("change") Change
  | @as("click") Click
  | @as("close") Close
  | @as("contextlost") Contextlost
  | @as("contextmenu") Contextmenu
  | @as("contextrestored") Contextrestored
  | @as("copy") Copy
  | @as("cuechange") Cuechange
  | @as("cut") Cut
  | @as("dblclick") Dblclick
  | @as("drag") Drag
  | @as("dragend") Dragend
  | @as("dragenter") Dragenter
  | @as("dragleave") Dragleave
  | @as("dragover") Dragover
  | @as("dragstart") Dragstart
  | @as("drop") Drop
  | @as("durationchange") Durationchange
  | @as("emptied") Emptied
  | @as("ended") Ended
  | @as("error") Error
  | @as("focus") Focus
  | @as("formdata") Formdata
  | @as("input") Input
  | @as("invalid") Invalid
  | @as("keydown") Keydown
  | @as("keypress") Keypress
  | @as("keyup") Keyup
  | @as("load") Load
  | @as("loadeddata") Loadeddata
  | @as("loadedmetadata") Loadedmetadata
  | @as("loadstart") Loadstart
  | @as("mousedown") Mousedown
  | @as("mouseenter") Mouseenter
  | @as("mouseleave") Mouseleave
  | @as("mousemove") Mousemove
  | @as("mouseout") Mouseout
  | @as("mouseover") Mouseover
  | @as("mouseup") Mouseup
  | @as("paste") Paste
  | @as("pause") Pause
  | @as("play") Play
  | @as("playing") Playing
  | @as("progress") Progress
  | @as("ratechange") Ratechange
  | @as("reset") Reset
  | @as("resize") Resize
  | @as("scroll") Scroll
  | @as("scrollend") Scrollend
  | @as("securitypolicyviolation") Securitypolicyviolation
  | @as("seeked") Seeked
  | @as("seeking") Seeking
  | @as("select") Select
  | @as("slotchange") Slotchange
  | @as("stalled") Stalled
  | @as("submit") Submit
  | @as("suspend") Suspend
  | @as("timeupdate") Timeupdate
  | @as("toggle") Toggle
  | @as("volumechange") Volumechange
  | @as("waiting") Waiting
  | @as("webkitanimationend") Webkitanimationend
  | @as("webkitanimationiteration") Webkitanimationiteration
  | @as("webkitanimationstart") Webkitanimationstart
  | @as("webkittransitionend") Webkittransitionend
  | @as("wheel") Wheel
  | @as("animationstart") Animationstart
  | @as("animationiteration") Animationiteration
  | @as("animationend") Animationend
  | @as("animationcancel") Animationcancel
  | @as("transitionrun") Transitionrun
  | @as("transitionstart") Transitionstart
  | @as("transitionend") Transitionend
  | @as("transitioncancel") Transitioncancel
  | @as("pointerover") Pointerover
  | @as("pointerenter") Pointerenter
  | @as("pointerdown") Pointerdown
  | @as("pointermove") Pointermove
  | @as("pointerup") Pointerup
  | @as("pointercancel") Pointercancel
  | @as("pointerout") Pointerout
  | @as("pointerleave") Pointerleave
  | @as("gotpointercapture") Gotpointercapture
  | @as("lostpointercapture") Lostpointercapture
  | @as("selectstart") Selectstart
  | @as("selectionchange") Selectionchange
  | @as("touchstart") Touchstart
  | @as("touchend") Touchend
  | @as("touchmove") Touchmove
  | @as("touchcancel") Touchcancel
  | Custom(string)

type eventListener<'event> = 'event => unit

/**
EventTarget is a DOM interface implemented by objects that can receive events and may have listeners for them.
[See EventTarget on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget)
*/
type eventTarget = {}

/**
An event which takes place in the DOM.
[See Event on MDN](https://developer.mozilla.org/docs/Web/API/Event)
*/
type event = {
  /**
    Returns the type of event, e.g. "click", "hashchange", or "submit".
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/type)
    */
  @as("type")
  type_: eventType,
  /**
    Returns the object to which event is dispatched (its target).
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/target)
    */
  target: Null.t<eventTarget>,
  /**
    Returns the object whose event listener's callback is currently being invoked.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/currentTarget)
    */
  currentTarget: Null.t<eventTarget>,
  /**
    Returns the event's phase, which is one of NONE, CAPTURING_PHASE, AT_TARGET, and BUBBLING_PHASE.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/eventPhase)
    */
  eventPhase: int,
  /**
    Returns true or false depending on how event was initialized. True if event goes through its target's ancestors in reverse tree order, and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/bubbles)
    */
  bubbles: bool,
  /**
    Returns true or false depending on how event was initialized. Its return value does not always carry meaning, but true can indicate that part of the operation during which event was dispatched, can be canceled by invoking the preventDefault() method.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/cancelable)
    */
  cancelable: bool,
  /**
    Returns true if preventDefault() was invoked successfully to indicate cancelation, and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/defaultPrevented)
    */
  defaultPrevented: bool,
  /**
    Returns true or false depending on how event was initialized. True if event invokes listeners past a ShadowRoot node that is the root of its target, and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/composed)
    */
  composed: bool,
  /**
    Returns true if event was dispatched by the user agent, and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/isTrusted)
    */
  isTrusted: bool,
  /**
    Returns the event's timestamp as the number of milliseconds measured relative to the time origin.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/timeStamp)
    */
  timeStamp: float,
}

/**
A controller object that allows you to abort one or more DOM requests as and when desired.
[See AbortController on MDN](https://developer.mozilla.org/docs/Web/API/AbortController)
*/
type rec abortController = {
  /**
    Returns the AbortSignal object associated with this object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbortController/signal)
    */
  signal: abortSignal,
}

/**
A signal object that allows you to communicate with a DOM request (such as a Fetch) and abort it if required via an AbortController object.
[See AbortSignal on MDN](https://developer.mozilla.org/docs/Web/API/AbortSignal)
*/
and abortSignal = {
  ...eventTarget,
  /**
    Returns true if this AbortSignal's AbortController has signaled to abort, and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbortSignal/aborted)
    */
  aborted: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbortSignal/reason)
    */
  reason: any,
}

type eventListenerOptions = {mutable capture: bool}

type addEventListenerOptions = {
  ...eventListenerOptions,
  mutable passive: bool,
  mutable once: bool,
  mutable signal: abortSignal,
}

type eventInit = {
  mutable bubbles: bool,
  mutable cancelable: bool,
  mutable composed: bool,
}

module EventTarget = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget)
    */
  @new
  external make: unit => eventTarget = "EventTarget"
  /**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.

The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.

When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.

When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.

When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.

If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.

The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget/addEventListener)
    */
  @send
  external addEventListener: (eventTarget, eventType, eventListener<eventType>) => unit =
    "addEventListener"

  /**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.

The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.

When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.

When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.

When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.

If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.

The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget/addEventListener)
    */
  @send
  external addEventListenerWithOptions: (
    eventTarget,
    eventType,
    eventListener<eventType>,
    addEventListenerOptions,
  ) => unit = "addEventListener"

  /**
    Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.

The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.

When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.

When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in § 2.8 Observing event listeners.

When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.

If an AbortSignal is passed for options's signal, then the event listener will be removed when signal is aborted.

The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget/addEventListener)
    */
  @send
  external addEventListenerWithUseCapture: (
    eventTarget,
    eventType,
    eventListener<eventType>,
    bool,
  ) => unit = "addEventListener"

  /**
    Removes the event listener in target's event listener list with the same type, callback, and options.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget/removeEventListener)
    */
  @send
  external removeEventListener: (eventTarget, eventType, eventListener<eventType>) => unit =
    "addEventListener"

  /**
    Removes the event listener in target's event listener list with the same type, callback, and options.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget/removeEventListener)
    */
  @send
  external removeEventListenerWithOptions: (
    eventTarget,
    eventType,
    eventListener<eventType>,
    eventListenerOptions,
  ) => unit = "addEventListener"

  /**
    Removes the event listener in target's event listener list with the same type, callback, and options.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget/removeEventListener)
    */
  @send
  external removeEventListenerWithUseCapture: (
    eventTarget,
    eventType,
    eventListener<eventType>,
    bool,
  ) => unit = "addEventListener"

  /**
    Dispatches a synthetic event event to target and returns true if either event's cancelable attribute value is false or its preventDefault() method was not invoked, and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget/dispatchEvent)
    */
  @send
  external dispatchEvent: (eventTarget, event) => bool = "dispatchEvent"
}

module Event = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event)
    */
  @new
  external make: (string, eventInit) => event = "Event"
  /**
    Returns the invocation target objects of event's path (objects on which listeners will be invoked), except for any nodes in shadow trees of which the shadow root's mode is "closed" that are not reachable from event's currentTarget.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/composedPath)
    */
  @send
  external composedPath: event => array<eventTarget> = "composedPath"

  /**
    When dispatched in a tree, invoking this method prevents event from reaching any objects other than the current object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/stopPropagation)
    */
  @send
  external stopPropagation: event => unit = "stopPropagation"

  /**
    Invoking this method prevents event from reaching any registered event listeners after the current one finishes running and, when dispatched in a tree, also prevents event from reaching any other objects.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/stopImmediatePropagation)
    */
  @send
  external stopImmediatePropagation: event => unit = "stopImmediatePropagation"

  /**
    If invoked when the cancelable attribute value is true, and while executing a listener for the event with passive set to false, signals to the operation that caused event to be dispatched that it needs to be canceled.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/preventDefault)
    */
  @send
  external preventDefault: event => unit = "preventDefault"
}

module AbortController = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbortController)
    */
  @new
  external make: unit => abortController = "AbortController"
  /**
    Invoking this method will set this object's AbortSignal's aborted flag and signal to any observers that the associated activity is to be aborted.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbortController/abort)
    */
  @send
  external abort: (abortController, any) => unit = "abort"
}

module AbortSignal = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbortSignal/abort_static)
    */
  @scope("AbortSignal")
  external abort: any => abortSignal = "abort"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbortSignal/timeout_static)
    */
  @scope("AbortSignal")
  external timeout: int => abortSignal = "timeout"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbortSignal/any_static)
    */
  @scope("AbortSignal")
  external any: array<abortSignal> => abortSignal = "any"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbortSignal/throwIfAborted)
    */
  @send
  external throwIfAborted: abortSignal => unit = "throwIfAborted"
}
