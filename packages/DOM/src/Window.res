include Event.EventTarget.Impl({type t = Types.window})

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/window)
    */
@get
external window: Types.window => Types.window = "window"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/self)
    */
@get
external self: Types.window => Types.window = "self"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/document)
    */
@get
external document: Types.window => Types.document = "document"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/name)
    */
@get
external name: Types.window => string = "name"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/location)
    */
@get
external location: Types.window => Types.location = "location"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/history)
    */
@get
external history: Types.window => History.Types.history = "history"

/**
    Defines a new custom element, mapping the given name to the given constructor as an autonomous custom element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/customElements)
    */
@get
external customElements: Types.window => Types.customElementRegistry = "customElements"

/**
    Returns true if the location bar is visible; otherwise, returns false.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/locationbar)
    */
@get
external locationbar: Types.window => Types.barProp = "locationbar"

/**
    Returns true if the menu bar is visible; otherwise, returns false.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/menubar)
    */
@get
external menubar: Types.window => Types.barProp = "menubar"

/**
    Returns true if the personal bar is visible; otherwise, returns false.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/personalbar)
    */
@get
external personalbar: Types.window => Types.barProp = "personalbar"

/**
    Returns true if the scrollbars are visible; otherwise, returns false.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/scrollbars)
    */
@get
external scrollbars: Types.window => Types.barProp = "scrollbars"

/**
    Returns true if the status bar is visible; otherwise, returns false.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/statusbar)
    */
@get
external statusbar: Types.window => Types.barProp = "statusbar"

/**
    Returns true if the toolbar is visible; otherwise, returns false.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/toolbar)
    */
@get
external toolbar: Types.window => Types.barProp = "toolbar"

/**
    Returns true if the window has been closed, false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/closed)
    */
@get
external closed: Types.window => bool = "closed"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/frames)
    */
@get
external frames: Types.window => Types.window = "frames"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/length)
    */
@get
external length: Types.window => int = "length"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/top)
    */
@get
external top: Types.window => Null.t<Types.window> = "top"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/opener)
    */
@get
external opener: Types.window => JSON.t = "opener"

/**
    Refers to either the parent WindowProxy, or itself.

It can rarely be null e.g. for contentWindow of an iframe that is already removed from the parent.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/parent)
    */
@get
external parent: Types.window => Types.window = "parent"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/frameElement)
    */
@get
external frameElement: Types.window => Null.t<Types.element> = "frameElement"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/navigator)
    */
@get
external navigator: Types.window => Types.navigator = "navigator"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/screen)
    */
@get
external screen: Types.window => Types.screen = "screen"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/visualViewport)
    */
@get
external visualViewport: Types.window => Null.t<VisualViewport.Types.visualViewport> =
  "visualViewport"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/innerWidth)
    */
@get
external innerWidth: Types.window => int = "innerWidth"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/innerHeight)
    */
@get
external innerHeight: Types.window => int = "innerHeight"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/scrollX)
    */
@get
external scrollX: Types.window => float = "scrollX"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/scrollY)
    */
@get
external scrollY: Types.window => float = "scrollY"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/screenX)
    */
@get
external screenX: Types.window => int = "screenX"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/screenLeft)
    */
@get
external screenLeft: Types.window => int = "screenLeft"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/screenY)
    */
@get
external screenY: Types.window => int = "screenY"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/screenTop)
    */
@get
external screenTop: Types.window => int = "screenTop"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/outerWidth)
    */
@get
external outerWidth: Types.window => int = "outerWidth"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/outerHeight)
    */
@get
external outerHeight: Types.window => int = "outerHeight"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/devicePixelRatio)
    */
@get
external devicePixelRatio: Types.window => float = "devicePixelRatio"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/speechSynthesis)
    */
@get
external speechSynthesis: Types.window => WebSpeech.Types.speechSynthesis = "speechSynthesis"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/origin)
    */
@get
external origin: Types.window => string = "origin"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/isSecureContext)
    */
@get
external isSecureContext: Types.window => bool = "isSecureContext"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/crossOriginIsolated)
    */
@get
external crossOriginIsolated: Types.window => bool = "crossOriginIsolated"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/indexedDB)
    */
@get
external indexedDB: Types.window => IndexedDB.Types.idbFactory = "indexedDB"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/crypto)
    */
@get
external crypto: Types.window => WebCrypto.Types.crypto = "crypto"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/performance)
    */
@get
external performance: Types.window => Performance.Types.performance = "performance"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/caches)
    */
@get
external caches: Types.window => WebWorkers.Types.cacheStorage = "caches"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/sessionStorage)
    */
@get
external sessionStorage: Types.window => WebStorage.Types.storage = "sessionStorage"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/localStorage)
    */
