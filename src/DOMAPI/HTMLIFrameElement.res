open DOMAPI
open Prelude
open EventAPI

external asHTMLElement: htmliFrameElement => htmlElement = "%identity"
external asElement: htmliFrameElement => element = "%identity"
external asNode: htmliFrameElement => node = "%identity"
external asEventTarget: htmliFrameElement => eventTarget = "%identity"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/focus)
*/
@send
external focus: (htmliFrameElement, ~options: focusOptions=?) => unit = "focus"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/blur)
*/
@send
external blur: htmliFrameElement => unit = "blur"

/**
Inserts nodes before the first child of node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/prepend)
*/
@send
external prepend: (htmliFrameElement, node) => unit = "prepend"

/**
Inserts nodes before the first child of node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/prepend)
*/
@send
external prepend2: (htmliFrameElement, string) => unit = "prepend"

/**
Inserts nodes after the last child of node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/append)
*/
@send
external append: (htmliFrameElement, node) => unit = "append"

/**
Inserts nodes after the last child of node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/append)
*/
@send
external append2: (htmliFrameElement, string) => unit = "append"

/**
Replace all children of node with nodes, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/replaceChildren)
*/
@send
external replaceChildren: (htmliFrameElement, node) => unit = "replaceChildren"

/**
Replace all children of node with nodes, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/replaceChildren)
*/
@send
external replaceChildren2: (htmliFrameElement, string) => unit = "replaceChildren"

/**
Returns the first element that is a descendant of node that matches selectors.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/querySelector)
*/
@send
external querySelector: (htmliFrameElement, string) => element = "querySelector"

/**
Returns all element descendants of node that match selectors.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/querySelectorAll)
*/
@send
external querySelectorAll: (htmliFrameElement, string) => nodeList = "querySelectorAll"

/**
Inserts nodes just before node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/before)
*/
@send
external before: (htmliFrameElement, node) => unit = "before"

/**
Inserts nodes just before node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/before)
*/
@send
external before2: (htmliFrameElement, string) => unit = "before"

/**
Inserts nodes just after node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/after)
*/
@send
external after: (htmliFrameElement, node) => unit = "after"

/**
Inserts nodes just after node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/after)
*/
@send
external after2: (htmliFrameElement, string) => unit = "after"

/**
Replaces node with nodes, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/replaceWith)
*/
@send
external replaceWith: (htmliFrameElement, node) => unit = "replaceWith"

/**
Replaces node with nodes, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/replaceWith)
*/
@send
external replaceWith2: (htmliFrameElement, string) => unit = "replaceWith"

/**
Removes node.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/remove)
*/
@send
external remove: htmliFrameElement => unit = "remove"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/animate)
*/
@send
external animate: (htmliFrameElement, ~keyframes: any, ~options: float=?) => animation = "animate"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/animate)
*/
@send
external animate2: (
  htmliFrameElement,
  ~keyframes: any,
  ~options: keyframeAnimationOptions=?,
) => animation = "animate"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/getAnimations)
*/
@send
external getAnimations: (htmliFrameElement, ~options: getAnimationsOptions=?) => array<animation> =
  "getAnimations"

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
external addEventListener: (htmliFrameElement, eventType, eventListener<'event>) => unit =
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
  htmliFrameElement,
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
  htmliFrameElement,
  eventType,
  eventListener<'event>,
  bool,
) => unit = "addEventListener"

/**
Removes the event listener in target's event listener list with the same type, callback, and options.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget/removeEventListener)
*/
@send
external removeEventListener: (htmliFrameElement, eventType, eventListener<'event>) => unit =
  "addEventListener"

/**
Removes the event listener in target's event listener list with the same type, callback, and options.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget/removeEventListener)
*/
@send
external removeEventListenerWithOptions: (
  htmliFrameElement,
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
  htmliFrameElement,
  eventType,
  eventListener<'event>,
  bool,
) => unit = "addEventListener"

/**
Dispatches a synthetic event event to target and returns true if either event's cancelable attribute value is false or its preventDefault() method was not invoked, and false otherwise.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget/dispatchEvent)
*/
@send
external dispatchEvent: (htmliFrameElement, event) => bool = "dispatchEvent"

/**
Returns node's root.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/getRootNode)
*/
@send
external getRootNode: (htmliFrameElement, ~options: getRootNodeOptions=?) => node = "getRootNode"

/**
Returns whether node has children.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/hasChildNodes)
*/
@send
external hasChildNodes: htmliFrameElement => bool = "hasChildNodes"

/**
Removes empty exclusive Text nodes and concatenates the data of remaining contiguous exclusive Text nodes into the first of their nodes.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/normalize)
*/
@send
external normalize: htmliFrameElement => unit = "normalize"

/**
Returns a copy of node. If deep is true, the copy also includes the node's descendants.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/cloneNode)
*/
@send
external cloneNode: (htmliFrameElement, ~deep: bool=?) => node = "cloneNode"

/**
Returns whether node and otherNode have the same properties.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isEqualNode)
*/
@send
external isEqualNode: (htmliFrameElement, node) => bool = "isEqualNode"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isSameNode)
*/
@send
external isSameNode: (htmliFrameElement, node) => bool = "isSameNode"

