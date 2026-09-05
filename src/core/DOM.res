@@warning("-30")

/**
Any web page loaded in the browser that serves as an entry point into the page's DOM tree.
[See Document on MDN](https://developer.mozilla.org/docs/Web/API/Document)
*/
type document = private {}

/**
An abnormal event (called an exception) which occurs as a result of calling a method or accessing a property of a web API.
[See DOMException on MDN](https://developer.mozilla.org/docs/Web/API/DOMException)
*/
@editor.completeFrom(DOMException)
type domException = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMException/name)
    */
  name: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMException/message)
    */
  message: string,
}

/**
A type returned by some APIs which contains a list of DOMString (strings).
[See DOMStringList on MDN](https://developer.mozilla.org/docs/Web/API/DOMStringList)
*/
@editor.completeFrom(DOMStringList)
type domStringList = {
  /**
    Returns the number of strings in strings.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMStringList/length)
    */
  length: int,
}

@editor.completeFrom(Window)
type window = private {}
external window: window = "window"

type autoFillBase =
  | @as("off") Off
  | @as("on") On

type documentReadyState =
  | @as("complete") Complete
  | @as("interactive") Interactive
  | @as("loading") Loading

type documentVisibilityState =
  | @as("hidden") Hidden
  | @as("visible") Visible

type orientationType =
  | @as("landscape-primary") LandscapePrimary
  | @as("landscape-secondary") LandscapeSecondary
  | @as("portrait-primary") PortraitPrimary
  | @as("portrait-secondary") PortraitSecondary

type insertPosition =
  | @as("afterbegin") Afterbegin
  | @as("afterend") Afterend
  | @as("beforebegin") Beforebegin
  | @as("beforeend") Beforeend

type scrollBehavior =
  | @as("auto") Auto
  | @as("instant") Instant
  | @as("smooth") Smooth

type fullscreenNavigationUI =
  | @as("auto") Auto
  | @as("hide") Hide
  | @as("show") Show

type remotePlaybackState =
  | @as("connected") Connected
  | @as("connecting") Connecting
  | @as("disconnected") Disconnected

type referrerPolicy =
  | @as("no-referrer") NoReferrer
  | @as("no-referrer-when-downgrade") NoReferrerWhenDowngrade
  | @as("origin") Origin
  | @as("origin-when-cross-origin") OriginWhenCrossOrigin
  | @as("same-origin") SameOrigin
  | @as("strict-origin") StrictOrigin
  | @as("strict-origin-when-cross-origin") StrictOriginWhenCrossOrigin
  | @as("unsafe-url") UnsafeUrl

type fillMode =
  | @as("auto") Auto
  | @as("backwards") Backwards
  | @as("both") Both
  | @as("forwards") Forwards
  | @as("none") None

type playbackDirection =
  | @as("alternate") Alternate
  | @as("alternate-reverse") AlternateReverse
  | @as("normal") Normal
  | @as("reverse") Reverse

type imageOrientation =
  | @as("flipY") FlipY
  | @as("from-image") FromImage
  | @as("none") None

type premultiplyAlpha =
  | @as("default") Default
  | @as("none") None
  | @as("premultiply") Premultiply

type colorSpaceConversion =
  | @as("default") Default
  | @as("none") None

type resizeQuality =
  | @as("high") High
  | @as("low") Low
  | @as("medium") Medium
  | @as("pixelated") Pixelated

type scrollLogicalPosition =
  | @as("center") Center
  | @as("end") End
  | @as("nearest") Nearest
  | @as("start") Start

type selectionMode =
  | @as("end") End
  | @as("preserve") Preserve
  | @as("select") Select
  | @as("start") Start

type videoPixelFormat =
  | BGRA
  | BGRX
  | I420
  | I420A
  | I422
  | I444
  | NV12
  | RGBA
  | RGBX

type videoColorPrimaries =
  | @as("bt470bg") Bt470bg
  | @as("bt709") Bt709
  | @as("smpte170m") Smpte170m

