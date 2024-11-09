open DOMAPI
open HistoryAPI
open VisualViewportAPI
open WebSpeechAPI
open IndexedDBAPI
open WebCryptoAPI
open PerformanceAPI
open ServiceWorkerAPI
open WebStorageAPI
open CanvasAPI
open FileAPI
open ChannelMessagingAPI
open FetchAPI
open EventAPI

external window: window = "window"
external self: window = "self"
external document: document = "document"
external name: string = "name"
external location: location = "location"
external history: history = "history"
external customElements: customElementRegistry = "customElements"
external locationbar: barProp = "locationbar"
external menubar: barProp = "menubar"
external personalbar: barProp = "personalbar"
external scrollbars: barProp = "scrollbars"
external statusbar: barProp = "statusbar"
external toolbar: barProp = "toolbar"
external closed: bool = "closed"
external frames: window = "frames"
external length: int = "length"
external top: window = "top"
external opener: JSON.t = "opener"
external parent: window = "parent"
external frameElement: element = "frameElement"
external navigator: navigator = "navigator"
external screen: screen = "screen"
external visualViewport: visualViewport = "visualViewport"
external innerWidth: int = "innerWidth"
external innerHeight: int = "innerHeight"
external scrollX: float = "scrollX"
external scrollY: float = "scrollY"
external screenX: int = "screenX"
external screenLeft: int = "screenLeft"
external screenY: int = "screenY"
external screenTop: int = "screenTop"
external outerWidth: int = "outerWidth"
external outerHeight: int = "outerHeight"
external devicePixelRatio: float = "devicePixelRatio"
external speechSynthesis: speechSynthesis = "speechSynthesis"
external origin: string = "origin"
external isSecureContext: bool = "isSecureContext"
external crossOriginIsolated: bool = "crossOriginIsolated"
external indexedDB: idbFactory = "indexedDB"
external crypto: crypto = "crypto"
external performance: performance = "performance"
external caches: cacheStorage = "caches"
external sessionStorage: storage = "sessionStorage"
external localStorage: storage = "localStorage"

external reportError: JSON.t => unit = "reportError"

external btoa: string => string = "btoa"

external atob: string => string = "atob"

external setTimeout: (~handler: string, ~timeout: int=?) => int = "setTimeout"

external setTimeout2: (~handler: unit => unit, ~timeout: int=?) => int = "setTimeout"

external clearTimeout: int => unit = "clearTimeout"

external setInterval: (~handler: string, ~timeout: int=?) => int = "setInterval"

external setInterval2: (~handler: unit => unit, ~timeout: int=?) => int = "setInterval"

external clearInterval: int => unit = "clearInterval"

external queueMicrotask: voidFunction => unit = "queueMicrotask"

external createImageBitmap: (
  ~image: htmlImageElement,
  ~options: imageBitmapOptions=?,
) => Promise.t<imageBitmap> = "createImageBitmap"

external createImageBitmap2: (
  ~image: svgImageElement,
  ~options: imageBitmapOptions=?,
) => Promise.t<imageBitmap> = "createImageBitmap"

external createImageBitmap3: (
  ~image: htmlVideoElement,
  ~options: imageBitmapOptions=?,
) => Promise.t<imageBitmap> = "createImageBitmap"

external createImageBitmap4: (
  ~image: htmlCanvasElement,
  ~options: imageBitmapOptions=?,
) => Promise.t<imageBitmap> = "createImageBitmap"

external createImageBitmap5: (
  ~image: imageBitmap,
  ~options: imageBitmapOptions=?,
) => Promise.t<imageBitmap> = "createImageBitmap"

external createImageBitmap6: (
  ~image: offscreenCanvas,
  ~options: imageBitmapOptions=?,
) => Promise.t<imageBitmap> = "createImageBitmap"

external createImageBitmap7: (
  ~image: videoFrame,
  ~options: imageBitmapOptions=?,
) => Promise.t<imageBitmap> = "createImageBitmap"

external createImageBitmap8: (
  ~image: blob,
  ~options: imageBitmapOptions=?,
) => Promise.t<imageBitmap> = "createImageBitmap"

external createImageBitmap9: (
  ~image: imageData,
  ~options: imageBitmapOptions=?,
) => Promise.t<imageBitmap> = "createImageBitmap"

external createImageBitmap10: (
  ~image: htmlImageElement,
  ~sx: int,
  ~sy: int,
  ~sw: int,
  ~sh: int,
  ~options: imageBitmapOptions=?,
) => Promise.t<imageBitmap> = "createImageBitmap"

external createImageBitmap11: (
  ~image: svgImageElement,
  ~sx: int,
  ~sy: int,
  ~sw: int,
  ~sh: int,
  ~options: imageBitmapOptions=?,
) => Promise.t<imageBitmap> = "createImageBitmap"