/**
Returns a bitmask indicating the position of other relative to node.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/compareDocumentPosition)
*/
@send
external compareDocumentPosition: (htmliFrameElement, node) => int = "compareDocumentPosition"

/**
Returns true if other is an inclusive descendant of node, and false otherwise.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/contains)
*/
@send
external contains: (htmliFrameElement, node) => bool = "contains"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lookupPrefix)
*/
@send
external lookupPrefix: (htmliFrameElement, string) => string = "lookupPrefix"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lookupNamespaceURI)
*/
@send
external lookupNamespaceURI: (htmliFrameElement, string) => string = "lookupNamespaceURI"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isDefaultNamespace)
*/
@send
external isDefaultNamespace: (htmliFrameElement, string) => bool = "isDefaultNamespace"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/insertBefore)
*/
@send
external insertBefore: (htmliFrameElement, 't, ~child: node) => 't = "insertBefore"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/appendChild)
*/
@send
external appendChild: (htmliFrameElement, 't) => 't = "appendChild"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/replaceChild)
*/
@send
external replaceChild: (htmliFrameElement, ~node: node, 't) => 't = "replaceChild"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/removeChild)
*/
@send
external removeChild: (htmliFrameElement, 't) => 't = "removeChild"

/**
Returns true if element has attributes, and false otherwise.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/hasAttributes)
*/
@send
external hasAttributes: htmliFrameElement => bool = "hasAttributes"

/**
Returns the qualified names of all element's attributes. Can contain duplicates.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/getAttributeNames)
*/
@send
external getAttributeNames: htmliFrameElement => array<string> = "getAttributeNames"

/**
Returns element's first attribute whose qualified name is qualifiedName, and null if there is no such attribute otherwise.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/getAttribute)
*/
@send
external getAttribute: (htmliFrameElement, string) => string = "getAttribute"

/**
Returns element's attribute whose namespace is namespace and local name is localName, and null if there is no such attribute otherwise.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/getAttributeNS)
*/
@send
external getAttributeNS: (htmliFrameElement, ~namespace: string, ~localName: string) => string =
  "getAttributeNS"

/**
Sets the value of element's first attribute whose qualified name is qualifiedName to value.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/setAttribute)
*/
@send
external setAttribute: (htmliFrameElement, ~qualifiedName: string, ~value: string) => unit =
  "setAttribute"

/**
Sets the value of element's attribute whose namespace is namespace and local name is localName to value.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/setAttributeNS)
*/
@send
external setAttributeNS: (
  htmliFrameElement,
  ~namespace: string,
  ~qualifiedName: string,
  ~value: string,
) => unit = "setAttributeNS"

/**
Removes element's first attribute whose qualified name is qualifiedName.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/removeAttribute)
*/
@send
external removeAttribute: (htmliFrameElement, string) => unit = "removeAttribute"

/**
Removes element's attribute whose namespace is namespace and local name is localName.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/removeAttributeNS)
*/
@send
external removeAttributeNS: (htmliFrameElement, ~namespace: string, ~localName: string) => unit =
  "removeAttributeNS"

/**
If force is not given, "toggles" qualifiedName, removing it if it is present and adding it if it is not present. If force is true, adds qualifiedName. If force is false, removes qualifiedName.

Returns true if qualifiedName is now present, and false otherwise.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/toggleAttribute)
*/
@send
external toggleAttribute: (htmliFrameElement, ~qualifiedName: string, ~force: bool=?) => bool =
  "toggleAttribute"

/**
Returns true if element has an attribute whose qualified name is qualifiedName, and false otherwise.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/hasAttribute)
*/
@send
external hasAttribute: (htmliFrameElement, string) => bool = "hasAttribute"

/**
Returns true if element has an attribute whose namespace is namespace and local name is localName.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/hasAttributeNS)
*/
@send
external hasAttributeNS: (htmliFrameElement, ~namespace: string, ~localName: string) => bool =
  "hasAttributeNS"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/getAttributeNode)
*/
@send
external getAttributeNode: (htmliFrameElement, string) => attr = "getAttributeNode"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/getAttributeNodeNS)
*/
@send
external getAttributeNodeNS: (htmliFrameElement, ~namespace: string, ~localName: string) => attr =
  "getAttributeNodeNS"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/setAttributeNode)
*/
@send
external setAttributeNode: (htmliFrameElement, attr) => attr = "setAttributeNode"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/setAttributeNodeNS)
*/
@send
external setAttributeNodeNS: (htmliFrameElement, attr) => attr = "setAttributeNodeNS"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/removeAttributeNode)
*/
@send
external removeAttributeNode: (htmliFrameElement, attr) => attr = "removeAttributeNode"

/**
Creates a shadow root for element and returns it.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/attachShadow)
*/
@send
external attachShadow: (htmliFrameElement, shadowRootInit) => shadowRoot = "attachShadow"

/**
Returns the first (starting at element) inclusive ancestor that matches selectors, and null otherwise.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/closest)
*/
@send
external closest: (htmliFrameElement, string) => 'e = "closest"

