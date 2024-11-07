open DOMAPI
open EventAPI
open ViewTransitionsAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document)
*/
@new
external make: unit => document = "Document"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/getAnimations)
*/
@send
external getAnimations: document => array<animation> = "getAnimations"

/**
Inserts nodes before the first child of node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/prepend)
*/
@send
external prepend: (document, node) => unit = "prepend"

/**
Inserts nodes before the first child of node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/prepend)
*/
@send
external prepend2: (document, string) => unit = "prepend"

/**
Inserts nodes after the last child of node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/append)
*/
@send
external append: (document, node) => unit = "append"

/**
Inserts nodes after the last child of node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/append)
*/
@send
external append2: (document, string) => unit = "append"

/**
Replace all children of node with nodes, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/replaceChildren)
*/
@send
external replaceChildren: (document, node) => unit = "replaceChildren"

/**
Replace all children of node with nodes, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/replaceChildren)
*/
@send
external replaceChildren2: (document, string) => unit = "replaceChildren"

/**
Returns the first element that is a descendant of node that matches selectors.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/querySelector)
*/
@send
external querySelector: (document, string) => element = "querySelector"

/**
Returns all element descendants of node that match selectors.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/querySelectorAll)
*/
@send
external querySelectorAll: (document, string) => nodeList = "querySelectorAll"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/createExpression)
*/
@send
external createExpression: (document, string, xPathNSResolver) => xPathExpression =
  "createExpression"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/evaluate)
*/
@send
external evaluate: (document, string, node, xPathNSResolver, int, xPathResult) => xPathResult =
  "evaluate"

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
external addEventListener: (document, eventType, eventListener<'event>) => unit = "addEventListener"

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
  document,
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
  document,
  eventType,
  eventListener<'event>,
  bool,
) => unit = "addEventListener"

/**
Removes the event listener in target's event listener list with the same type, callback, and options.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget/removeEventListener)
*/
@send
external removeEventListener: (document, eventType, eventListener<'event>) => unit =
  "addEventListener"

/**
Removes the event listener in target's event listener list with the same type, callback, and options.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget/removeEventListener)
*/
@send
external removeEventListenerWithOptions: (
  document,
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
  document,
  eventType,
  eventListener<'event>,
  bool,
) => unit = "addEventListener"

/**
Dispatches a synthetic event event to target and returns true if either event's cancelable attribute value is false or its preventDefault() method was not invoked, and false otherwise.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget/dispatchEvent)
*/
@send
external dispatchEvent: (document, event) => bool = "dispatchEvent"

/**
Returns node's root.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/getRootNode)
*/
@send
external getRootNode: (document, getRootNodeOptions) => node = "getRootNode"

/**
Returns whether node has children.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/hasChildNodes)
*/
@send
external hasChildNodes: document => bool = "hasChildNodes"

/**
Removes empty exclusive Text nodes and concatenates the data of remaining contiguous exclusive Text nodes into the first of their nodes.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/normalize)
*/
@send
external normalize: document => unit = "normalize"

/**
Returns a copy of node. If deep is true, the copy also includes the node's descendants.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/cloneNode)
*/
@send
external cloneNode: (document, bool) => node = "cloneNode"

/**
Returns whether node and otherNode have the same properties.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isEqualNode)
*/
@send
external isEqualNode: (document, node) => bool = "isEqualNode"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isSameNode)
*/
@send
external isSameNode: (document, node) => bool = "isSameNode"

/**
Returns a bitmask indicating the position of other relative to node.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/compareDocumentPosition)
*/
@send
external compareDocumentPosition: (document, node) => int = "compareDocumentPosition"