external createImageBitmap12: (
  ~image: htmlVideoElement,
  ~sx: int,
  ~sy: int,
  ~sw: int,
  ~sh: int,
  ~options: imageBitmapOptions=?,
) => Promise.t<imageBitmap> = "createImageBitmap"

external createImageBitmap13: (
  ~image: htmlCanvasElement,
  ~sx: int,
  ~sy: int,
  ~sw: int,
  ~sh: int,
  ~options: imageBitmapOptions=?,
) => Promise.t<imageBitmap> = "createImageBitmap"

external createImageBitmap14: (
  ~image: imageBitmap,
  ~sx: int,
  ~sy: int,
  ~sw: int,
  ~sh: int,
  ~options: imageBitmapOptions=?,
) => Promise.t<imageBitmap> = "createImageBitmap"

external createImageBitmap15: (
  ~image: offscreenCanvas,
  ~sx: int,
  ~sy: int,
  ~sw: int,
  ~sh: int,
  ~options: imageBitmapOptions=?,
) => Promise.t<imageBitmap> = "createImageBitmap"

external createImageBitmap16: (
  ~image: videoFrame,
  ~sx: int,
  ~sy: int,
  ~sw: int,
  ~sh: int,
  ~options: imageBitmapOptions=?,
) => Promise.t<imageBitmap> = "createImageBitmap"

external createImageBitmap17: (
  ~image: blob,
  ~sx: int,
  ~sy: int,
  ~sw: int,
  ~sh: int,
  ~options: imageBitmapOptions=?,
) => Promise.t<imageBitmap> = "createImageBitmap"

external createImageBitmap18: (
  ~image: imageData,
  ~sx: int,
  ~sy: int,
  ~sw: int,
  ~sh: int,
  ~options: imageBitmapOptions=?,
) => Promise.t<imageBitmap> = "createImageBitmap"

external structuredClone: ('t, ~options: structuredSerializeOptions=?) => 't = "structuredClone"

external fetch: (~input: request, ~init: requestInit=?) => Promise.t<response> = "fetch"

external fetch2: (~input: string, ~init: requestInit=?) => Promise.t<response> = "fetch"

external requestAnimationFrame: frameRequestCallback => int = "requestAnimationFrame"

external cancelAnimationFrame: int => unit = "cancelAnimationFrame"

external addEventListener: (
  ~type_: string,
  ~callback: eventListener<'event>,
  ~options: addEventListenerOptions=?,
) => unit = "addEventListener"

external addEventListener2: (
  ~type_: string,
  ~callback: eventListener<'event>,
  ~options: bool=?,
) => unit = "addEventListener"

external removeEventListener: (
  ~type_: string,
  ~callback: eventListener<'event>,
  ~options: eventListenerOptions=?,
) => unit = "removeEventListener"

external removeEventListener2: (
  ~type_: string,
  ~callback: eventListener<'event>,
  ~options: bool=?,
) => unit = "removeEventListener"

external dispatchEvent: event => bool = "dispatchEvent"

external close: unit => unit = "close"

external stop: unit => unit = "stop"

external focus: unit => unit = "focus"

external open_: (~url: string=?, ~target: string=?, ~features: string=?) => window = "open"

external alert: unit => unit = "alert"

external alert2: string => unit = "alert"

external confirm: (~message: string=?) => bool = "confirm"

external prompt: (~message: string=?, ~default: string=?) => string = "prompt"

external print: unit => unit = "print"

external postMessage: (
  ~message: JSON.t,
  ~targetOrigin: string,
  ~transfer: array<Dict.t<string>>=?,
) => unit = "postMessage"

external postMessage2: (~message: JSON.t, ~options: windowPostMessageOptions=?) => unit =
  "postMessage"

external matchMedia: string => mediaQueryList = "matchMedia"

external moveTo: (~x: int, ~y: int) => unit = "moveTo"

external moveBy: (~x: int, ~y: int) => unit = "moveBy"

external resizeTo: (~width: int, ~height: int) => unit = "resizeTo"

external resizeBy: (~x: int, ~y: int) => unit = "resizeBy"

external scroll: (~options: scrollToOptions=?) => unit = "scroll"

external scroll2: (~x: float, ~y: float) => unit = "scroll"

external scrollTo: (~options: scrollToOptions=?) => unit = "scrollTo"

external scrollTo2: (~x: float, ~y: float) => unit = "scrollTo"

external scrollBy: (~options: scrollToOptions=?) => unit = "scrollBy"

external scrollBy2: (~x: float, ~y: float) => unit = "scrollBy"

external getComputedStyle: (~elt: element, ~pseudoElt: string=?) => cssStyleDeclaration =
  "getComputedStyle"

external requestIdleCallback: (
  ~callback: idleRequestCallback,
  ~options: idleRequestOptions=?,
) => int = "requestIdleCallback"

external cancelIdleCallback: int => unit = "cancelIdleCallback"

external getSelection: unit => selection = "getSelection"
