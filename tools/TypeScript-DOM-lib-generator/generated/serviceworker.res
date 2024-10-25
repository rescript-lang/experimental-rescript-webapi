/** Temporary, to be fixed */
type error = {}
type any
type arrayBufferView = {}
/* End temporary */

type binaryType =
  | @as("arraybuffer") Arraybuffer
  | @as("blob") Blob

type cssMathOperator =
  | @as("clamp") Clamp
  | @as("invert") Invert
  | @as("max") Max
  | @as("min") Min
  | @as("negate") Negate
  | @as("product") Product
  | @as("sum") Sum

type cssNumericBaseType =
  | @as("angle") Angle
  | @as("flex") Flex
  | @as("frequency") Frequency
  | @as("length") Length
  | @as("percent") Percent
  | @as("resolution") Resolution
  | @as("time") Time

type canvasDirection =
  | @as("inherit") Inherit
  | @as("ltr") Ltr
  | @as("rtl") Rtl

type canvasFillRule =
  | @as("evenodd") Evenodd
  | @as("nonzero") Nonzero

type canvasFontKerning =
  | @as("auto") Auto
  | @as("none") None
  | @as("normal") Normal

type canvasFontStretch =
  | @as("condensed") Condensed
  | @as("expanded") Expanded
  | @as("extra-condensed") ExtraCondensed
  | @as("extra-expanded") ExtraExpanded
  | @as("normal") Normal
  | @as("semi-condensed") SemiCondensed
  | @as("semi-expanded") SemiExpanded
  | @as("ultra-condensed") UltraCondensed
  | @as("ultra-expanded") UltraExpanded

type canvasFontVariantCaps =
  | @as("all-petite-caps") AllPetiteCaps
  | @as("all-small-caps") AllSmallCaps
  | @as("normal") Normal
  | @as("petite-caps") PetiteCaps
  | @as("small-caps") SmallCaps
  | @as("titling-caps") TitlingCaps
  | @as("unicase") Unicase

type canvasLineCap =
  | @as("butt") Butt
  | @as("round") Round
  | @as("square") Square

type canvasLineJoin =
  | @as("bevel") Bevel
  | @as("miter") Miter
  | @as("round") Round

type canvasTextAlign =
  | @as("center") Center
  | @as("end") End
  | @as("left") Left
  | @as("right") Right
  | @as("start") Start

type canvasTextBaseline =
  | @as("alphabetic") Alphabetic
  | @as("bottom") Bottom
  | @as("hanging") Hanging
  | @as("ideographic") Ideographic
  | @as("middle") Middle
  | @as("top") Top

type canvasTextRendering =
  | @as("auto") Auto
  | @as("geometricPrecision") GeometricPrecision
  | @as("optimizeLegibility") OptimizeLegibility
  | @as("optimizeSpeed") OptimizeSpeed

type clientTypes =
  | @as("all") All
  | @as("sharedworker") Sharedworker
  | @as("window") Window
  | @as("worker") Worker

type colorGamut =
  | @as("p3") P3
  | @as("rec2020") Rec2020
  | @as("srgb") Srgb

type colorSpaceConversion =
  | @as("default") Default
  | @as("none") None

type compressionFormat =
  | @as("deflate") Deflate
  | @as("deflate-raw") DeflateRaw
  | @as("gzip") Gzip

type documentVisibilityState =
  | @as("hidden") Hidden
  | @as("visible") Visible

type endingType =
  | @as("native") Native
  | @as("transparent") Transparent

type fileSystemHandleKind =
  | @as("directory") Directory
  | @as("file") File

type fontDisplay =
  | @as("auto") Auto
  | @as("block") Block
  | @as("fallback") Fallback
  | @as("optional") Optional
  | @as("swap") Swap

type fontFaceLoadStatus =
  | @as("error") Error
  | @as("loaded") Loaded
  | @as("loading") Loading
  | @as("unloaded") Unloaded

type fontFaceSetLoadStatus =
  | @as("loaded") Loaded
  | @as("loading") Loading

type frameType =
  | @as("auxiliary") Auxiliary
  | @as("nested") Nested
  | @as("none") None
  | @as("top-level") TopLevel

