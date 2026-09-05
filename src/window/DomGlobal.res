/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/window)
*/
external window: DOM.window = "window"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/self)
*/
external self: DOM.window = "self"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/document)
*/
external document: DOM.document = "document"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/name)
*/
external name: string = "name"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/history)
*/
external history: HistoryTypes.history = "history"

/**
Defines a new custom element, mapping the given name to the given constructor as an autonomous custom element.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/customElements)
*/
external customElements: DOM.customElementRegistry = "customElements"

/**
Returns true if the location bar is visible; otherwise, returns false.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/locationbar)
*/
external locationbar: DOM.barProp = "locationbar"

/**
Returns true if the menu bar is visible; otherwise, returns false.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/menubar)
*/
external menubar: DOM.barProp = "menubar"

/**
Returns true if the personal bar is visible; otherwise, returns false.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/personalbar)
*/
external personalbar: DOM.barProp = "personalbar"

/**
Returns true if the scrollbars are visible; otherwise, returns false.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/scrollbars)
*/
external scrollbars: DOM.barProp = "scrollbars"

/**
Returns true if the status bar is visible; otherwise, returns false.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/statusbar)
*/
external statusbar: DOM.barProp = "statusbar"

/**
Returns true if the toolbar is visible; otherwise, returns false.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/toolbar)
*/
external toolbar: DOM.barProp = "toolbar"

/**
Returns true if the window has been closed, false otherwise.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/closed)
*/
external closed: bool = "closed"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/frames)
*/
external frames: DOM.window = "frames"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/length)
*/
external length: int = "length"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/top)
*/
external top: Null.t<DOM.window> = "top"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/opener)
*/
external opener: JSON.t = "opener"

/**
Refers to either the parent WindowProxy, or itself.

It can rarely be null e.g. for contentWindow of an iframe that is already removed from the parent.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/parent)
*/
external parent: Null.t<DOM.window> = "parent"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/frameElement)
*/
external frameElement: Null.t<DOMTree.element> = "frameElement"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/navigator)
*/
external navigator: DOM.navigator = "navigator"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/screen)
*/
external screen: DOM.screen = "screen"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/visualViewport)
*/
external visualViewport: Null.t<VisualViewport.t> = "visualViewport"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/innerWidth)
*/
external innerWidth: int = "innerWidth"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/innerHeight)
*/
external innerHeight: int = "innerHeight"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/scrollX)
*/
external scrollX: float = "scrollX"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/scrollY)
*/
external scrollY: float = "scrollY"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/screenX)
*/
external screenX: int = "screenX"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/screenLeft)
*/
external screenLeft: int = "screenLeft"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/screenY)
*/
external screenY: int = "screenY"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/screenTop)
*/
external screenTop: int = "screenTop"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/outerWidth)
*/
external outerWidth: int = "outerWidth"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/outerHeight)
*/
external outerHeight: int = "outerHeight"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/devicePixelRatio)
*/
external devicePixelRatio: float = "devicePixelRatio"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/speechSynthesis)
*/
external speechSynthesis: WebSpeechTypes.speechSynthesis = "speechSynthesis"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/origin)
*/
external origin: string = "origin"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/isSecureContext)
*/
external isSecureContext: bool = "isSecureContext"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/crossOriginIsolated)
*/
external crossOriginIsolated: bool = "crossOriginIsolated"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/indexedDB)
*/
external indexedDB: IndexedDbTypes.idbFactory = "indexedDB"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/crypto)
*/
external crypto: WebCryptoTypes.crypto = "crypto"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/performance)
*/
external performance: PerformanceTypes.performance = "performance"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/caches)
*/
external caches: CacheTypes.cacheStorage = "caches"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/sessionStorage)
*/
@throws(JsExn)
external sessionStorage: WebStorageTypes.storage = "sessionStorage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/localStorage)
*/
@throws(JsExn)
external localStorage: WebStorageTypes.storage = "localStorage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/reportError)
*/
external reportError: JSON.t => unit = "reportError"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/btoa)
*/
@throws(JsExn)
external btoa: string => string = "btoa"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/atob)
*/
@throws(JsExn)
external atob: string => string = "atob"

/**
Executes a function after a delay given in milliseconds expires.

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/setTimeout)
*/
external setTimeout: (~handler: unit => unit, ~timeout: int=?) => DOM.timeoutId = "setTimeout"

/**
Cancels the execution of a timeout created with setTimeout.

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/clearTimeout)
*/
external clearTimeout: DOM.timeoutId => unit = "clearTimeout"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/setInterval)
*/
@throws(JsExn)
external setInterval: (~handler: string, ~timeout: int=?) => int = "setInterval"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/setInterval)
*/
external setInterval2: (~handler: unit => unit, ~timeout: int=?) => int = "setInterval"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/clearInterval)
*/
external clearInterval: int => unit = "clearInterval"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/queueMicrotask)
*/
external queueMicrotask: unit => unit => unit = "queueMicrotask"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/structuredClone)
*/
@throws(JsExn)
external structuredClone: ('t, ~options: ChannelMessagingTypes.structuredSerializeOptions=?) => 't =
  "structuredClone"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DedicatedWorkerGlobalScope/requestAnimationFrame)