/**
Returns true if matching selectors against element's root yields element, and false otherwise.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/matches)
*/
@send
external matches: (htmliFrameElement, string) => bool = "matches"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/getElementsByTagName)
*/
@send
external getElementsByTagName: (htmliFrameElement, string) => htmlCollection =
  "getElementsByTagName"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/getElementsByTagNameNS)
*/
@send
external getElementsByTagNameNS: (
  htmliFrameElement,
  ~namespace: string,
  ~localName: string,
) => htmlCollectionOf<element> = "getElementsByTagNameNS"

/**
Returns a HTMLCollection of the elements in the object on which the method was invoked (a document or an element) that have all the classes given by classNames. The classNames argument is interpreted as a space-separated list of classes.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/getElementsByClassName)
*/
@send
external getElementsByClassName: (htmliFrameElement, string) => htmlCollectionOf<element> =
  "getElementsByClassName"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/insertAdjacentElement)
*/
@send
external insertAdjacentElement: (
  htmliFrameElement,
  ~where: insertPosition,
  ~element: element,
) => element = "insertAdjacentElement"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/insertAdjacentText)
*/
@send
external insertAdjacentText: (htmliFrameElement, ~where: insertPosition, ~data: string) => unit =
  "insertAdjacentText"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/computedStyleMap)
*/
@send
external computedStyleMap: htmliFrameElement => stylePropertyMapReadOnly = "computedStyleMap"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/getClientRects)
*/
@send
external getClientRects: htmliFrameElement => domRectList = "getClientRects"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/getBoundingClientRect)
*/
@send
external getBoundingClientRect: htmliFrameElement => domRect = "getBoundingClientRect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/checkVisibility)
*/
@send
external checkVisibility: (htmliFrameElement, ~options: checkVisibilityOptions=?) => bool =
  "checkVisibility"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollIntoView)
*/
@send
external scrollIntoView: (htmliFrameElement, ~arg: bool=?) => unit = "scrollIntoView"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollIntoView)
*/
@send
external scrollIntoView2: (htmliFrameElement, ~arg: scrollIntoViewOptions=?) => unit =
  "scrollIntoView"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scroll)
*/
@send
external scroll: (htmliFrameElement, ~options: scrollToOptions=?) => unit = "scroll"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scroll)
*/
@send
external scroll2: (htmliFrameElement, ~x: float, ~y: float) => unit = "scroll"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollTo)
*/
@send
external scrollTo: (htmliFrameElement, ~options: scrollToOptions=?) => unit = "scrollTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollTo)
*/
@send
external scrollTo2: (htmliFrameElement, ~x: float, ~y: float) => unit = "scrollTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollBy)
*/
@send
external scrollBy: (htmliFrameElement, ~options: scrollToOptions=?) => unit = "scrollBy"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollBy)
*/
@send
external scrollBy2: (htmliFrameElement, ~x: float, ~y: float) => unit = "scrollBy"

/**
Displays element fullscreen and resolves promise when done.

When supplied, options's navigationUI member indicates whether showing navigation UI while in fullscreen is preferred or not. If set to "show", navigation simplicity is preferred over screen space, and if set to "hide", more screen space is preferred. User agents are always free to honor user preference over the application's. The default value "auto" indicates no application preference.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/requestFullscreen)
*/
@send
external requestFullscreen: (htmliFrameElement, ~options: fullscreenOptions=?) => Promise.t<unit> =
  "requestFullscreen"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/setHTMLUnsafe)
*/
@send
external setHTMLUnsafe: (htmliFrameElement, string) => unit = "setHTMLUnsafe"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/getHTML)
*/
@send
external getHTML: (htmliFrameElement, ~options: getHTMLOptions=?) => string = "getHTML"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/insertAdjacentHTML)
*/
@send
external insertAdjacentHTML: (
  htmliFrameElement,
  ~position: insertPosition,
  ~string: string,
) => unit = "insertAdjacentHTML"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/setPointerCapture)
*/
@send
external setPointerCapture: (htmliFrameElement, int) => unit = "setPointerCapture"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/releasePointerCapture)
*/
@send
external releasePointerCapture: (htmliFrameElement, int) => unit = "releasePointerCapture"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/hasPointerCapture)
*/
@send
external hasPointerCapture: (htmliFrameElement, int) => bool = "hasPointerCapture"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/requestPointerLock)
*/
@send
external requestPointerLock: (
  htmliFrameElement,
  ~options: pointerLockOptions=?,
) => Promise.t<unit> = "requestPointerLock"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/click)
*/
@send
external click: htmliFrameElement => unit = "click"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/attachInternals)
*/
@send
external attachInternals: htmliFrameElement => elementInternals = "attachInternals"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/showPopover)
*/
@send
external showPopover: htmliFrameElement => unit = "showPopover"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/hidePopover)
*/
@send
external hidePopover: htmliFrameElement => unit = "hidePopover"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/togglePopover)
*/
@send
external togglePopover: (htmliFrameElement, ~force: bool=?) => bool = "togglePopover"

@send
external getSVGDocument: htmliFrameElement => document = "getSVGDocument"