type videoTransferCharacteristics =
  | @as("bt709") Bt709
  | @as("iec61966-2-1") Iec6196621
  | @as("smpte170m") Smpte170m

type videoMatrixCoefficients =
  | @as("bt470bg") Bt470bg
  | @as("bt709") Bt709
  | @as("rgb") Rgb
  | @as("smpte170m") Smpte170m

type alphaOption =
  | @as("discard") Discard
  | @as("keep") Keep

type predefinedColorSpace =
  | @as("display-p3") DisplayP3
  | @as("srgb") Srgb

/**
A file-like object of immutable, raw data.
[See Blob on MDN](https://developer.mozilla.org/docs/Web/API/Blob)
*/
type blob = private {
  size: int,
  @as("type")
  type_: string,
}

/**
Provides information about a file selected by or available to the user.
[See File on MDN](https://developer.mozilla.org/docs/Web/API/File)
*/
type file = private {
  ...blob,
  name: string,
  lastModified: int,
  webkitRelativePath: string,
}

type shareData = {
  mutable files?: array<file>,
  mutable title?: string,
  mutable text?: string,
  mutable url?: string,
}

/**
[See UserActivation on MDN](https://developer.mozilla.org/docs/Web/API/UserActivation)
*/
type userActivation = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/UserActivation/hasBeenActive)
    */
  hasBeenActive: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/UserActivation/isActive)
    */
  isActive: bool,
}

/**
The state and the identity of the user agent. It allows scripts to query it and to register themselves to carry on some activities.
[See Navigator on MDN](https://developer.mozilla.org/docs/Web/API/Navigator)
*/
@editor.completeFrom(Navigator)
type navigator

// TODO: mark as private once mutating fields of private records is allowed
@editor.completeFrom(DOMTokenList)
type domTokenList = {
  /**
    Returns the number of tokens.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMTokenList/length)
    */
  length: int,
  /**
    Returns the associated set as string.

Can be set, to change the associated attribute.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMTokenList/value)
    */
  mutable value: string,
}

/**
[See FragmentDirective on MDN](https://developer.mozilla.org/docs/Web/API/FragmentDirective)
*/
type fragmentDirective = {}

/**
[See CustomElementRegistry on MDN](https://developer.mozilla.org/docs/Web/API/CustomElementRegistry)
*/
@editor.completeFrom(CustomElementRegistry)
type customElementRegistry = private {}

/**
[See BarProp on MDN](https://developer.mozilla.org/docs/Web/API/BarProp)
*/
type barProp = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/BarProp/visible)
    */
  visible: bool,
}

/**
EventTarget is a WebApiDOM interface implemented by objects that can receive events and may have listeners for them.
[See EventTarget on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget)
*/
@editor.completeFrom(EventTarget)
type eventTarget = private {}

/**
An event which takes place in the DOM.
[See WebApiEvent on MDN](https://developer.mozilla.org/docs/Web/API/Event)
*/
@editor.completeFrom(Event)
type event = private {
  /**
Returns the type of event, e.g. "click", "hashchange", or "submit".
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/type)
*/
  @as("type")
  type_: EventType.t,
  /**
Returns the object to which event is dispatched (its target).
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/target)
*/
  target: Null.t<eventTarget>,
  /**
Returns the object whose event listener's callback is currently being invoked.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/currentTarget)
*/
  currentTarget: Null.t<eventTarget>,
  /**
Returns the event's phase, which is one of NONE, CAPTURING_PHASE, AT_TARGET, and BUBBLING_PHASE.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/eventPhase)
*/
  eventPhase: int,
  /**
Returns true or false depending on how event was initialized. True if event goes through its target's ancestors in reverse tree order, and false otherwise.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/bubbles)
*/
  bubbles: bool,
  /**
Returns true or false depending on how event was initialized. Its return value does not always carry meaning, but true can indicate that part of the operation during which event was dispatched, can be canceled by invoking the preventDefault() method.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/cancelable)
*/
  cancelable: bool,
  /**
Returns true if preventDefault() was invoked successfully to indicate cancelation, and false otherwise.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/defaultPrevented)
*/
  defaultPrevented: bool,
  /**
Returns true or false depending on how event was initialized. True if event invokes listeners past a ShadowRoot node that is the root of its target, and false otherwise.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/composed)
*/
  composed: bool,
  /**
Returns true if event was dispatched by the user agent, and false otherwise.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/isTrusted)
*/
  isTrusted: bool,
  /**
Returns the event's timestamp as the number of milliseconds measured relative to the time origin.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/timeStamp)
*/
  timeStamp: float,
}

