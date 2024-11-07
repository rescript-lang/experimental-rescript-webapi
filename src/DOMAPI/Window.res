open Prelude
open DOMAPI
open CanvasAPI
open FileAPI
open ChannelMessagingAPI
open FetchAPI
open EventAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/reportError)
*/
@send
external reportError: (window, any) => unit = "reportError"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/btoa)
*/
@send
external btoa: (window, string) => string = "btoa"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/atob)
*/
@send
external atob: (window, string) => string = "atob"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/setTimeout)
*/
@send
external setTimeout: (window, ~handler: string, ~timeout: int=?, ~arguments: any) => int =
  "setTimeout"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/setTimeout)
*/
@send
external setTimeout2: (window, ~handler: unit => unit, ~timeout: int=?, ~arguments: any) => int =
  "setTimeout"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/clearTimeout)
*/
@send
external clearTimeout: (window, int) => unit = "clearTimeout"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/setInterval)
*/
@send
external setInterval: (window, ~handler: string, ~timeout: int=?, ~arguments: any) => int =
  "setInterval"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/setInterval)
*/
@send
external setInterval2: (window, ~handler: unit => unit, ~timeout: int=?, ~arguments: any) => int =
  "setInterval"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/clearInterval)
*/
@send
external clearInterval: (window, int) => unit = "clearInterval"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/queueMicrotask)
*/
@send
external queueMicrotask: (window, voidFunction) => unit = "queueMicrotask"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/createImageBitmap)
*/
@send
external createImageBitmap: (
  window,
  ~image: htmlImageElement,
  ~options: imageBitmapOptions=?,
) => Promise.t<imageBitmap> = "createImageBitmap"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/createImageBitmap)
*/
@send
external createImageBitmap2: (
  window,
  ~image: svgImageElement,
  ~options: imageBitmapOptions=?,
) => Promise.t<imageBitmap> = "createImageBitmap"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/createImageBitmap)
*/
@send
external createImageBitmap3: (
  window,
  ~image: htmlVideoElement,
  ~options: imageBitmapOptions=?,
) => Promise.t<imageBitmap> = "createImageBitmap"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/createImageBitmap)
*/
@send
external createImageBitmap4: (
  window,
  ~image: htmlCanvasElement,
  ~options: imageBitmapOptions=?,
) => Promise.t<imageBitmap> = "createImageBitmap"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/createImageBitmap)
*/
@send
external createImageBitmap5: (
  window,
  ~image: imageBitmap,
  ~options: imageBitmapOptions=?,
) => Promise.t<imageBitmap> = "createImageBitmap"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/createImageBitmap)
*/
@send
external createImageBitmap6: (
  window,
  ~image: offscreenCanvas,
  ~options: imageBitmapOptions=?,
) => Promise.t<imageBitmap> = "createImageBitmap"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/createImageBitmap)
*/
@send
external createImageBitmap7: (
  window,
  ~image: videoFrame,
  ~options: imageBitmapOptions=?,
) => Promise.t<imageBitmap> = "createImageBitmap"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/createImageBitmap)
*/
@send
external createImageBitmap8: (
  window,
  ~image: blob,
  ~options: imageBitmapOptions=?,
) => Promise.t<imageBitmap> = "createImageBitmap"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/createImageBitmap)
*/
@send
external createImageBitmap9: (
  window,
  ~image: imageData,
  ~options: imageBitmapOptions=?,
) => Promise.t<imageBitmap> = "createImageBitmap"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/createImageBitmap)
*/
@send
external createImageBitmap10: (
  window,
  ~image: htmlImageElement,
  ~sx: int,
  ~sy: int,
  ~sw: int,
  ~sh: int,
  ~options: imageBitmapOptions=?,
) => Promise.t<imageBitmap> = "createImageBitmap"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/createImageBitmap)
*/
@send
external createImageBitmap11: (
  window,
  ~image: svgImageElement,
  ~sx: int,
  ~sy: int,
  ~sw: int,
  ~sh: int,
  ~options: imageBitmapOptions=?,
) => Promise.t<imageBitmap> = "createImageBitmap"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/createImageBitmap)
*/
@send
external createImageBitmap12: (
  window,
  ~image: htmlVideoElement,
  ~sx: int,
  ~sy: int,
  ~sw: int,
  ~sh: int,
  ~options: imageBitmapOptions=?,
) => Promise.t<imageBitmap> = "createImageBitmap"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/createImageBitmap)
*/
@send
external createImageBitmap13: (
  window,
  ~image: htmlCanvasElement,
  ~sx: int,
  ~sy: int,
  ~sw: int,
  ~sh: int,
  ~options: imageBitmapOptions=?,
) => Promise.t<imageBitmap> = "createImageBitmap"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/createImageBitmap)
*/
@send
external createImageBitmap14: (
  window,
  ~image: imageBitmap,
  ~sx: int,
  ~sy: int,
  ~sw: int,
  ~sh: int,
  ~options: imageBitmapOptions=?,
) => Promise.t<imageBitmap> = "createImageBitmap"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/createImageBitmap)
*/
@send
external createImageBitmap15: (
  window,
  ~image: offscreenCanvas,
  ~sx: int,
  ~sy: int,
  ~sw: int,
  ~sh: int,
  ~options: imageBitmapOptions=?,
) => Promise.t<imageBitmap> = "createImageBitmap"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/createImageBitmap)
*/
@send
external createImageBitmap16: (
  window,
  ~image: videoFrame,
  ~sx: int,
  ~sy: int,
  ~sw: int,
  ~sh: int,
  ~options: imageBitmapOptions=?,
) => Promise.t<imageBitmap> = "createImageBitmap"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/createImageBitmap)
*/
@send
external createImageBitmap17: (
  window,
  ~image: blob,
  ~sx: int,
  ~sy: int,
  ~sw: int,
  ~sh: int,
  ~options: imageBitmapOptions=?,
) => Promise.t<imageBitmap> = "createImageBitmap"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/createImageBitmap)
*/
@send
external createImageBitmap18: (
  window,
  ~image: imageData,
  ~sx: int,
  ~sy: int,
  ~sw: int,
  ~sh: int,
  ~options: imageBitmapOptions=?,
) => Promise.t<imageBitmap> = "createImageBitmap"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/structuredClone)
*/
@send
external structuredClone: (window, 't, ~options: structuredSerializeOptions=?) => 't =
  "structuredClone"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/fetch)
