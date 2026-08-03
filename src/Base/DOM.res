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

type shareData = {
  mutable files?: array<BaseFile.file>,
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
[See MediaList on MDN](https://developer.mozilla.org/docs/Web/API/MediaList)
TODO: mark as private once mutating fields of private records is allowed
*/
@editor.completeFrom(MediaList)
type mediaList = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaList/mediaText)
    */
  mutable mediaText: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaList/length)
    */
  length: int,
}

/**
[See StylePropertyMapReadOnly on MDN](https://developer.mozilla.org/docs/Web/API/StylePropertyMapReadOnly)
*/
@editor.completeFrom(StylePropertyMapReadOnly)
type stylePropertyMapReadOnly = private {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StylePropertyMapReadOnly/size)
    */
  size: int,
}

/**
[See StylePropertyMap on MDN](https://developer.mozilla.org/docs/Web/API/StylePropertyMap)
*/
@editor.completeFrom(StylePropertyMap)
type stylePropertyMap = private {
  ...stylePropertyMapReadOnly,
}

/**
A list of StyleSheet.
[See StyleSheetList on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheetList)
*/
@editor.completeFrom(StyleSheetList)
type rec styleSheetList = private {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheetList/length)
    */
  length: int,
}

/**
A single style sheet. CSS style sheets will further implement the more specialized CSSStyleSheet interface.
[See StyleSheet on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet)
*/
and styleSheet = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/type)
    */
  @as("type")
  type_: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/href)
    */
  href: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/ownerNode)
    */
  ownerNode: Null.t<unknown>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/parentStyleSheet)
    */
  parentStyleSheet: Null.t<cssStyleSheet>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/title)
    */
  title: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/media)
    */
  media: mediaList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/disabled)
    */
  mutable disabled: bool,
}

/**
A single CSS style sheet. It inherits properties and methods from its parent, StyleSheet.
[See CSSStyleSheet on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleSheet)
TODO: mark as private once mutating fields of private records is allowed
*/
@editor.completeFrom(CSSStyleSheet) and cssStyleSheet = {
  // Base properties from StyleSheet
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/type)
    */
  @as("type")
  type_: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/href)
    */
  href: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/ownerNode)
    */
  ownerNode: Null.t<unknown>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/parentStyleSheet)
    */
  parentStyleSheet: Null.t<cssStyleSheet>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/title)
    */
  title: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/media)
    */
  media: mediaList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/disabled)
    */
  mutable disabled: bool,
  // End base properties from StyleSheet

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleSheet/ownerRule)
    */
  ownerRule: Null.t<cssRule>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleSheet/cssRules)
    */
  cssRules: cssRuleList,
}

/**
A single CSS rule. There are several types of rules, listed in the Type constants section below.
[See CSSRule on MDN](https://developer.mozilla.org/docs/Web/API/CSSRule)
*/
and cssRule = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSRule/cssText)
    */
  mutable cssText: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSRule/parentRule)
    */
  parentRule: Null.t<cssRule>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSRule/parentStyleSheet)
    */
  parentStyleSheet: Null.t<cssStyleSheet>,
}

/**
A CSSRuleList is an (indirect-modify only) array-like object containing an ordered collection of CSSRule objects.
[See CSSRuleList on MDN](https://developer.mozilla.org/docs/Web/API/CSSRuleList)
*/
@editor.completeFrom(CSSRuleList) and cssRuleList = private {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSRuleList/length)
    */
  length: int,
}

