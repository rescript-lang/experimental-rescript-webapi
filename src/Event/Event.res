type eventInit = DOM.eventInit = {
  mutable bubbles?: bool,
  mutable cancelable?: bool,
  mutable composed?: bool,
}

@new
external make: (~type_: string, ~eventInitDict: eventInit=?) => DOM.event = "Event"

@get
external type_: DOM.event => EventType.t = "type"

@get
external target: DOM.event => Null.t<DOM.eventTarget> = "target"

@get
external currentTarget: DOM.event => Null.t<DOM.eventTarget> = "currentTarget"

@get
external eventPhase: DOM.event => int = "eventPhase"

@get
external bubbles: DOM.event => bool = "bubbles"

@get
external cancelable: DOM.event => bool = "cancelable"

@get
external defaultPrevented: DOM.event => bool = "defaultPrevented"

@get
external composed: DOM.event => bool = "composed"

@get
external isTrusted: DOM.event => bool = "isTrusted"

@get
external timeStamp: DOM.event => float = "timeStamp"

module Impl = (
  T: {
    type t
  },
) => {
  /**
Returns the invocation target objects of event's path (objects on which listeners will be invoked), except for any nodes in shadow trees of which the shadow root's mode is "closed" that are not reachable from event's currentTarget.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/composedPath)
*/
  @send
  external composedPath: T.t => array<DOM.eventTarget> = "composedPath"

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

include Impl({type t = DOM.event})
