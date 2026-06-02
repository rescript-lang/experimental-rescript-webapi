/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event)
*/
type eventTarget = Base__EventTarget.t = private {...Base__EventTarget.t}

type t = Base__Event.t = private {...Base__Event.t}

type eventListener<'event> = EventTypes.eventListener<'event>

type eventListenerOptions = EventTypes.eventListenerOptions = {mutable capture?: bool}

type abortSignal = EventTypes.abortSignal = private {...EventTypes.abortSignal}

type eventInit = EventTypes.eventInit = {
  mutable bubbles?: bool,
  mutable cancelable?: bool,
  mutable composed?: bool,
}

type addEventListenerOptions = EventTypes.addEventListenerOptions = {
  ...eventListenerOptions,
  mutable passive?: bool,
  mutable once?: bool,
  mutable signal?: abortSignal,
}

@new
external make: (~type_: string, ~eventInitDict: eventInit=?) => t = "Event"

@get
external type_: t => EventType.t = "type"

@get
external target: t => Null.t<eventTarget> = "target"

@get
external currentTarget: t => Null.t<eventTarget> = "currentTarget"

@get
external eventPhase: t => int = "eventPhase"

@get
external bubbles: t => bool = "bubbles"

@get
external cancelable: t => bool = "cancelable"

@get
external defaultPrevented: t => bool = "defaultPrevented"

@get
external composed: t => bool = "composed"

@get
external isTrusted: t => bool = "isTrusted"

@get
external timeStamp: t => float = "timeStamp"

module Impl = (
  T: {
    type t
  },
) => {
  external asEvent: T.t => t = "%identity"

  /**
Returns the invocation target objects of event's path (objects on which listeners will be invoked), except for any nodes in shadow trees of which the shadow root's mode is "closed" that are not reachable from event's currentTarget.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/composedPath)
*/
  @send
  external composedPath: T.t => array<eventTarget> = "composedPath"

  /**
If invoked when the cancelable attribute value is true, and while executing a listener for the event with passive set to false, signals to the operation that caused event to be dispatched that it needs to be canceled.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/preventDefault)
*/
  @send
  external preventDefault: T.t => unit = "preventDefault"

  /**
Invoking this method prevents event from reaching any registered event listeners after the current one finishes running and, when dispatched in a tree, also prevents event from reaching any other objects.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/stopImmediatePropagation)
*/
  @send
  external stopImmediatePropagation: T.t => unit = "stopImmediatePropagation"

  /**
When dispatched in a tree, invoking this method prevents event from reaching any objects other than the current object.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/stopPropagation)
*/
  @send
  external stopPropagation: T.t => unit = "stopPropagation"
}

include Impl({type t = t})
