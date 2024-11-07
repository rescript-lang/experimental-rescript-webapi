open DOMAPI
open EventAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Comment)
*/
@new
external make: string => comment = "Comment"

/**
Inserts nodes just before node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/before)
*/
@send
external before: (comment, node) => unit = "before"

/**
Inserts nodes just before node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/before)
*/
@send
external before2: (comment, string) => unit = "before"

/**
Inserts nodes just after node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/after)
*/
@send
external after: (comment, node) => unit = "after"

/**
Inserts nodes just after node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/after)
*/
@send
external after2: (comment, string) => unit = "after"

/**
Replaces node with nodes, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/replaceWith)
*/
@send
external replaceWith: (comment, node) => unit = "replaceWith"

/**
Replaces node with nodes, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/replaceWith)
*/
@send
external replaceWith2: (comment, string) => unit = "replaceWith"

/**
Removes node.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/remove)
*/
@send
external remove: comment => unit = "remove"

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
external addEventListener: (comment, eventType, eventListener<'event>) => unit = "addEventListener"

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
  comment,
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
external addEventListenerWithUseCapture: (comment, eventType, eventListener<'event>, bool) => unit =
  "addEventListener"

/**
Removes the event listener in target's event listener list with the same type, callback, and options.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget/removeEventListener)
*/
@send
external removeEventListener: (comment, eventType, eventListener<'event>) => unit =
  "addEventListener"

/**
Removes the event listener in target's event listener list with the same type, callback, and options.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget/removeEventListener)
*/
@send
external removeEventListenerWithOptions: (
  comment,
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
  comment,
  eventType,
  eventListener<'event>,
  bool,
) => unit = "addEventListener"

/**
Dispatches a synthetic event event to target and returns true if either event's cancelable attribute value is false or its preventDefault() method was not invoked, and false otherwise.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget/dispatchEvent)
*/
@send
external dispatchEvent: (comment, event) => bool = "dispatchEvent"

/**
Returns node's root.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/getRootNode)
*/
@send
external getRootNode: (comment, getRootNodeOptions) => node = "getRootNode"

/**
Returns whether node has children.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/hasChildNodes)
*/
@send
external hasChildNodes: comment => bool = "hasChildNodes"

/**
Removes empty exclusive Text nodes and concatenates the data of remaining contiguous exclusive Text nodes into the first of their nodes.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/normalize)
*/
@send
external normalize: comment => unit = "normalize"

/**
Returns a copy of node. If deep is true, the copy also includes the node's descendants.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/cloneNode)
*/
@send
external cloneNode: (comment, bool) => node = "cloneNode"

/**
Returns whether node and otherNode have the same properties.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isEqualNode)
*/
@send
external isEqualNode: (comment, node) => bool = "isEqualNode"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isSameNode)
*/
@send
external isSameNode: (comment, node) => bool = "isSameNode"

/**
Returns a bitmask indicating the position of other relative to node.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/compareDocumentPosition)
*/
@send
external compareDocumentPosition: (comment, node) => int = "compareDocumentPosition"

/**
Returns true if other is an inclusive descendant of node, and false otherwise.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/contains)
*/
@send
external contains: (comment, node) => bool = "contains"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lookupPrefix)
*/
@send
external lookupPrefix: (comment, string) => string = "lookupPrefix"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lookupNamespaceURI)
*/
@send
external lookupNamespaceURI: (comment, string) => string = "lookupNamespaceURI"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isDefaultNamespace)
*/
@send
external isDefaultNamespace: (comment, string) => bool = "isDefaultNamespace"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/insertBefore)
*/
@send
external insertBefore: (comment, 't, ~child: node) => 't = "insertBefore"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/appendChild)
*/
@send
external appendChild: (comment, 't) => 't = "appendChild"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/replaceChild)
*/
@send
external replaceChild: (comment, ~node: node, 't) => 't = "replaceChild"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/removeChild)
*/
@send
external removeChild: (comment, 't) => 't = "removeChild"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/substringData)
*/
@send
external substringData: (comment, ~offset: int, ~count: int) => string = "substringData"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/appendData)
*/
@send
external appendData: (comment, string) => unit = "appendData"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/insertData)
*/
@send
external insertData: (comment, ~offset: int, ~data: string) => unit = "insertData"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/deleteData)
*/
@send
external deleteData: (comment, ~offset: int, ~count: int) => unit = "deleteData"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/replaceData)
*/
@send
external replaceData: (comment, ~offset: int, ~count: int, ~data: string) => unit = "replaceData"