type globalCompositeOperation =
  | @as("color") Color
  | @as("color-burn") ColorBurn
  | @as("color-dodge") ColorDodge
  | @as("copy") Copy
  | @as("darken") Darken
  | @as("destination-atop") DestinationAtop
  | @as("destination-in") DestinationIn
  | @as("destination-out") DestinationOut
  | @as("destination-over") DestinationOver
  | @as("difference") Difference
  | @as("exclusion") Exclusion
  | @as("hard-light") HardLight
  | @as("hue") Hue
  | @as("lighten") Lighten
  | @as("lighter") Lighter
  | @as("luminosity") Luminosity
  | @as("multiply") Multiply
  | @as("overlay") Overlay
  | @as("saturation") Saturation
  | @as("screen") Screen
  | @as("soft-light") SoftLight
  | @as("source-atop") SourceAtop
  | @as("source-in") SourceIn
  | @as("source-out") SourceOut
  | @as("source-over") SourceOver
  | @as("xor") Xor

type hdrMetadataType =
  | @as("smpteSt2086") SmpteSt2086
  | @as("smpteSt2094-10") SmpteSt209410
  | @as("smpteSt2094-40") SmpteSt209440

type idbCursorDirection =
  | @as("next") Next
  | @as("nextunique") Nextunique
  | @as("prev") Prev
  | @as("prevunique") Prevunique

type idbRequestReadyState =
  | @as("done") Done
  | @as("pending") Pending

type idbTransactionDurability =
  | @as("default") Default
  | @as("relaxed") Relaxed
  | @as("strict") Strict

type idbTransactionMode =
  | @as("readonly") Readonly
  | @as("readwrite") Readwrite
  | @as("versionchange") Versionchange

type imageOrientation =
  | @as("flipY") FlipY
  | @as("from-image") FromImage
  | @as("none") None

type imageSmoothingQuality =
  | @as("high") High
  | @as("low") Low
  | @as("medium") Medium

type keyFormat =
  | @as("jwk") Jwk
  | @as("pkcs8") Pkcs8
  | @as("raw") Raw
  | @as("spki") Spki

type keyType =
  | @as("private") Private
  | @as("public") Public
  | @as("secret") Secret

type keyUsage =
  | @as("decrypt") Decrypt
  | @as("deriveBits") DeriveBits
  | @as("deriveKey") DeriveKey
  | @as("encrypt") Encrypt
  | @as("sign") Sign
  | @as("unwrapKey") UnwrapKey
  | @as("verify") Verify
  | @as("wrapKey") WrapKey

type lockMode =
  | @as("exclusive") Exclusive
  | @as("shared") Shared

type mediaDecodingType =
  | @as("file") File
  | @as("media-source") MediaSource
  | @as("webrtc") Webrtc

type mediaEncodingType =
  | @as("record") Record
  | @as("webrtc") Webrtc

type notificationDirection =
  | @as("auto") Auto
  | @as("ltr") Ltr
  | @as("rtl") Rtl

type notificationPermission =
  | @as("default") Default
  | @as("denied") Denied
  | @as("granted") Granted

type offscreenRenderingContextId =
  | @as("2d") V2d
  | @as("bitmaprenderer") Bitmaprenderer
  | @as("webgl") Webgl
  | @as("webgl2") Webgl2
  | @as("webgpu") Webgpu

type permissionName =
  | @as("geolocation") Geolocation
  | @as("midi") Midi
  | @as("notifications") Notifications
  | @as("persistent-storage") PersistentStorage
  | @as("push") Push
  | @as("screen-wake-lock") ScreenWakeLock
  | @as("storage-access") StorageAccess

type permissionState =
  | @as("denied") Denied
  | @as("granted") Granted
  | @as("prompt") Prompt

type predefinedColorSpace =
  | @as("display-p3") DisplayP3
  | @as("srgb") Srgb

type premultiplyAlpha =
  | @as("default") Default
  | @as("none") None
  | @as("premultiply") Premultiply

type pushEncryptionKeyName =
  | @as("auth") Auth
  | @as("p256dh") P256dh

type readableStreamReaderMode = | @as("byob") Byob

type readableStreamType = | @as("bytes") Bytes

type referrerPolicy =
  | @as("no-referrer") NoReferrer
  | @as("no-referrer-when-downgrade") NoReferrerWhenDowngrade
  | @as("origin") Origin
  | @as("origin-when-cross-origin") OriginWhenCrossOrigin
  | @as("same-origin") SameOrigin
  | @as("strict-origin") StrictOrigin
  | @as("strict-origin-when-cross-origin") StrictOriginWhenCrossOrigin
  | @as("unsafe-url") UnsafeUrl

