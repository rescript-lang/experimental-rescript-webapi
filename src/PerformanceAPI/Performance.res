open EventAPI
open PerformanceAPI

external asEventTarget: performance => eventTarget = "%identity"
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
external addEventListener: (performance, eventType, eventListener<'event>) => unit =
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
  performance,
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
external addEventListenerWithUseCapture: (
  performance,
  eventType,
  eventListener<'event>,
  bool,
) => unit = "addEventListener"

/**
Removes the event listener in target's event listener list with the same type, callback, and options.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget/removeEventListener)
*/
@send
external removeEventListener: (performance, eventType, eventListener<'event>) => unit =
  "addEventListener"

/**
Removes the event listener in target's event listener list with the same type, callback, and options.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget/removeEventListener)
*/
@send
external removeEventListenerWithOptions: (
  performance,
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
  performance,
  eventType,
  eventListener<'event>,
  bool,
) => unit = "addEventListener"

/**
Dispatches a synthetic event event to target and returns true if either event's cancelable attribute value is false or its preventDefault() method was not invoked, and false otherwise.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget/dispatchEvent)
*/
@send
external dispatchEvent: (performance, event) => bool = "dispatchEvent"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/now)
*/
@send
external now: performance => float = "now"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/toJSON)
*/
@send
external toJSON: performance => Dict.t<string> = "toJSON"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/getEntries)
*/
@send
external getEntries: performance => performanceEntryList = "getEntries"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/getEntriesByType)
*/
@send
external getEntriesByType: (performance, string) => performanceEntryList = "getEntriesByType"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/getEntriesByName)
*/
@send
external getEntriesByName: (performance, ~name: string, ~type_: string=?) => performanceEntryList =
  "getEntriesByName"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/clearResourceTimings)
*/
@send
external clearResourceTimings: performance => unit = "clearResourceTimings"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/setResourceTimingBufferSize)
*/
@send
external setResourceTimingBufferSize: (performance, int) => unit = "setResourceTimingBufferSize"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/mark)
*/
@send
external mark: (
  performance,
  ~markName: string,
  ~markOptions: performanceMarkOptions=?,
) => performanceMark = "mark"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/clearMarks)
*/
@send
external clearMarks: (performance, ~markName: string=?) => unit = "clearMarks"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/measure)
*/
@send
external measure: (
  performance,
  ~measureName: string,
  ~startOrMeasureOptions: string=?,
  ~endMark: string=?,
) => performanceMeasure = "measure"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/measure)
*/
@send
external measure2: (
  performance,
  ~measureName: string,
  ~startOrMeasureOptions: performanceMeasureOptions=?,
  ~endMark: string=?,
) => performanceMeasure = "measure"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/clearMeasures)
*/
@send
external clearMeasures: (performance, ~measureName: string=?) => unit = "clearMeasures"