/**
An object that is a CSS declaration block, and exposes style information and various style-related methods and properties.
[See CSSStyleDeclaration on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleDeclaration)
TODO: mark as private once mutating fields of private records is allowed
*/
@editor.completeFrom(CSSStyleDeclaration) and cssStyleDeclaration = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleDeclaration/cssText)
    */
  mutable cssText: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleDeclaration/length)
    */
  length: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleDeclaration/parentRule)
    */
  parentRule: Null.t<cssRule>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/cx)
    */
  mutable cx: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/cy)
    */
  mutable cy: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/r)
    */
  mutable r: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/rx)
    */
  mutable rx: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/ry)
    */
  mutable ry: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/x)
    */
  mutable x: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/y)
    */
  mutable y: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/vector-effect)
    */
  mutable vectorEffect: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/d)
    */
  mutable d: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-anchor)
    */
  mutable textAnchor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/fill)
    */
  mutable fill: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/stroke)
    */
  mutable stroke: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/marker-start)
    */
  mutable markerStart: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/marker-mid)
    */
  mutable markerMid: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/marker-end)
    */
  mutable markerEnd: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/marker)
    */
  mutable marker: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/paint-order)
    */
  mutable paintOrder: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/color-interpolation)
    */
  mutable colorInterpolation: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/shape-rendering)
    */
  mutable shapeRendering: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-rendering)
    */
  mutable textRendering: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/pointer-events)
    */
  mutable pointerEvents: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/stop-color)
    */
  mutable stopColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/stop-opacity)
    */
  mutable stopOpacity: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/-webkit-text-fill-color)
    */
  mutable webkitTextFillColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/-webkit-text-stroke-color)
    */
  mutable webkitTextStrokeColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/-webkit-text-stroke-width)
    */
  mutable webkitTextStrokeWidth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/-webkit-text-stroke)
    */
  mutable webkitTextStroke: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/touch-action)
    */
  mutable touchAction: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/position-area)
    */
  mutable positionArea: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/top)
    */
  mutable top: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/left)
    */
  mutable left: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/right)
    */
  mutable right: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/bottom)
    */
  mutable bottom: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/justify-self)
    */
  mutable justifySelf: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/align-self)
    */
  mutable alignSelf: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/justify-items)
    */
  mutable justifyItems: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/align-items)
    */
  mutable alignItems: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/width)
    */
  mutable width: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/height)
    */
  mutable height: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/min-width)
    */
  mutable minWidth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/min-height)
    */
  mutable minHeight: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/max-width)
    */
  mutable maxWidth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/max-height)
    */
  mutable maxHeight: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/margin-top)
    */
  mutable marginTop: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/margin-left)
    */
  mutable marginLeft: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/margin-right)
    */
  mutable marginRight: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/margin-bottom)
    */
  mutable marginBottom: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/animation-duration)
    */
  mutable animationDuration: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/animation-composition)
    */
  mutable animationComposition: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/animation-name)
    */
  mutable animationName: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/animation-timing-function)
    */
  mutable animationTimingFunction: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/animation-iteration-count)
    */
  mutable animationIterationCount: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/animation-direction)
    */
  mutable animationDirection: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/animation-play-state)
    */
  mutable animationPlayState: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/animation-delay)
    */
  mutable animationDelay: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/animation-fill-mode)
    */
  mutable animationFillMode: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/animation)
    */
  mutable animation: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/all)
    */
  mutable all: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/container-type)
    */
  mutable containerType: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/container-name)
    */
  mutable containerName: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/container)
    */
  mutable container: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/contain)
    */
  mutable contain: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/content-visibility)
    */
  mutable contentVisibility: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-family)
    */
  mutable fontFamily: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-weight)
    */
  mutable fontWeight: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-style)
    */
  mutable fontStyle: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-size)
    */
  mutable fontSize: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-size-adjust)
    */
  mutable fontSizeAdjust: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font)
    */
  mutable font: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-synthesis-weight)
    */
  mutable fontSynthesisWeight: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-synthesis-style)
    */
  mutable fontSynthesisStyle: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-synthesis-small-caps)
    */
  mutable fontSynthesisSmallCaps: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-synthesis)
    */
  mutable fontSynthesis: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-kerning)
    */
  mutable fontKerning: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-variant-ligatures)
    */
  mutable fontVariantLigatures: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-variant-position)
    */
  mutable fontVariantPosition: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-variant-caps)
    */
  mutable fontVariantCaps: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-variant-numeric)
    */
  mutable fontVariantNumeric: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-variant-alternates)
    */
  mutable fontVariantAlternates: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-variant-east-asian)
    */
  mutable fontVariantEastAsian: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-variant)
    */
  mutable fontVariant: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-feature-settings)
    */
  mutable fontFeatureSettings: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-optical-sizing)
    */
  mutable fontOpticalSizing: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-variation-settings)
    */
  mutable fontVariationSettings: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-palette)
    */
  mutable fontPalette: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/font-stretch)
    */
  mutable fontStretch: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/object-fit)
    */
  mutable objectFit: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/clip-path)
    */
  mutable clipPath: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/clip-rule)
    */
  mutable clipRule: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/mask-image)
    */
  mutable maskImage: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/mask-mode)
    */
  mutable maskMode: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/mask-repeat)
    */
  mutable maskRepeat: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/mask-position)
    */
  mutable maskPosition: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/mask-clip)
    */
  mutable maskClip: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/mask-origin)
    */
  mutable maskOrigin: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/mask-size)
    */
  mutable maskSize: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/mask-composite)
    */
  mutable maskComposite: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/mask)
    */
  mutable mask: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/mask-type)
    */
  mutable maskType: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/transition-behavior)
    */
  mutable transitionBehavior: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/transition-property)
    */
  mutable transitionProperty: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/transition-duration)
    */
  mutable transitionDuration: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/transition-timing-function)
    */
  mutable transitionTimingFunction: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/transition-delay)
    */
  mutable transitionDelay: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/transition)
    */
  mutable transition: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/view-transition-name)
    */
  mutable viewTransitionName: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/zoom)
    */
  mutable zoom: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/filter)
    */
  mutable filter: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/color-interpolation-filters)
    */
  mutable colorInterpolationFilters: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/display)
    */
  mutable display: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-transform)
    */
  mutable textTransform: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/math-style)
    */
  mutable mathStyle: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/math-depth)
    */
  mutable mathDepth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/z-index)
    */
  mutable zIndex: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/page-break-before)
    */
  mutable pageBreakBefore: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/page-break-after)
    */
  mutable pageBreakAfter: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/page-break-inside)
    */
  mutable pageBreakInside: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/mix-blend-mode)
    */
  mutable mixBlendMode: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/isolation)
    */
  mutable isolation: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/background-blend-mode)
    */
  mutable backgroundBlendMode: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/align-content)
    */
  mutable alignContent: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/justify-content)
    */
  mutable justifyContent: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/place-content)
    */
  mutable placeContent: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/place-self)
    */
  mutable placeSelf: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/place-items)
    */
  mutable placeItems: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/row-gap)
    */
  mutable rowGap: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/column-gap)
    */
  mutable columnGap: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/gap)
    */
  mutable gap: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/background-repeat)
    */
  mutable backgroundRepeat: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/background-position)
    */
  mutable backgroundPosition: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/background-position-x)
    */
  mutable backgroundPositionX: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/background-position-y)
    */
  mutable backgroundPositionY: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/background-clip)
    */
  mutable backgroundClip: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/background-color)
    */
  mutable backgroundColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/background-image)
    */
  mutable backgroundImage: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/background-attachment)
    */
  mutable backgroundAttachment: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/background-origin)
    */
  mutable backgroundOrigin: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/background-size)
    */
  mutable backgroundSize: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/background)
    */
  mutable background: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-style)
    */
  mutable borderStyle: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-width)
    */
  mutable borderWidth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border)
    */
  mutable border: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-image-source)
    */
  mutable borderImageSource: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-image-slice)
    */
  mutable borderImageSlice: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-image-width)
    */
  mutable borderImageWidth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-image-outset)
    */
  mutable borderImageOutset: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-image-repeat)
    */
  mutable borderImageRepeat: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-image)
    */
  mutable borderImage: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-top-color)
    */
  mutable borderTopColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-right-color)
    */
  mutable borderRightColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-bottom-color)
    */
  mutable borderBottomColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-left-color)
    */
  mutable borderLeftColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-block-start-color)
    */
  mutable borderBlockStartColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-block-end-color)
    */
  mutable borderBlockEndColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-inline-start-color)
    */
  mutable borderInlineStartColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-inline-end-color)
    */
  mutable borderInlineEndColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-color)
    */
  mutable borderColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-block-color)
    */
  mutable borderBlockColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-inline-color)
    */
  mutable borderInlineColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-top-style)
    */
  mutable borderTopStyle: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-right-style)
    */
  mutable borderRightStyle: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-bottom-style)
    */
  mutable borderBottomStyle: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-left-style)
    */
  mutable borderLeftStyle: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-block-start-style)
    */
  mutable borderBlockStartStyle: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-block-end-style)
    */
  mutable borderBlockEndStyle: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-inline-start-style)
    */
  mutable borderInlineStartStyle: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-inline-end-style)
    */
  mutable borderInlineEndStyle: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-block-style)
    */
  mutable borderBlockStyle: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-inline-style)
    */
  mutable borderInlineStyle: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-top-width)
    */
  mutable borderTopWidth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-right-width)
    */
  mutable borderRightWidth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-bottom-width)
    */
  mutable borderBottomWidth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-left-width)
    */
  mutable borderLeftWidth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-block-start-width)
    */
  mutable borderBlockStartWidth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-block-end-width)
    */
  mutable borderBlockEndWidth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-inline-start-width)
    */
  mutable borderInlineStartWidth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-inline-end-width)
    */
  mutable borderInlineEndWidth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-block-width)
    */
  mutable borderBlockWidth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-inline-width)
    */
  mutable borderInlineWidth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-top)
    */
  mutable borderTop: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-right)
    */
  mutable borderRight: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-bottom)
    */
  mutable borderBottom: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-left)
    */
  mutable borderLeft: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-block-start)
    */
  mutable borderBlockStart: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-block-end)
    */
  mutable borderBlockEnd: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-inline-start)
    */
  mutable borderInlineStart: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-inline-end)
    */
  mutable borderInlineEnd: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-block)
    */
  mutable borderBlock: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-inline)
    */
  mutable borderInline: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-top-left-radius)
    */
  mutable borderTopLeftRadius: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-top-right-radius)
    */
  mutable borderTopRightRadius: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-bottom-right-radius)
    */
  mutable borderBottomRightRadius: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-bottom-left-radius)
    */
  mutable borderBottomLeftRadius: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-start-start-radius)
    */
  mutable borderStartStartRadius: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-start-end-radius)
    */
  mutable borderStartEndRadius: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-end-start-radius)
    */
  mutable borderEndStartRadius: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-end-end-radius)
    */
  mutable borderEndEndRadius: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-radius)
    */
  mutable borderRadius: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/box-shadow)
    */
  mutable boxShadow: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/margin)
    */
  mutable margin: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/padding-top)
    */
  mutable paddingTop: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/padding-right)
    */
  mutable paddingRight: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/padding-bottom)
    */
  mutable paddingBottom: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/padding-left)
    */
  mutable paddingLeft: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/padding)
    */
  mutable padding: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/break-before)
    */
  mutable breakBefore: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/break-after)
    */
  mutable breakAfter: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/break-inside)
    */
  mutable breakInside: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/orphans)
    */
  mutable orphans: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/widows)
    */
  mutable widows: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/box-decoration-break)
    */
  mutable boxDecorationBreak: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/color-scheme)
    */
  mutable colorScheme: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/forced-color-adjust)
    */
  mutable forcedColorAdjust: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/print-color-adjust)
    */
  mutable printColorAdjust: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/color)
    */
  mutable color: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/opacity)
    */
  mutable opacity: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/content)
    */
  mutable content: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/quotes)
    */
  mutable quotes: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/order)
    */
  mutable order: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/visibility)
    */
  mutable visibility: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/flex-direction)
    */
  mutable flexDirection: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/flex-wrap)
    */
  mutable flexWrap: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/flex-flow)
    */
  mutable flexFlow: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/flex)
    */
  mutable flex: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/flex-grow)
    */
  mutable flexGrow: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/flex-shrink)
    */
  mutable flexShrink: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/flex-basis)
    */
  mutable flexBasis: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/position)
    */
  mutable position: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/float)
    */
  mutable float: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/grid-template-columns)
    */
  mutable gridTemplateColumns: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/grid-template-rows)
    */
  mutable gridTemplateRows: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/grid-auto-flow)
    */
  mutable gridAutoFlow: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/grid-template-areas)
    */
  mutable gridTemplateAreas: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/grid-template)
    */
  mutable gridTemplate: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/grid-auto-columns)
    */
  mutable gridAutoColumns: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/grid-auto-rows)
    */
  mutable gridAutoRows: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/grid)
    */
  mutable grid: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/grid-row-start)
    */
  mutable gridRowStart: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/grid-column-start)
    */
  mutable gridColumnStart: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/grid-row-end)
    */
  mutable gridRowEnd: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/grid-column-end)
    */
  mutable gridColumnEnd: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/grid-row)
    */
  mutable gridRow: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/grid-column)
    */
  mutable gridColumn: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/grid-area)
    */
  mutable gridArea: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/object-position)
    */
  mutable objectPosition: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/image-rendering)
    */
  mutable imageRendering: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/dominant-baseline)
    */
  mutable dominantBaseline: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/vertical-align)
    */
  mutable verticalAlign: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/line-height)
    */
  mutable lineHeight: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/list-style-image)
    */
  mutable listStyleImage: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/list-style-type)
    */
  mutable listStyleType: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/list-style-position)
    */
  mutable listStylePosition: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/list-style)
    */
  mutable listStyle: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/counter-reset)
    */
  mutable counterReset: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/counter-increment)
    */
  mutable counterIncrement: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/counter-set)
    */
  mutable counterSet: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/block-size)
    */
  mutable blockSize: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/inline-size)
    */
  mutable inlineSize: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/min-block-size)
    */
  mutable minBlockSize: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/min-inline-size)
    */
  mutable minInlineSize: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/max-block-size)
    */
  mutable maxBlockSize: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/max-inline-size)
    */
  mutable maxInlineSize: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/margin-block-start)
    */
  mutable marginBlockStart: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/margin-block-end)
    */
  mutable marginBlockEnd: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/margin-inline-start)
    */
  mutable marginInlineStart: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/margin-inline-end)
    */
  mutable marginInlineEnd: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/margin-block)
    */
  mutable marginBlock: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/margin-inline)
    */
  mutable marginInline: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/padding-block-start)
    */
  mutable paddingBlockStart: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/padding-block-end)
    */
  mutable paddingBlockEnd: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/padding-inline-start)
    */
  mutable paddingInlineStart: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/padding-inline-end)
    */
  mutable paddingInlineEnd: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/padding-block)
    */
  mutable paddingBlock: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/padding-inline)
    */
  mutable paddingInline: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/column-span)
    */
  mutable columnSpan: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/column-width)
    */
  mutable columnWidth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/column-count)
    */
  mutable columnCount: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/columns)
    */
  mutable columns: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/column-rule-color)
    */
  mutable columnRuleColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/column-rule-style)
    */
  mutable columnRuleStyle: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/column-rule-width)
    */
  mutable columnRuleWidth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/column-rule)
    */
  mutable columnRule: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/column-fill)
    */
  mutable columnFill: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/overflow-clip-margin)
    */
  mutable overflowClipMargin: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-overflow)
    */
  mutable textOverflow: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/overflow-x)
    */
  mutable overflowX: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/overflow-y)
    */
  mutable overflowY: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/overflow)
    */
  mutable overflow: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-behavior)
    */
  mutable scrollBehavior: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scrollbar-gutter)
    */
  mutable scrollbarGutter: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/overscroll-behavior)
    */
  mutable overscrollBehavior: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/overscroll-behavior-x)
    */
  mutable overscrollBehaviorX: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/overscroll-behavior-y)
    */
  mutable overscrollBehaviorY: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/overscroll-behavior-inline)
    */
  mutable overscrollBehaviorInline: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/overscroll-behavior-block)
    */
  mutable overscrollBehaviorBlock: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/clear)
    */
  mutable clear: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/page)
    */
  mutable page: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/inset-block-start)
    */
  mutable insetBlockStart: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/inset-inline-start)
    */
  mutable insetInlineStart: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/inset-block-end)
    */
  mutable insetBlockEnd: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/inset-inline-end)
    */
  mutable insetInlineEnd: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/inset-block)
    */
  mutable insetBlock: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/inset-inline)
    */
  mutable insetInline: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/inset)
    */
  mutable inset: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/ruby-position)
    */
  mutable rubyPosition: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/ruby-align)
    */
  mutable rubyAlign: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/overflow-anchor)
    */
  mutable overflowAnchor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-snap-type)
    */
  mutable scrollSnapType: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-padding)
    */
  mutable scrollPadding: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-margin)
    */
  mutable scrollMargin: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-snap-align)
    */
  mutable scrollSnapAlign: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-snap-stop)
    */
  mutable scrollSnapStop: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-padding-top)
    */
  mutable scrollPaddingTop: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-padding-right)
    */
  mutable scrollPaddingRight: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-padding-bottom)
    */
  mutable scrollPaddingBottom: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-padding-left)
    */
  mutable scrollPaddingLeft: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-padding-inline-start)
    */
  mutable scrollPaddingInlineStart: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-padding-block-start)
    */
  mutable scrollPaddingBlockStart: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-padding-inline-end)
    */
  mutable scrollPaddingInlineEnd: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-padding-block-end)
    */
  mutable scrollPaddingBlockEnd: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-padding-block)
    */
  mutable scrollPaddingBlock: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-padding-inline)
    */
  mutable scrollPaddingInline: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-margin-top)
    */
  mutable scrollMarginTop: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-margin-right)
    */
  mutable scrollMarginRight: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-margin-bottom)
    */
  mutable scrollMarginBottom: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-margin-left)
    */
  mutable scrollMarginLeft: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-margin-block-start)
    */
  mutable scrollMarginBlockStart: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-margin-inline-start)
    */
  mutable scrollMarginInlineStart: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-margin-block-end)
    */
  mutable scrollMarginBlockEnd: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-margin-inline-end)
    */
  mutable scrollMarginInlineEnd: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-margin-block)
    */
  mutable scrollMarginBlock: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scroll-margin-inline)
    */
  mutable scrollMarginInline: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scrollbar-color)
    */
  mutable scrollbarColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scrollbar-width)
    */
  mutable scrollbarWidth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/shape-outside)
    */
  mutable shapeOutside: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/shape-image-threshold)
    */
  mutable shapeImageThreshold: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/shape-margin)
    */
  mutable shapeMargin: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/aspect-ratio)
    */
  mutable aspectRatio: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/contain-intrinsic-width)
    */
  mutable containIntrinsicWidth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/contain-intrinsic-height)
    */
  mutable containIntrinsicHeight: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/contain-intrinsic-block-size)
    */
  mutable containIntrinsicBlockSize: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/contain-intrinsic-inline-size)
    */
  mutable containIntrinsicInlineSize: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/contain-intrinsic-size)
    */
  mutable containIntrinsicSize: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/box-sizing)
    */
  mutable boxSizing: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/table-layout)
    */
  mutable tableLayout: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-collapse)
    */
  mutable borderCollapse: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/border-spacing)
    */
  mutable borderSpacing: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/caption-side)
    */
  mutable captionSide: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/empty-cells)
    */
  mutable emptyCells: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/white-space)
    */
  mutable whiteSpace: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/white-space-collapse)
    */
  mutable whiteSpaceCollapse: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/tab-size)
    */
  mutable tabSize: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-wrap-mode)
    */
  mutable textWrapMode: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-wrap-style)
    */
  mutable textWrapStyle: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-wrap)
    */
  mutable textWrap: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/word-break)
    */
  mutable wordBreak: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/line-break)
    */
  mutable lineBreak: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/hyphens)
    */
  mutable hyphens: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/hyphenate-character)
    */
  mutable hyphenateCharacter: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/overflow-wrap)
    */
  mutable overflowWrap: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-align)
    */
  mutable textAlign: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-align-last)
    */
  mutable textAlignLast: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/word-spacing)
    */
  mutable wordSpacing: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/letter-spacing)
    */
  mutable letterSpacing: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-indent)
    */
  mutable textIndent: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-decoration-line)
    */
  mutable textDecorationLine: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-decoration-style)
    */
  mutable textDecorationStyle: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-decoration-color)
    */
  mutable textDecorationColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-decoration-thickness)
    */
  mutable textDecorationThickness: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-decoration)
    */
  mutable textDecoration: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-underline-position)
    */
  mutable textUnderlinePosition: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-underline-offset)
    */
  mutable textUnderlineOffset: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-decoration-skip-ink)
    */
  mutable textDecorationSkipInk: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-emphasis-style)
    */
  mutable textEmphasisStyle: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-emphasis-color)
    */
  mutable textEmphasisColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-emphasis)
    */
  mutable textEmphasis: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-emphasis-position)
    */
  mutable textEmphasisPosition: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-shadow)
    */
  mutable textShadow: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/translate)
    */
  mutable translate: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/rotate)
    */
  mutable rotate: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/scale)
    */
  mutable scale: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/transform-style)
    */
  mutable transformStyle: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/perspective)
    */
  mutable perspective: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/perspective-origin)
    */
  mutable perspectiveOrigin: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/backface-visibility)
    */
  mutable backfaceVisibility: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/transform)
    */
  mutable transform: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/transform-origin)
    */
  mutable transformOrigin: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/transform-box)
    */
  mutable transformBox: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/outline)
    */
  mutable outline: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/outline-width)
    */
  mutable outlineWidth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/outline-style)
    */
  mutable outlineStyle: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/outline-color)
    */
  mutable outlineColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/outline-offset)
    */
  mutable outlineOffset: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/resize)
    */
  mutable resize: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/cursor)
    */
  mutable cursor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/caret-color)
    */
  mutable caretColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/user-select)
    */
  mutable userSelect: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/accent-color)
    */
  mutable accentColor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/appearance)
    */
  mutable appearance: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/will-change)
    */
  mutable willChange: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/direction)
    */
  mutable direction: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/unicode-bidi)
    */
  mutable unicodeBidi: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/writing-mode)
    */
  mutable writingMode: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-orientation)
    */
  mutable textOrientation: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/text-combine-upright)
    */
  mutable textCombineUpright: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/fill-rule)
    */
  mutable fillRule: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/fill-opacity)
    */
  mutable fillOpacity: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/stroke-width)
    */
  mutable strokeWidth: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/stroke-linecap)
    */
  mutable strokeLinecap: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/stroke-linejoin)
    */
  mutable strokeLinejoin: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/stroke-miterlimit)
    */
  mutable strokeMiterlimit: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/stroke-dasharray)
    */
  mutable strokeDasharray: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/stroke-dashoffset)
    */
  mutable strokeDashoffset: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/stroke-opacity)
    */
  mutable strokeOpacity: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/backdrop-filter)
    */
  mutable backdropFilter: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/offset-path)
    */
  mutable offsetPath: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/offset-distance)
    */
  mutable offsetDistance: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/offset-position)
    */
  mutable offsetPosition: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/offset-anchor)
    */
  mutable offsetAnchor: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/offset-rotate)
    */
  mutable offsetRotate: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/CSS/offset)
    */
  mutable offset: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleDeclaration/cssFloat)
    */
  mutable cssFloat: string,
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
Stores information on a media query applied to a document, and handles sending notifications to listeners when the media query state change (i.e. when the media query test starts or stops evaluating to true).
[See MediaQueryList on MDN](https://developer.mozilla.org/docs/Web/API/MediaQueryList)
*/
@editor.completeFrom(MediaQueryList)
type mediaQueryList = private {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaQueryList/media)
    */
  media: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaQueryList/matches)
    */
  matches: bool,
}

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
[See CSSStyleValue on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleValue)
*/
@editor.completeFrom(CSSStyleValue)
type cssStyleValue = private {}

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

type cssStyleSheetInit = {
  mutable baseURL?: string,
  mutable media?: unknown,
  mutable disabled?: bool,
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
  mutable primaries?: Null.t<videoColorPrimaries>,
  mutable transfer?: Null.t<videoTransferCharacteristics>,
  mutable matrix?: Null.t<videoMatrixCoefficients>,
  mutable fullRange?: Null.t<bool>,
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