*/
@throws(JsExn)
external requestAnimationFrame: (float => unit) => int = "requestAnimationFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DedicatedWorkerGlobalScope/cancelAnimationFrame)
*/
@throws(JsExn)
external cancelAnimationFrame: int => unit = "cancelAnimationFrame"

/**
Closes the window.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/close)
*/
external close: unit => unit = "close"

/**
Cancels the document load.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/stop)
*/
external stop: unit => unit = "stop"

/**
Moves the focus to the window's browsing context, if any.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/focus)
*/
external focus: unit => unit = "focus"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/open)
*/
external open_: (~url: string=?, ~target: string=?, ~features: string=?) => Null.t<DOM.window> =
  "open"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/alert)
*/
external alert: (~message: string=?) => unit = "alert"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/confirm)
*/
external confirm: (~message: string=?) => bool = "confirm"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/prompt)
*/
external prompt: (~message: string=?, ~default: string=?) => Null.t<string> = "prompt"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/print)
*/
external print: unit => unit = "print"

/**
Posts a message to the given window. Messages can be structured objects, e.g. nested objects and arrays, can contain JavaScript values (strings, numbers, Date objects, etc), and can contain certain data objects such as WebApiFile Blob, FileList, and ArrayBuffer objects.

Objects listed in the transfer member of options are transferred, not just cloned, meaning that they are no longer usable on the sending side.

A target origin can be specified using the targetOrigin member of options. If not provided, it defaults to "/". This default restricts the message to same-origin targets only.

If the origin of the target window doesn't match the given target origin, the message is discarded, to avoid information leakage. To send the message to the target regardless of origin, set the target origin to "*".

Throws a "DataCloneError" DOMException if transfer array contains duplicate objects or if message could not be cloned.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/postMessage)
*/
@throws(JsExn)
external postMessage: (
  ~message: JSON.t,
  ~targetOrigin: string,
  ~transfer: array<Dict.t<string>>=?,
) => unit = "postMessage"

/**
Posts a message to the given window. Messages can be structured objects, e.g. nested objects and arrays, can contain JavaScript values (strings, numbers, Date objects, etc), and can contain certain data objects such as WebApiFile Blob, FileList, and ArrayBuffer objects.

Objects listed in the transfer member of options are transferred, not just cloned, meaning that they are no longer usable on the sending side.

A target origin can be specified using the targetOrigin member of options. If not provided, it defaults to "/". This default restricts the message to same-origin targets only.

If the origin of the target window doesn't match the given target origin, the message is discarded, to avoid information leakage. To send the message to the target regardless of origin, set the target origin to "*".

Throws a "DataCloneError" DOMException if transfer array contains duplicate objects or if message could not be cloned.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/postMessage)
*/
@throws(JsExn)
external postMessageWithOptions: (
  ~message: JSON.t,
  ~options: DOM.windowPostMessageOptions=?,
) => unit = "postMessage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/matchMedia)
*/
external matchMedia: string => MediaQueryList.t = "matchMedia"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/moveTo)
*/
external moveTo: (~x: int, ~y: int) => unit = "moveTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/moveBy)
*/
external moveBy: (~x: int, ~y: int) => unit = "moveBy"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/resizeTo)
*/
external resizeTo: (~width: int, ~height: int) => unit = "resizeTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/resizeBy)
*/
external resizeBy: (~x: int, ~y: int) => unit = "resizeBy"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/scroll)
*/
external scroll: (~options: DOM.scrollToOptions=?) => unit = "scroll"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/scroll)
*/
external scroll2: (~x: float, ~y: float) => unit = "scroll"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/scrollTo)
*/
external scrollTo: (~options: DOM.scrollToOptions=?) => unit = "scrollTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/scrollTo)
*/
external scrollTo2: (~x: float, ~y: float) => unit = "scrollTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/scrollBy)
*/
external scrollBy: (~options: DOM.scrollToOptions=?) => unit = "scrollBy"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/scrollBy)
*/
external scrollBy2: (~x: float, ~y: float) => unit = "scrollBy"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/getComputedStyle)
*/
@throws(JsExn)
external getComputedStyle: (~elt: DOMTree.element, ~pseudoElt: string=?) => CSSStyleDeclaration.t =
  "getComputedStyle"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/requestIdleCallback)
*/
external requestIdleCallback: (
  ~callback: DOM.idleDeadline => unit,
  ~options: DOM.idleRequestOptions=?,
) => int = "requestIdleCallback"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/cancelIdleCallback)
*/
external cancelIdleCallback: int => unit = "cancelIdleCallback"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/getSelection)
*/
external getSelection: unit => Null.t<Selection.t> = "getSelection"