type eventInit = {
  mutable bubbles?: bool,
  mutable cancelable?: bool,
  mutable composed?: bool,
}

/**
The ExtendableEvent interface extends the lifetime of the install and activate events dispatched on the global scope as part of the service worker lifecycle.
[See ExtendableEvent on MDN](https://developer.mozilla.org/docs/Web/API/ExtendableEvent)
*/
@editor.completeFrom(ExtendableEvent)
type extendableEvent = private {
  ...event,
}

/**
A controller object that allows you to abort one or more WebApiDOM requests as and when desired.
[See AbortController on MDN](https://developer.mozilla.org/docs/Web/API/AbortController)
*/
@editor.completeFrom(AbortController)
type rec abortController = private {
  /**
Returns the AbortSignal object associated with this object.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbortController/signal)
*/
  signal: abortSignal,
}
/**
A signal object that allows you to communicate with a WebApiDOM request (such as a WebApiFetch) and abort it if required via an AbortController object.
[See AbortSignal on MDN](https://developer.mozilla.org/docs/Web/API/AbortSignal)
*/
@editor.completeFrom(AbortSignal) and abortSignal = private {
  ...eventTarget,
  /**
Returns true if this AbortSignal's AbortController has signaled to abort, and false otherwise.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbortSignal/aborted)
*/
  aborted: bool,
  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbortSignal/reason)
*/
  reason: JSON.t,
}

module EventListener = {
  type t<'event> = 'event => unit

  type options = {mutable capture?: bool}

  type addEventListenerOptions = {
    ...options,
    mutable passive?: bool,
    mutable once?: bool,
    mutable signal?: abortSignal,
  }
}

/**
[See ScreenOrientation on MDN](https://developer.mozilla.org/docs/Web/API/ScreenOrientation)
*/
@editor.completeFrom(ScreenOrientation)
type screenOrientation = private {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ScreenOrientation/type)
    */
  @as("type")
  type_: orientationType,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ScreenOrientation/angle)
    */
  angle: int,
}

/**
A screen, usually the one on which the current window is being rendered, and is obtained using window.screen.
[See Screen on MDN](https://developer.mozilla.org/docs/Web/API/Screen)
*/
type screen = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Screen/availWidth)
    */
  availWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Screen/availHeight)
    */
  availHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Screen/width)
    */
  width: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Screen/height)
    */
  height: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Screen/colorDepth)
    */
  colorDepth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Screen/pixelDepth)
    */
  pixelDepth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Screen/orientation)
    */
  orientation: screenOrientation,
}

@unboxed
type vibratePattern =
  | Int(int)
  | IntArray(array<int>)

type renderingContext = unknown

type offscreenRenderingContext = unknown

/**
[See DocumentTimeline on MDN](https://developer.mozilla.org/docs/Web/API/DocumentTimeline)
*/
@editor.completeFrom(DocumentTimeline) and documentTimeline = private {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnimationTimeline/currentTime)
    */
  currentTime: Null.t<float>,
}

/**
NodeList objects are collections of nodes, usually returned by properties such as Node.childNodes and methods such as document.querySelectorAll().
[See NodeList on MDN](https://developer.mozilla.org/docs/Web/API/NodeList)
*/
@editor.completeFrom(NodeList) and nodeList<'tNode> = private {
  /**
    Returns the number of nodes in the collection.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NodeList/length)
    */
  length: int,
}

