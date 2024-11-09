open EventAPI
open CSSFontLoadingAPI

external asEventTarget: fontFaceSet => eventTarget = "%identity"
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
  fontFaceSet,
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
  fontFaceSet,
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
  fontFaceSet,
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
  fontFaceSet,
  ~type_: eventType,
  ~callback: eventListener<'event>,
  ~options: bool=?,
) => unit = "removeEventListener"

/**
Dispatches a synthetic event event to target and returns true if either event's cancelable attribute value is false or its preventDefault() method was not invoked, and false otherwise.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget/dispatchEvent)
*/
@send
external dispatchEvent: (fontFaceSet, event) => bool = "dispatchEvent"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFaceSet/add)
*/
@send
external add: (fontFaceSet, fontFace) => fontFaceSet = "add"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFaceSet/delete)
*/
@send
external delete: (fontFaceSet, fontFace) => bool = "delete"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFaceSet/clear)
*/
@send
external clear: fontFaceSet => unit = "clear"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFaceSet/load)
*/
@send
external load: (fontFaceSet, ~font: string, ~text: string=?) => Promise.t<array<fontFace>> = "load"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFaceSet/check)
*/
@send
external check: (fontFaceSet, ~font: string, ~text: string=?) => bool = "check"
