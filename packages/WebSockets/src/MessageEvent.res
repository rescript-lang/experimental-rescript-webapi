/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MessageEvent)
*/
@new
external make: (
  ~type_: string,
  ~eventInitDict: Types.messageEventInit<'t>=?,
) => Types.messageEvent<'t> = "MessageEvent"

external asEvent: Types.messageEvent<'t> => WebApiEvent.Types.event = "%identity"
/**
Returns the invocation target objects of event's path (objects on which listeners will be invoked), except for any nodes in shadow trees of which the shadow root's mode is "closed" that are not reachable from event's currentTarget.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiEvent/composedPath)
*/
@send
external composedPath: Types.messageEvent<'t> => array<WebApiEvent.Types.eventTarget> = "composedPath"

/**
When dispatched in a tree, invoking this method prevents event from reaching any objects other than the current object.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiEvent/stopPropagation)
*/
@send
external stopPropagation: Types.messageEvent<'t> => unit = "stopPropagation"

/**
Invoking this method prevents event from reaching any registered event listeners after the current one finishes running and, when dispatched in a tree, also prevents event from reaching any other objects.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiEvent/stopImmediatePropagation)
*/
@send
external stopImmediatePropagation: Types.messageEvent<'t> => unit = "stopImmediatePropagation"

/**
If invoked when the cancelable attribute value is true, and while executing a listener for the event with passive set to false, signals to the operation that caused event to be dispatched that it needs to be canceled.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiEvent/preventDefault)
*/
@send
external preventDefault: Types.messageEvent<'t> => unit = "preventDefault"