type requestCache =
  | @as("default") Default
  | @as("force-cache") ForceCache
  | @as("no-cache") NoCache
  | @as("no-store") NoStore
  | @as("only-if-cached") OnlyIfCached
  | @as("reload") Reload

type requestCredentials =
  | @as("include") Include
  | @as("omit") Omit
  | @as("same-origin") SameOrigin

type requestDestination =
  | @as("audio") Audio
  | @as("audioworklet") Audioworklet
  | @as("document") Document
  | @as("embed") Embed
  | @as("font") Font
  | @as("frame") Frame
  | @as("iframe") Iframe
  | @as("image") Image
  | @as("manifest") Manifest
  | @as("object") Object
  | @as("paintworklet") Paintworklet
  | @as("report") Report
  | @as("script") Script
  | @as("sharedworker") Sharedworker
  | @as("style") Style
  | @as("track") Track
  | @as("video") Video
  | @as("worker") Worker
  | @as("xslt") Xslt

type requestMode =
  | @as("cors") Cors
  | @as("navigate") Navigate
  | @as("no-cors") NoCors
  | @as("same-origin") SameOrigin

type requestPriority =
  | @as("auto") Auto
  | @as("high") High
  | @as("low") Low

type requestRedirect =
  | @as("error") Error
  | @as("follow") Follow
  | @as("manual") Manual

type resizeQuality =
  | @as("high") High
  | @as("low") Low
  | @as("medium") Medium
  | @as("pixelated") Pixelated

type responseType =
  | @as("basic") Basic
  | @as("cors") Cors
  | @as("default") Default
  | @as("error") Error
  | @as("opaque") Opaque
  | @as("opaqueredirect") Opaqueredirect

type securityPolicyViolationEventDisposition =
  | @as("enforce") Enforce
  | @as("report") Report

type serviceWorkerState =
  | @as("activated") Activated
  | @as("activating") Activating
  | @as("installed") Installed
  | @as("installing") Installing
  | @as("parsed") Parsed
  | @as("redundant") Redundant

type serviceWorkerUpdateViaCache =
  | @as("all") All
  | @as("imports") Imports
  | @as("none") None

type transferFunction =
  | @as("hlg") Hlg
  | @as("pq") Pq
  | @as("srgb") Srgb

type webGLPowerPreference =
  | @as("default") Default
  | @as("high-performance") HighPerformance
  | @as("low-power") LowPower

type webTransportCongestionControl =
  | @as("default") Default
  | @as("low-latency") LowLatency
  | @as("throughput") Throughput

type webTransportErrorSource =
  | @as("session") Session
  | @as("stream") Stream

type workerType =
  | @as("classic") Classic
  | @as("module") Module

type writeCommandType =
  | @as("seek") Seek
  | @as("truncate") Truncate
  | @as("write") Write

type eventPhase =
  | @as(0) NONE
  | @as(1) CAPTURING_PHASE
  | @as(2) AT_TARGET
  | @as(3) BUBBLING_PHASE

/**
An event which takes place in the DOM.
[See Event on MDN](https://developer.mozilla.org/docs/Web/API/Event)
*/
type event = {
  /**
    Returns the type of event, e.g. "click", "hashchange", or "submit".
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/type)
    */
  @as("type")
  type_: domString,
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
  eventPhase: eventPhase,
  /**
    Returns true or false depending on how event was initialized. True if event goes through its target's ancestors in reverse tree order, and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/bubbles)
    */
  bubbles: boolean,
  /**
    Returns true or false depending on how event was initialized. Its return value does not always carry meaning, but true can indicate that part of the operation during which event was dispatched, can be canceled by invoking the preventDefault() method.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/cancelable)
    */
  cancelable: boolean,
  /**
    Returns true if preventDefault() was invoked successfully to indicate cancelation, and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/defaultPrevented)
    */
  defaultPrevented: boolean,
  /**
    Returns true or false depending on how event was initialized. True if event invokes listeners past a ShadowRoot node that is the root of its target, and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/composed)
    */
  composed: boolean,
  /**
    Returns true if event was dispatched by the user agent, and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/isTrusted)
    */
  isTrusted: boolean,
  /**
    Returns the event's timestamp as the number of milliseconds measured relative to the time origin.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/timeStamp)
    */
  timeStamp: domHighResTimeStamp,
}
/**
EventTarget is a DOM interface implemented by objects that can receive events and may have listeners for them.
[See EventTarget on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget)
*/
type eventTarget = {}