*/
@send
external fetch: (window, ~input: request, ~init: requestInit=?) => Promise.t<response> = "fetch"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/fetch)
*/
@send
external fetch2: (window, ~input: string, ~init: requestInit=?) => Promise.t<response> = "fetch"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DedicatedWorkerGlobalScope/requestAnimationFrame)
*/
@send
external requestAnimationFrame: (window, frameRequestCallback) => int = "requestAnimationFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DedicatedWorkerGlobalScope/cancelAnimationFrame)
*/
@send
external cancelAnimationFrame: (window, int) => unit = "cancelAnimationFrame"

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
external addEventListener: (window, eventType, eventListener<'event>) => unit = "addEventListener"

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
  window,
  eventType,
  eventListener<'event>,
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
external addEventListenerWithUseCapture: (window, eventType, eventListener<'event>, bool) => unit =
  "addEventListener"

/**
Removes the event listener in target's event listener list with the same type, callback, and options.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget/removeEventListener)
*/
@send
external removeEventListener: (window, eventType, eventListener<'event>) => unit =
  "addEventListener"

/**
Removes the event listener in target's event listener list with the same type, callback, and options.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget/removeEventListener)
*/
@send
external removeEventListenerWithOptions: (
  window,
  eventType,
  eventListener<'event>,
  eventListenerOptions,
) => unit = "addEventListener"

/**
Removes the event listener in target's event listener list with the same type, callback, and options.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget/removeEventListener)
*/
@send
external removeEventListenerWithUseCapture: (
  window,
  eventType,
  eventListener<'event>,
  bool,
) => unit = "addEventListener"

/**
Dispatches a synthetic event event to target and returns true if either event's cancelable attribute value is false or its preventDefault() method was not invoked, and false otherwise.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget/dispatchEvent)
*/
@send
external dispatchEvent: (window, event) => bool = "dispatchEvent"

/**
Closes the window.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/close)
*/
@send
external close: window => unit = "close"

/**
Cancels the document load.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/stop)
*/
@send
external stop: window => unit = "stop"

/**
Moves the focus to the window's browsing context, if any.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/focus)
*/
@send
external focus: window => unit = "focus"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/open)
*/
@send
external open_: (window, ~url: string=?, ~target: string=?, ~features: string=?) => window = "open"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/alert)
*/
@send
external alert: window => unit = "alert"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/alert)
*/
@send
external alert2: (window, string) => unit = "alert"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/confirm)
*/
@send
external confirm: (window, ~message: string=?) => bool = "confirm"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/prompt)
*/
@send
external prompt: (window, ~message: string=?, ~default: string=?) => string = "prompt"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/print)
*/
@send
external print: window => unit = "print"