/**
[See DOMRectReadOnly on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly)
*/
@editor.completeFrom(DOMRectReadOnly)
type domRectReadOnly = private {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly/x)
    */
  x: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly/y)
    */
  y: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly/width)
    */
  width: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly/height)
    */
  height: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly/top)
    */
  top: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly/right)
    */
  right: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly/bottom)
    */
  bottom: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly/left)
    */
  left: float,
}

/**
[See DOMRect on MDN](https://developer.mozilla.org/docs/Web/API/DOMRect)
*/
@editor.completeFrom(DOMRect)
type domRect = private {
  ...domRectReadOnly,
}

@editor.completeFrom(DOMRectList) type domRectList = private {}

/**
The validity states that an element can be in, with respect to constraint validation. Together, they help explain why an element's value fails to validate, if it's not valid.
[See ValidityState on MDN](https://developer.mozilla.org/docs/Web/API/ValidityState)
*/
type validityState = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ValidityState/valueMissing)
    */
  valueMissing: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ValidityState/typeMismatch)
    */
  typeMismatch: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ValidityState/patternMismatch)
    */
  patternMismatch: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ValidityState/tooLong)
    */
  tooLong: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ValidityState/tooShort)
    */
  tooShort: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ValidityState/rangeUnderflow)
    */
  rangeUnderflow: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ValidityState/rangeOverflow)
    */
  rangeOverflow: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ValidityState/stepMismatch)
    */
  stepMismatch: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ValidityState/badInput)
    */
  badInput: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ValidityState/customError)
    */
  customError: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ValidityState/valid)
    */
  valid: bool,
}

/**
[See CaretPosition on MDN](https://developer.mozilla.org/docs/Web/API/CaretPosition)
*/
@editor.completeFrom(CaretPosition)
type caretPosition = private {}

/**
[See IdleDeadline on MDN](https://developer.mozilla.org/docs/Web/API/IdleDeadline)
*/
@editor.completeFrom(IdleDeadline)
type idleDeadline = private {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IdleDeadline/didTimeout)
    */
  didTimeout: bool,
}

/**
An object of this type is returned by the files property of the HTML <input> element; this lets you access the list of files selected with the <input type="file"> element. It's also used for a list of files dropped into web content when using the drag and drop API; see the DataTransfer object for details on this usage.
[See FileList on MDN](https://developer.mozilla.org/docs/Web/API/FileList)
*/
@editor.completeFrom(FileList)
type fileList = private {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileList/length)
    */
  length: int,
}

/**
A collection of Attr objects. Objects inside a NamedNodeMap are not in any particular order, unlike NodeList, although they may be accessed by an index as in an array.
[See NamedNodeMap on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap)
*/
type namedNodeMap = private {
  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/length)
*/
  length: int,
}

type structuredSerializeOptions = {mutable transfer?: array<Dict.t<string>>}

type slotAssignmentMode =
  | @as("manual") Manual
  | @as("named") Named

type animationPlayState =
  | @as("finished") Finished
  | @as("idle") Idle
  | @as("paused") Paused
  | @as("running") Running

type animationReplaceState =
  | @as("active") Active
  | @as("persisted") Persisted
  | @as("removed") Removed

/**
[See DOMMatrixReadOnly on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly)
*/
@editor.completeFrom(DOMMatrixReadOnly)
type domMatrixReadOnly = private {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  a: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  b: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  c: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  d: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  e: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  f: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m11: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m12: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m13: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m14: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m21: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m22: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m23: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m24: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m31: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m32: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m33: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m34: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m41: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m42: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m43: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m44: float,
}

/**
[See DOMMatrix on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrix)
*/
@editor.completeFrom(DOMMatrix)
type domMatrix = private {
  ...domMatrixReadOnly,
}

