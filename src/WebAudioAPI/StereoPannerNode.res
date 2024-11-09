open EventAPI
open WebAudioAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/StereoPannerNode)
*/
@new
external make: (~context: baseAudioContext, ~options: stereoPannerOptions=?) => stereoPannerNode =
  "StereoPannerNode"

external asAudioNode: stereoPannerNode => audioNode = "%identity"
external asEventTarget: stereoPannerNode => eventTarget = "%identity"
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
  stereoPannerNode,
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
  stereoPannerNode,
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
  stereoPannerNode,
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
  stereoPannerNode,
  ~type_: eventType,
  ~callback: eventListener<'event>,
  ~options: bool=?,
) => unit = "removeEventListener"

/**
Dispatches a synthetic event event to target and returns true if either event's cancelable attribute value is false or its preventDefault() method was not invoked, and false otherwise.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget/dispatchEvent)
*/
@send
external dispatchEvent: (stereoPannerNode, event) => bool = "dispatchEvent"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/connect)
*/
@send
external connect: (
  stereoPannerNode,
  ~destinationNode: audioNode,
  ~output: int=?,
  ~input: int=?,
) => audioNode = "connect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/connect)
*/
@send
external connect2: (stereoPannerNode, ~destinationParam: audioParam, ~output: int=?) => unit =
  "connect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/disconnect)
*/
@send
external disconnect: stereoPannerNode => unit = "disconnect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/disconnect)
*/
@send
external disconnect2: (stereoPannerNode, int) => unit = "disconnect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/disconnect)
*/
@send
external disconnect3: (stereoPannerNode, audioNode) => unit = "disconnect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/disconnect)
*/
@send
external disconnect4: (stereoPannerNode, ~destinationNode: audioNode, ~output: int) => unit =
  "disconnect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/disconnect)
*/
@send
external disconnect5: (
  stereoPannerNode,
  ~destinationNode: audioNode,
  ~output: int,
  ~input: int,
) => unit = "disconnect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/disconnect)
*/
@send
external disconnect6: (stereoPannerNode, audioParam) => unit = "disconnect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/disconnect)
*/
@send
external disconnect7: (stereoPannerNode, ~destinationParam: audioParam, ~output: int) => unit =
  "disconnect"
