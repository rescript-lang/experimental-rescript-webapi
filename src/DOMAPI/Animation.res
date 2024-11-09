open EventAPI
open DOMAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation)
*/
@new
external make: (~effect: animationEffect=?, ~timeline: animationTimeline=?) => animation =
  "Animation"

external asEventTarget: animation => eventTarget = "%identity"
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
external addEventListener: (
  animation,
  ~type_: eventType,
  ~callback: eventListener<'event>,
  ~options: addEventListenerOptions=?,
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
external addEventListener2: (
  animation,
  ~type_: eventType,
  ~callback: eventListener<'event>,
  ~options: bool=?,
) => unit = "addEventListener"

/**
Removes the event listener in target's event listener list with the same type, callback, and options.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget/removeEventListener)
*/
@send
external removeEventListener: (
  animation,
  ~type_: eventType,
  ~callback: eventListener<'event>,
  ~options: eventListenerOptions=?,
) => unit = "removeEventListener"

/**
Removes the event listener in target's event listener list with the same type, callback, and options.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget/removeEventListener)
*/
@send
external removeEventListener2: (
  animation,
  ~type_: eventType,
  ~callback: eventListener<'event>,
  ~options: bool=?,
) => unit = "removeEventListener"

/**
Dispatches a synthetic event event to target and returns true if either event's cancelable attribute value is false or its preventDefault() method was not invoked, and false otherwise.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget/dispatchEvent)
*/
@send
external dispatchEvent: (animation, event) => bool = "dispatchEvent"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/cancel)
*/
@send
external cancel: animation => unit = "cancel"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/finish)
*/
@send
external finish: animation => unit = "finish"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/play)
*/
@send
external play: animation => unit = "play"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/pause)
*/
@send
external pause: animation => unit = "pause"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/updatePlaybackRate)
*/
@send
external updatePlaybackRate: (animation, float) => unit = "updatePlaybackRate"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/reverse)
*/
@send
external reverse: animation => unit = "reverse"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/persist)
*/
@send
external persist: animation => unit = "persist"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/commitStyles)
*/
@send
external commitStyles: animation => unit = "commitStyles"