/**
[See VideoColorSpace on MDN](https://developer.mozilla.org/docs/Web/API/VideoColorSpace)
*/
@editor.completeFrom(VideoColorSpace)
type videoColorSpace = private {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoColorSpace/primaries)
    */
  primaries: Null.t<videoColorPrimaries>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoColorSpace/transfer)
    */
  transfer: Null.t<videoTransferCharacteristics>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoColorSpace/matrix)
    */
  matrix: Null.t<videoMatrixCoefficients>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoColorSpace/fullRange)
    */
  fullRange: Null.t<bool>,
}

/**
[See VideoFrame on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@editor.completeFrom(VideoFrame)
type videoFrame = private {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/format)
    */
  format: Null.t<videoPixelFormat>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/codedWidth)
    */
  codedWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/codedHeight)
    */
  codedHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/codedRect)
    */
  codedRect: Null.t<domRectReadOnly>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/visibleRect)
    */
  visibleRect: Null.t<domRectReadOnly>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/displayWidth)
    */
  displayWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/displayHeight)
    */
  displayHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/duration)
    */
  duration: Null.t<int>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/timestamp)
    */
  timestamp: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/colorSpace)
    */
  colorSpace: videoColorSpace,
}

/**
The underlying pixel data of an area of a <canvas> element. It is created using the ImageData() constructor or creator methods on the CanvasRenderingContext2D object associated with a canvas: createImageData() and getImageData(). It can also be used to set a part of the canvas by using putImageData().
[See ImageData on MDN](https://developer.mozilla.org/docs/Web/API/ImageData)
*/
@editor.completeFrom(ImageData)
type imageData = private {
  /**
    Returns the actual dimensions of the data in the ImageData object, in pixels.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ImageData/width)
    */
  width: int,
  /**
    Returns the actual dimensions of the data in the ImageData object, in pixels.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ImageData/height)
    */
  height: int,
  /**
    Returns the one-dimensional array containing the data in RGBA order, as integers in the range 0 to 255.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ImageData/data)
    */
  data: Uint8ClampedArray.t,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ImageData/colorSpace)
    */
  colorSpace: predefinedColorSpace,
}

/**
[See DOMPointReadOnly on MDN](https://developer.mozilla.org/docs/Web/API/DOMPointReadOnly)
*/
@editor.completeFrom(DOMPointReadOnly)
type domPointReadOnly = private {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMPointReadOnly/x)
    */
  x: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMPointReadOnly/y)
    */
  y: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMPointReadOnly/z)
    */
  z: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMPointReadOnly/w)
    */
  w: float,
}

/**
[See DOMPoint on MDN](https://developer.mozilla.org/docs/Web/API/DOMPoint)
*/
@editor.completeFrom(DOMPoint)
type domPoint = private {
  ...domPointReadOnly,
}

/**
 [Read more on MDN](https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement/getContext#contextattributes)
 */
type canvasContext2DAttributes = {
  alpha: bool,
  colorspace?: predefinedColorSpace,
  desynchronized: bool,
  willReadFrequently: bool,
}

/**
The CanvasRenderingContext2D interface, part of the WebApiCanvas API, provides the 2D rendering context for the drawing surface of a <canvas> element. It is used for drawing shapes, text, images, and other objects.
[See CanvasRenderingContext2D on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D)
*/
@editor.completeFrom(CanvasRenderingContext2D)
type canvasRenderingContext2D

type elementDefinitionOptions = {mutable extends?: string}

type documentTimelineOptions = {mutable originTime?: float}

type checkVisibilityOptions = {
  mutable checkOpacity?: bool,
  mutable checkVisibilityCSS?: bool,
  mutable contentVisibilityAuto?: bool,
  mutable opacityProperty?: bool,
  mutable visibilityProperty?: bool,
}

type scrollOptions = {mutable behavior?: scrollBehavior}