@get
external localStorage: Types.window => WebStorage.Types.storage = "localStorage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/reportError)
*/
@send
external reportError: (Types.window, JSON.t) => unit = "reportError"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/btoa)
*/
@send
external btoa: (Types.window, string) => string = "btoa"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/atob)
*/
@send
external atob: (Types.window, string) => string = "atob"

/**
Executes a function after a delay given in milliseconds expires.

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/setTimeout)
*/
@send
external setTimeout: (Types.window, ~handler: unit => unit, ~timeout: int=?) => Types.timeoutId =
  "setTimeout"

/**
Cancels the execution of a timeout created with setTimeout.

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/clearTimeout)
*/
@send
external clearTimeout: (Types.window, Types.timeoutId) => unit = "clearTimeout"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/setInterval)
*/
@send
external setInterval: (Types.window, ~handler: string, ~timeout: int=?) => int = "setInterval"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/setInterval)
*/
@send
external setInterval2: (Types.window, ~handler: unit => unit, ~timeout: int=?) => int =
  "setInterval"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/clearInterval)
*/
@send
external clearInterval: (Types.window, int) => unit = "clearInterval"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/queueMicrotask)
*/
@send
external queueMicrotask: (Types.window, unit => unit) => unit = "queueMicrotask"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/structuredClone)
*/
@send
external structuredClone: (
  Types.window,
  't,
  ~options: ChannelMessaging.Types.structuredSerializeOptions=?,
) => 't = "structuredClone"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DedicatedWorkerGlobalScope/requestAnimationFrame)
*/
@send
external requestAnimationFrame: (Types.window, float => unit) => int = "requestAnimationFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DedicatedWorkerGlobalScope/cancelAnimationFrame)
*/
@send
external cancelAnimationFrame: (Types.window, int) => unit = "cancelAnimationFrame"

/**
Closes the window.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/close)
*/
@send
external close: Types.window => unit = "close"

/**
Cancels the document load.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/stop)
*/
@send
external stop: Types.window => unit = "stop"

/**
Moves the focus to the window's browsing context, if any.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/focus)
*/
@send
external focus: Types.window => unit = "focus"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/open)
*/
@send
external open_: (
  Types.window,
  ~url: string=?,
  ~target: string=?,
  ~features: string=?,
) => Types.window = "open"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/alert)
*/
@send
external alert: Types.window => unit = "alert"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/alert)
*/
@send
external alert2: (Types.window, string) => unit = "alert"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/confirm)
*/
@send
external confirm: (Types.window, ~message: string=?) => bool = "confirm"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/prompt)
*/
@send
external prompt: (Types.window, ~message: string=?, ~default: string=?) => string = "prompt"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/print)
*/
@send
external print: Types.window => unit = "print"

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
  Types.window,
  ~message: JSON.t,
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
external postMessage2: (
  Types.window,
  ~message: JSON.t,
  ~options: Types.windowPostMessageOptions=?,
) => unit = "postMessage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/matchMedia)
*/
@send
external matchMedia: (Types.window, string) => Prelude.Types.mediaQueryList = "matchMedia"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/moveTo)
*/
@send
external moveTo: (Types.window, ~x: int, ~y: int) => unit = "moveTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/moveBy)
*/
@send
external moveBy: (Types.window, ~x: int, ~y: int) => unit = "moveBy"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/resizeTo)
*/
@send
external resizeTo: (Types.window, ~width: int, ~height: int) => unit = "resizeTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/resizeBy)
*/
@send
external resizeBy: (Types.window, ~x: int, ~y: int) => unit = "resizeBy"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/scroll)
*/
@send
external scroll: (Types.window, ~options: Types.scrollToOptions=?) => unit = "scroll"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/scroll)
*/
@send
external scroll2: (Types.window, ~x: float, ~y: float) => unit = "scroll"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/scrollTo)
*/
@send
external scrollTo: (Types.window, ~options: Types.scrollToOptions=?) => unit = "scrollTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/scrollTo)
*/
@send
external scrollTo2: (Types.window, ~x: float, ~y: float) => unit = "scrollTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/scrollBy)
*/
@send
external scrollBy: (Types.window, ~options: Types.scrollToOptions=?) => unit = "scrollBy"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/scrollBy)
*/
@send
external scrollBy2: (Types.window, ~x: float, ~y: float) => unit = "scrollBy"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/getComputedStyle)
*/
@send
external getComputedStyle: (
  Types.window,
  ~elt: Types.element,
  ~pseudoElt: string=?,
) => Types.cssStyleDeclaration = "getComputedStyle"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/requestIdleCallback)
*/
@send
external requestIdleCallback: (
  Types.window,
  ~callback: Prelude.Types.idleDeadline => unit,
  ~options: Types.idleRequestOptions=?,
) => int = "requestIdleCallback"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/cancelIdleCallback)
*/
@send
external cancelIdleCallback: (Types.window, int) => unit = "cancelIdleCallback"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/getSelection)
*/
@send
external getSelection: Types.window => null<Types.selection> = "getSelection"