/**
Returns true if other is an inclusive descendant of node, and false otherwise.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/contains)
*/
@send
external contains: (document, node) => bool = "contains"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lookupPrefix)
*/
@send
external lookupPrefix: (document, string) => string = "lookupPrefix"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lookupNamespaceURI)
*/
@send
external lookupNamespaceURI: (document, string) => string = "lookupNamespaceURI"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isDefaultNamespace)
*/
@send
external isDefaultNamespace: (document, string) => bool = "isDefaultNamespace"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/insertBefore)
*/
@send
external insertBefore: (document, 't, node) => 't = "insertBefore"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/appendChild)
*/
@send
external appendChild: (document, 't) => 't = "appendChild"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/replaceChild)
*/
@send
external replaceChild: (document, node, 't) => 't = "replaceChild"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/removeChild)
*/
@send
external removeChild: (document, 't) => 't = "removeChild"

/**
Retrieves a collection of objects based on the specified element name.
@param name Specifies the name of an element.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/getElementsByTagName)
*/
@send
external getElementsByTagName: (document, string) => htmlCollection = "getElementsByTagName"

/**
If namespace and localName are "*" returns a HTMLCollection of all descendant elements.

If only namespace is "*" returns a HTMLCollection of all descendant elements whose local name is localName.

If only localName is "*" returns a HTMLCollection of all descendant elements whose namespace is namespace.

Otherwise, returns a HTMLCollection of all descendant elements whose namespace is namespace and local name is localName.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/getElementsByTagNameNS)
*/
@send
external getElementsByTagNameNS: (document, string, string) => htmlCollectionOf<element> =
  "getElementsByTagNameNS"

/**
Returns a HTMLCollection of the elements in the object on which the method was invoked (a document or an element) that have all the classes given by classNames. The classNames argument is interpreted as a space-separated list of classes.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/getElementsByClassName)
*/
@send
external getElementsByClassName: (document, string) => htmlCollectionOf<element> =
  "getElementsByClassName"

/**
Creates an instance of the element for the specified tag.
@param tagName The name of an element.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/createElement)
*/
@send
external createElement: (document, string, unknown) => element = "createElement"

/**
Returns an element with namespace namespace. Its namespace prefix will be everything before ":" (U+003E) in qualifiedName or null. Its local name will be everything after ":" (U+003E) in qualifiedName or qualifiedName.

If localName does not match the Name production an "InvalidCharacterError" DOMException will be thrown.

If one of the following conditions is true a "NamespaceError" DOMException will be thrown:

localName does not match the QName production.
Namespace prefix is not null and namespace is the empty string.
Namespace prefix is "xml" and namespace is not the XML namespace.
qualifiedName or namespace prefix is "xmlns" and namespace is not the XMLNS namespace.
namespace is the XMLNS namespace and neither qualifiedName nor namespace prefix is "xmlns".

When supplied, options's is can be used to create a customized built-in element.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/createElementNS)
*/
@send
external createElementNS: (document, string, string, unknown) => element = "createElementNS"

/**
Creates a new document.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/createDocumentFragment)
*/
@send
external createDocumentFragment: document => documentFragment = "createDocumentFragment"

/**
Creates a text string from the specified value.
@param data String that specifies the nodeValue property of the text node.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/createTextNode)
*/
@send
external createTextNode: (document, string) => text = "createTextNode"

/**
Returns a CDATASection node whose data is data.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/createCDATASection)
*/
@send
external createCDATASection: (document, string) => cdataSection = "createCDATASection"

/**
Creates a comment object with the specified data.
@param data Sets the comment object's data.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/createComment)
*/
@send
external createComment: (document, string) => comment = "createComment"

/**
Returns a ProcessingInstruction node whose target is target and data is data. If target does not match the Name production an "InvalidCharacterError" DOMException will be thrown. If data contains "?>" an "InvalidCharacterError" DOMException will be thrown.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/createProcessingInstruction)
*/
@send
external createProcessingInstruction: (document, string, string) => processingInstruction =
  "createProcessingInstruction"

/**
Returns a copy of node. If deep is true, the copy also includes the node's descendants.

If node is a document or a shadow root, throws a "NotSupportedError" DOMException.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/importNode)
*/
@send
external importNode: (document, 't, bool) => 't = "importNode"

/**
Moves node from another document and returns it.

If node is a document, throws a "NotSupportedError" DOMException or, if node is a shadow root, throws a "HierarchyRequestError" DOMException.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/adoptNode)
*/
@send
external adoptNode: (document, 't) => 't = "adoptNode"

/**
Creates an attribute object with a specified name.
@param name String that sets the attribute object's name.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/createAttribute)
*/
@send
external createAttribute: (document, string) => attr = "createAttribute"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/createAttributeNS)
*/
@send
external createAttributeNS: (document, string, string) => attr = "createAttributeNS"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/createEvent)
*/
@send
external createEvent: (document, string) => event = "createEvent"

/**
 Returns an empty range object that has both of its boundary points positioned at the beginning of the document.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/createRange)
*/
@send
external createRange: document => range = "createRange"

/**
Creates a NodeIterator object that you can use to traverse filtered lists of nodes or elements in a document.
@param root The root element or node to start traversing on.
@param whatToShow The type of nodes or elements to appear in the node list
@param filter A custom NodeFilter function to use. For more information, see filter. Use null for no filter.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/createNodeIterator)
*/
@send
external createNodeIterator: (document, node, int, nodeFilter) => nodeIterator =
  "createNodeIterator"

/**
Creates a TreeWalker object that you can use to traverse filtered lists of nodes or elements in a document.
@param root The root element or node to start traversing on.
@param whatToShow The type of nodes or elements to appear in the node list. For more information, see whatToShow.
@param filter A custom NodeFilter function to use.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/createTreeWalker)
*/
@send
external createTreeWalker: (document, node, int, nodeFilter) => treeWalker = "createTreeWalker"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/startViewTransition)
*/
@send
external startViewTransition: (document, viewTransitionUpdateCallback) => viewTransition =
  "startViewTransition"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/caretPositionFromPoint)
