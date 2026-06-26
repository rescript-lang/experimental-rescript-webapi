@@warning("-30")

/**
A controller object that allows you to abort one or more WebApiDOM requests as and when desired.
[See AbortController on MDN](https://developer.mozilla.org/docs/Web/API/AbortController)
*/
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
and abortSignal = private {
  ...Base.eventTarget,
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

type eventListener<'event> = 'event => unit

type eventListenerOptions = {mutable capture?: bool}

type eventInit = {
  mutable bubbles?: bool,
  mutable cancelable?: bool,
  mutable composed?: bool,
}

type addEventListenerOptions = {
  ...eventListenerOptions,
  mutable passive?: bool,
  mutable once?: bool,
  mutable signal?: abortSignal,
}

/**
The ExtendableEvent interface extends the lifetime of the install and activate events dispatched on the global scope as part of the service worker lifecycle.
[See ExtendableEvent on MDN](https://developer.mozilla.org/docs/Web/API/ExtendableEvent)
 */
type extendableEvent = private {
  ...Base.event,
}