type scrollToOptions = {
  ...scrollOptions,
  mutable left?: float,
  mutable top?: float,
}

type fullscreenOptions = {mutable navigationUI?: fullscreenNavigationUI}

type pointerLockOptions = {mutable unadjustedMovement?: bool}

type idleRequestOptions = {mutable timeout?: int}

type domRectInit = {
  mutable x?: float,
  mutable y?: float,
  mutable width?: float,
  mutable height?: float,
}

type validityStateFlags = {
  mutable valueMissing?: bool,
  mutable typeMismatch?: bool,
  mutable patternMismatch?: bool,
  mutable tooLong?: bool,
  mutable tooShort?: bool,
  mutable rangeUnderflow?: bool,
  mutable rangeOverflow?: bool,
  mutable stepMismatch?: bool,
  mutable badInput?: bool,
  mutable customError?: bool,
}

type assignedNodesOptions = {mutable flatten?: bool}

type focusOptions = {mutable preventScroll?: bool}

type imageBitmapOptions = {
  mutable imageOrientation?: imageOrientation,
  mutable premultiplyAlpha?: premultiplyAlpha,
  mutable colorSpaceConversion?: colorSpaceConversion,
  mutable resizeWidth?: int,
  mutable resizeHeight?: int,
  mutable resizeQuality?: resizeQuality,
}

type scrollIntoViewOptions = {
  ...scrollOptions,
  mutable block?: scrollLogicalPosition,
  mutable inline?: scrollLogicalPosition,
}

type windowPostMessageOptions = {
  ...structuredSerializeOptions,
  mutable targetOrigin?: string,
}

type domMatrix2DInit = {
  mutable a?: float,
  mutable b?: float,
  mutable c?: float,
  mutable d?: float,
  mutable e?: float,
  mutable f?: float,
  mutable m11?: float,
  mutable m12?: float,
  mutable m21?: float,
  mutable m22?: float,
  mutable m41?: float,
  mutable m42?: float,
}

type domMatrixInit = {
  ...domMatrix2DInit,
  mutable m13?: float,
  mutable m14?: float,
  mutable m23?: float,
  mutable m24?: float,
  mutable m31?: float,
  mutable m32?: float,
  mutable m33?: float,
  mutable m34?: float,
  mutable m43?: float,
  mutable m44?: float,
  mutable is2D?: bool,
}

type videoFrameInit = {
  mutable duration?: int,
  mutable timestamp?: int,
  mutable alpha?: alphaOption,
  mutable visibleRect?: domRectInit,
  mutable displayWidth?: int,
  mutable displayHeight?: int,
}

type videoColorSpaceInit = {
  mutable primaries?: Nullable.t<videoColorPrimaries>,
  mutable transfer?: Nullable.t<videoTransferCharacteristics>,
  mutable matrix?: Nullable.t<videoMatrixCoefficients>,
  mutable fullRange?: Nullable.t<bool>,
}

type planeLayout = {
  mutable offset: int,
  mutable stride: int,
}

type videoFrameBufferInit = {
  mutable format: videoPixelFormat,
  mutable codedWidth: int,
  mutable codedHeight: int,
  mutable timestamp: int,
  mutable duration?: int,
  mutable layout?: array<planeLayout>,
  mutable visibleRect?: domRectInit,
  mutable displayWidth?: int,
  mutable displayHeight?: int,
  mutable colorSpace?: videoColorSpaceInit,
}

type imageDataSettings = {mutable colorSpace?: predefinedColorSpace}

type videoFrameCopyToOptions = {
  mutable rect?: domRectInit,
  mutable layout?: array<planeLayout>,
  mutable format?: videoPixelFormat,
  mutable colorSpace?: predefinedColorSpace,
}

type domPointInit = {
  mutable x?: float,
  mutable y?: float,
  mutable z?: float,
  mutable w?: float,
}

type xPathNSResolver

type imageBitmapSource

type customElementConstructor

type timeoutId
