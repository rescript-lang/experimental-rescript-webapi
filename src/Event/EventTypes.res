@@warning("-30")

type eventType = EventType.t

type eventListener<'event> = 'event => unit

/**
EventTarget is a WebApiDOM interface implemented by objects that can receive events and may have listeners for them.
[See EventTarget on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget)
*/
@editor.completeFrom(EventTarget)
type eventTarget = BaseEvent.eventTarget = private {...BaseEvent.eventTarget}

/**
An event which takes place in the DOM.
[See WebApiEvent on MDN](https://developer.mozilla.org/docs/Web/API/Event)
*/
@editor.completeFrom(WebApiEvent)
type event = private {
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
A controller object that allows you to abort one or more WebApiDOM requests as and when desired.
[See AbortController on MDN](https://developer.mozilla.org/docs/Web/API/AbortController)
*/
@editor.completeFrom(AbortController)
type rec abortController = private {
  /**
    Returns the AbortSignal object associated with this object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbortController/signal)
    */
  signal: abortSignal,
}

/**
A signal object that allows you to communicate with a WebApiDOM request (such as a WebApiFetch) and abort it if required via an AbortController object.
[See AbortSignal on MDN](https://developer.mozilla.org/docs/Web/API/AbortSignal)
*/
@editor.completeFrom(AbortSignal) and abortSignal = private {
  ...eventTarget,
  /**
    Returns true if this AbortSignal's AbortController has signaled to abort, and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbortSignal/aborted)
    */
  aborted: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbortSignal/reason)
    */
  reason: JSON.t,
}

type eventListenerOptions = {mutable capture?: bool}

type addEventListenerOptions = {
  ...eventListenerOptions,
  mutable passive?: bool,
  mutable once?: bool,
  mutable signal?: abortSignal,
}

type eventInit = {
  mutable bubbles?: bool,
  mutable cancelable?: bool,
  mutable composed?: bool,
}

/**
The ExtendableEvent interface extends the lifetime of the install and activate events dispatched on the global scope as part of the service worker lifecycle.
[See ExtendableEvent on MDN](https://developer.mozilla.org/docs/Web/API/ExtendableEvent)
 */
@editor.completeFrom(ExtendableEvent)
type extendableEvent = private {
  ...event,
}