/**
Posts a message to the given window. Messages can be structured objects, e.g. nested objects and arrays, can contain JavaScript values (strings, numbers, Date objects, etc), and can contain certain data objects such as File Blob, FileList, and ArrayBuffer objects.

Objects listed in the transfer member of options are transferred, not just cloned, meaning that they are no longer usable on the sending side.

A target origin can be specified using the targetOrigin member of options. If not provided, it defaults to "/". This default restricts the message to same-origin targets only.

If the origin of the target window doesn't match the given target origin, the message is discarded, to avoid information leakage. To send the message to the target regardless of origin, set the target origin to "*".

Throws a "DataCloneError" DOMException if transfer array contains duplicate objects or if message could not be cloned.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/postMessage)
*/
@send
external postMessage: (
  window,
  ~message: any,
  ~targetOrigin: string,
  ~transfer: array<Dict.t<string>>=?,
) => unit = "postMessage"

/**
Posts a message to the given window. Messages can be structured objects, e.g. nested objects and arrays, can contain JavaScript values (strings, numbers, Date objects, etc), and can contain certain data objects such as File Blob, FileList, and ArrayBuffer objects.

Objects listed in the transfer member of options are transferred, not just cloned, meaning that they are no longer usable on the sending side.

A target origin can be specified using the targetOrigin member of options. If not provided, it defaults to "/". This default restricts the message to same-origin targets only.

If the origin of the target window doesn't match the given target origin, the message is discarded, to avoid information leakage. To send the message to the target regardless of origin, set the target origin to "*".

Throws a "DataCloneError" DOMException if transfer array contains duplicate objects or if message could not be cloned.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/postMessage)
*/
@send
external postMessage2: (window, ~message: any, ~options: windowPostMessageOptions=?) => unit =
  "postMessage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/matchMedia)
*/
@send
external matchMedia: (window, string) => mediaQueryList = "matchMedia"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/moveTo)
*/
@send
external moveTo: (window, ~x: int, ~y: int) => unit = "moveTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/moveBy)
*/
@send
external moveBy: (window, ~x: int, ~y: int) => unit = "moveBy"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/resizeTo)
*/
@send
external resizeTo: (window, ~width: int, ~height: int) => unit = "resizeTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/resizeBy)
*/
@send
external resizeBy: (window, ~x: int, ~y: int) => unit = "resizeBy"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/scroll)
*/
@send
external scroll: (window, ~options: scrollToOptions=?) => unit = "scroll"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/scroll)
*/
@send
external scroll2: (window, ~x: float, ~y: float) => unit = "scroll"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/scrollTo)
*/
@send
external scrollTo: (window, ~options: scrollToOptions=?) => unit = "scrollTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/scrollTo)
*/
@send
external scrollTo2: (window, ~x: float, ~y: float) => unit = "scrollTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/scrollBy)
*/
@send
external scrollBy: (window, ~options: scrollToOptions=?) => unit = "scrollBy"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/scrollBy)
*/
@send
external scrollBy2: (window, ~x: float, ~y: float) => unit = "scrollBy"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/getComputedStyle)
*/
@send
external getComputedStyle: (window, ~elt: element, ~pseudoElt: string=?) => cssStyleDeclaration =
  "getComputedStyle"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/requestIdleCallback)
*/
@send
external requestIdleCallback: (
  window,
  ~callback: idleRequestCallback,
  ~options: idleRequestOptions=?,
) => int = "requestIdleCallback"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/cancelIdleCallback)
*/
@send
external cancelIdleCallback: (window, int) => unit = "cancelIdleCallback"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/getSelection)
*/
@send
external getSelection: window => selection = "getSelection"