*/
@send
external caretPositionFromPoint: (
  document,
  float,
  float,
  caretPositionFromPointOptions,
) => caretPosition = "caretPositionFromPoint"

/**
Stops document's fullscreen element from being displayed fullscreen and resolves promise when done.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/exitFullscreen)
*/
@send
external exitFullscreen: document => Promise.t<unit> = "exitFullscreen"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/parseHTMLUnsafe_static)
*/
@scope("Document")
external parseHTMLUnsafe: string => document = "parseHTMLUnsafe"

/**
Gets a collection of objects based on the value of the NAME or ID attribute.
@param elementName Gets a collection of objects based on the value of the NAME or ID attribute.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/getElementsByName)
*/
@send
external getElementsByName: (document, string) => nodeListOf<htmlElement> = "getElementsByName"

/**
Opens a new window and loads a document specified by a given URL. Also, opens a new window that uses the url parameter and the name parameter to collect the output of the write method and the writeln method.
@param url Specifies a MIME type for the document.
@param name Specifies the name of the window. This name is used as the value for the TARGET attribute on a form or an anchor element.
@param features Contains a list of items separated by commas. Each item consists of an option and a value, separated by an equals sign (for example, "fullscreen=yes, toolbar=yes"). The following values are supported.
@param replace Specifies whether the existing entry for the document is replaced in the history list.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/open)
*/
@send
external open_: (document, string, string) => document = "open"

/**
Opens a new window and loads a document specified by a given URL. Also, opens a new window that uses the url parameter and the name parameter to collect the output of the write method and the writeln method.
@param url Specifies a MIME type for the document.
@param name Specifies the name of the window. This name is used as the value for the TARGET attribute on a form or an anchor element.
@param features Contains a list of items separated by commas. Each item consists of an option and a value, separated by an equals sign (for example, "fullscreen=yes, toolbar=yes"). The following values are supported.
@param replace Specifies whether the existing entry for the document is replaced in the history list.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/open)
*/
@send
external open2: (document, string, string, string) => window = "open"

/**
Closes an output stream and forces the sent data to display.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/close)
*/
@send
external close: document => unit = "close"

/**
Writes one or more HTML expressions to a document in the specified window.
@param content Specifies the text and HTML tags to write.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/write)
*/
@send
external write: (document, string) => unit = "write"

/**
Writes one or more HTML expressions, followed by a carriage return, to a document in the specified window.
@param content The text and HTML tags to write.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/writeln)
*/
@send
external writeln: (document, string) => unit = "writeln"

/**
Gets a value indicating whether the object currently has focus.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/hasFocus)
*/
@send
external hasFocus: document => bool = "hasFocus"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/exitPictureInPicture)
*/
@send
external exitPictureInPicture: document => Promise.t<unit> = "exitPictureInPicture"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/exitPointerLock)
*/
@send
external exitPointerLock: document => unit = "exitPointerLock"

/**
Returns an object representing the current selection of the document that is loaded into the object displaying a webpage.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/getSelection)
*/
@send
external getSelection: document => selection = "getSelection"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/hasStorageAccess)
*/
@send
external hasStorageAccess: document => Promise.t<bool> = "hasStorageAccess"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/requestStorageAccess)
*/
@send
external requestStorageAccess: document => Promise.t<unit> = "requestStorageAccess"
