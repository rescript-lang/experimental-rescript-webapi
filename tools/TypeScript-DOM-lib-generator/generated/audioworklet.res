/** Temporary, to be fixed */
type error = {}
type any
type arrayBufferView = {}
/* End temporary */

type compressionFormat =
  | @as("deflate") Deflate
  | @as("deflate-raw") DeflateRaw
  | @as("gzip") Gzip

type readableStreamReaderMode =
  | @as("byob") Byob

type readableStreamType =
  | @as("bytes") Bytes

/**
An event which takes place in the DOM.
[See Event on MDN](https://developer.mozilla.org/docs/Web/API/Event)
*/
type event = {
    /**
    Returns the type of event, e.g. "click", "hashchange", or "submit".
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/type)
    */
    @as("type") type_: domString,
    /**
    Returns the object to which event is dispatched (its target).
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/target)
    */
    target: Null.t<eventTarget>,
    /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/srcElement)
    */
    srcElement: Null.t<eventTarget>,
    /**
    Returns the object whose event listener's callback is currently being invoked.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/currentTarget)
    */
    currentTarget: Null.t<eventTarget>,
    /**
    Returns the event's phase, which is one of NONE, CAPTURING_PHASE, AT_TARGET, and BUBBLING_PHASE.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/eventPhase)
    */
    eventPhase: unsigned short,
    /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/cancelBubble)
    */
    cancelBubble: boolean,
    /**
    Returns true or false depending on how event was initialized. True if event goes through its target's ancestors in reverse tree order, and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/bubbles)
    */
    bubbles: boolean,
    /**
    Returns true or false depending on how event was initialized. Its return value does not always carry meaning, but true can indicate that part of the operation during which event was dispatched, can be canceled by invoking the preventDefault() method.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/cancelable)
    */
    cancelable: boolean,
    /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/returnValue)
    */
    returnValue: boolean,
    /**
    Returns true if preventDefault() was invoked successfully to indicate cancelation, and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/defaultPrevented)
    */
    defaultPrevented: boolean,
    /**
    Returns true or false depending on how event was initialized. True if event invokes listeners past a ShadowRoot node that is the root of its target, and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/composed)
    */
    composed: boolean,
    /**
    Returns true if event was dispatched by the user agent, and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/isTrusted)
    */
    isTrusted: boolean,
    /**
    Returns the event's timestamp as the number of milliseconds measured relative to the time origin.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/timeStamp)
    */
    timeStamp: domHighResTimeStamp,
}
/**
EventTarget is a DOM interface implemented by objects that can receive events and may have listeners for them.
[See EventTarget on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget)
*/
type eventTarget = {
}
