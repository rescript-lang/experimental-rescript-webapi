@@warning("-30")
/** Temporary, to be fixed */
type error = {}
type any
type arrayBufferView = {}
type domHighResTimeStamp
type usvString
type idbValidKey = unknown
type keyAlgorithm = unknown
type cssPerspectiveValue = unknown
type arrayBuffer = unknown
type mediaProvider = unknown
type messageEventSource = unknown
type webTransportCloseInfo = unknown
type lineAndPositionSetting = unknown
/* End temporary */

type alignSetting =
  | @as("center") Center
  | @as("end") End
  | @as("left") Left
  | @as("right") Right
  | @as("start") Start

type alphaOption =
  | @as("discard") Discard
  | @as("keep") Keep

type animationPlayState =
  | @as("finished") Finished
  | @as("idle") Idle
  | @as("paused") Paused
  | @as("running") Running

type animationReplaceState =
  | @as("active") Active
  | @as("persisted") Persisted
  | @as("removed") Removed

type appendMode =
  | @as("segments") Segments
  | @as("sequence") Sequence

type attestationConveyancePreference =
  | @as("direct") Direct
  | @as("enterprise") Enterprise
  | @as("indirect") Indirect
  | @as("none") None

type audioContextLatencyCategory =
  | @as("balanced") Balanced
  | @as("interactive") Interactive
  | @as("playback") Playback

type audioContextState =
  | @as("closed") Closed
  | @as("running") Running
  | @as("suspended") Suspended

type audioSampleFormat =
  | @as("f32") F32
  | @as("f32-planar") F32Planar
  | @as("s16") S16
  | @as("s16-planar") S16Planar
  | @as("s32") S32
  | @as("s32-planar") S32Planar
  | @as("u8") U8
  | @as("u8-planar") U8Planar

type authenticatorAttachment =
  | @as("cross-platform") CrossPlatform
  | @as("platform") Platform

type authenticatorTransport =
  | @as("ble") Ble
  | @as("hybrid") Hybrid
  | @as("internal") Internal
  | @as("nfc") Nfc
  | @as("usb") Usb

type autoFillAddressKind =
  | @as("billing") Billing
  | @as("shipping") Shipping

type autoFillBase =
  | @as("off") Off
  | @as("on") On

type autoFillContactField =
  | @as("email") Email
  | @as("tel") Tel
  | @as("tel-area-code") TelAreaCode
  | @as("tel-country-code") TelCountryCode
  | @as("tel-extension") TelExtension
  | @as("tel-local") TelLocal
  | @as("tel-local-prefix") TelLocalPrefix
  | @as("tel-local-suffix") TelLocalSuffix
  | @as("tel-national") TelNational

type autoFillContactKind =
  | @as("home") Home
  | @as("mobile") Mobile
  | @as("work") Work

type autoFillCredentialField = | @as("webauthn") Webauthn

type autoFillNormalField =
  | @as("additional-name") AdditionalName
  | @as("address-level1") AddressLevel1
  | @as("address-level2") AddressLevel2
  | @as("address-level3") AddressLevel3
  | @as("address-level4") AddressLevel4
  | @as("address-line1") AddressLine1
  | @as("address-line2") AddressLine2
  | @as("address-line3") AddressLine3
  | @as("bday-day") BdayDay
  | @as("bday-month") BdayMonth
  | @as("bday-year") BdayYear
  | @as("cc-csc") CcCsc
  | @as("cc-exp") CcExp
  | @as("cc-exp-month") CcExpMonth
  | @as("cc-exp-year") CcExpYear
  | @as("cc-family-name") CcFamilyName
  | @as("cc-given-name") CcGivenName
  | @as("cc-name") CcName
  | @as("cc-number") CcNumber
  | @as("cc-type") CcType
  | @as("country") Country
  | @as("country-name") CountryName
  | @as("current-password") CurrentPassword
  | @as("family-name") FamilyName
  | @as("given-name") GivenName
  | @as("honorific-prefix") HonorificPrefix
  | @as("honorific-suffix") HonorificSuffix
  | @as("name") Name
  | @as("new-password") NewPassword
  | @as("one-time-code") OneTimeCode
  | @as("organization") Organization
  | @as("postal-code") PostalCode
  | @as("street-address") StreetAddress
  | @as("transaction-amount") TransactionAmount
  | @as("transaction-currency") TransactionCurrency
  | @as("username") Username

type autoKeyword = | @as("auto") Auto

type automationRate =
  | @as("a-rate") ARate
  | @as("k-rate") KRate

type avcBitstreamFormat =
  | @as("annexb") Annexb
  | @as("avc") Avc

type binaryType =
  | @as("arraybuffer") Arraybuffer
  | @as("blob") Blob

type biquadFilterType =
  | @as("allpass") Allpass
  | @as("bandpass") Bandpass
  | @as("highpass") Highpass
  | @as("highshelf") Highshelf
  | @as("lowpass") Lowpass
  | @as("lowshelf") Lowshelf
  | @as("notch") Notch
  | @as("peaking") Peaking

type bitrateMode =
  | @as("constant") Constant
  | @as("variable") Variable

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

type canPlayTypeResult =
  | @as("maybe") Maybe
  | @as("probably") Probably

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

type channelCountMode =
  | @as("clamped-max") ClampedMax
  | @as("explicit") Explicit
  | @as("max") Max

type channelInterpretation =
  | @as("discrete") Discrete
  | @as("speakers") Speakers

type clientTypes =
  | @as("all") All
  | @as("sharedworker") Sharedworker
  | @as("window") Window
  | @as("worker") Worker

type codecState =
  | @as("closed") Closed
  | @as("configured") Configured
  | @as("unconfigured") Unconfigured

type colorGamut =
  | @as("p3") P3
  | @as("rec2020") Rec2020
  | @as("srgb") Srgb

type colorSpaceConversion =
  | @as("default") Default
  | @as("none") None

type compositeOperation =
  | @as("accumulate") Accumulate
  | @as("add") Add
  | @as("replace") Replace

type compositeOperationOrAuto =
  | @as("accumulate") Accumulate
  | @as("add") Add
  | @as("auto") Auto
  | @as("replace") Replace

type compressionFormat =
  | @as("deflate") Deflate
  | @as("deflate-raw") DeflateRaw
  | @as("gzip") Gzip

type credentialMediationRequirement =
  | @as("conditional") Conditional
  | @as("optional") Optional
  | @as("required") Required
  | @as("silent") Silent

type domParserSupportedType =
  | @as("application/xhtml+xml") Applicationxhtmlxml
  | @as("application/xml") Applicationxml
  | @as("image/svg+xml") Imagesvgxml
  | @as("text/html") Texthtml
  | @as("text/xml") Textxml

type directionSetting =
  | @as("lr") Lr
  | @as("rl") Rl

type displayCaptureSurfaceType =
  | @as("browser") Browser
  | @as("monitor") Monitor
  | @as("window") Window

type distanceModelType =
  | @as("exponential") Exponential
  | @as("inverse") Inverse
  | @as("linear") Linear

type documentReadyState =
  | @as("complete") Complete
  | @as("interactive") Interactive
  | @as("loading") Loading

type documentVisibilityState =
  | @as("hidden") Hidden
  | @as("visible") Visible

type encodedAudioChunkType =
  | @as("delta") Delta
  | @as("key") Key

type encodedVideoChunkType =
  | @as("delta") Delta
  | @as("key") Key

type endOfStreamError =
  | @as("decode") Decode
  | @as("network") Network

type endingType =
  | @as("native") Native
  | @as("transparent") Transparent

type fileSystemHandleKind =
  | @as("directory") Directory
  | @as("file") File

type fillMode =
  | @as("auto") Auto
  | @as("backwards") Backwards
  | @as("both") Both
  | @as("forwards") Forwards
  | @as("none") None

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

type fullscreenNavigationUI =
  | @as("auto") Auto
  | @as("hide") Hide
  | @as("show") Show

type gamepadHapticEffectType =
  | @as("dual-rumble") DualRumble
  | @as("trigger-rumble") TriggerRumble

type gamepadHapticsResult =
  | @as("complete") Complete
  | @as("preempted") Preempted

type gamepadMappingType =
  | @as("standard") Standard
  | @as("xr-standard") XrStandard

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

type hardwareAcceleration =
  | @as("no-preference") NoPreference
  | @as("prefer-hardware") PreferHardware
  | @as("prefer-software") PreferSoftware

type hdrMetadataType =
  | @as("smpteSt2086") SmpteSt2086
  | @as("smpteSt2094-10") SmpteSt209410
  | @as("smpteSt2094-40") SmpteSt209440

type highlightType =
  | @as("grammar-error") GrammarError
  | @as("highlight") Highlight
  | @as("spelling-error") SpellingError

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

type insertPosition =
  | @as("afterbegin") Afterbegin
  | @as("afterend") Afterend
  | @as("beforebegin") Beforebegin
  | @as("beforeend") Beforeend

type iterationCompositeOperation =
  | @as("accumulate") Accumulate
  | @as("replace") Replace

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

type latencyMode =
  | @as("quality") Quality
  | @as("realtime") Realtime

type lineAlignSetting =
  | @as("center") Center
  | @as("end") End
  | @as("start") Start

type lockMode =
  | @as("exclusive") Exclusive
  | @as("shared") Shared

type midiPortConnectionState =
  | @as("closed") Closed
  | @as("open") Open
  | @as("pending") Pending

type midiPortDeviceState =
  | @as("connected") Connected
  | @as("disconnected") Disconnected

type midiPortType =
  | @as("input") Input
  | @as("output") Output

type mediaDecodingType =
  | @as("file") File
  | @as("media-source") MediaSource
  | @as("webrtc") Webrtc

type mediaDeviceKind =
  | @as("audioinput") Audioinput
  | @as("audiooutput") Audiooutput
  | @as("videoinput") Videoinput

type mediaEncodingType =
  | @as("record") Record
  | @as("webrtc") Webrtc

type mediaKeyMessageType =
  | @as("individualization-request") IndividualizationRequest
  | @as("license-release") LicenseRelease
  | @as("license-renewal") LicenseRenewal
  | @as("license-request") LicenseRequest

type mediaKeySessionClosedReason =
  | @as("closed-by-application") ClosedByApplication
  | @as("hardware-context-reset") HardwareContextReset
  | @as("internal-error") InternalError
  | @as("release-acknowledged") ReleaseAcknowledged
  | @as("resource-evicted") ResourceEvicted

type mediaKeySessionType =
  | @as("persistent-license") PersistentLicense
  | @as("temporary") Temporary

type mediaKeyStatus =
  | @as("expired") Expired
  | @as("internal-error") InternalError
  | @as("output-downscaled") OutputDownscaled
  | @as("output-restricted") OutputRestricted
  | @as("released") Released
  | @as("status-pending") StatusPending
  | @as("usable") Usable
  | @as("usable-in-future") UsableInFuture

type mediaKeysRequirement =
  | @as("not-allowed") NotAllowed
  | @as("optional") Optional
  | @as("required") Required

type mediaSessionAction =
  | @as("nexttrack") Nexttrack
  | @as("pause") Pause
  | @as("play") Play
  | @as("previoustrack") Previoustrack
  | @as("seekbackward") Seekbackward
  | @as("seekforward") Seekforward
  | @as("seekto") Seekto
  | @as("skipad") Skipad
  | @as("stop") Stop

type mediaSessionPlaybackState =
  | @as("none") None
  | @as("paused") Paused
  | @as("playing") Playing

type mediaStreamTrackState =
  | @as("ended") Ended
  | @as("live") Live

type navigationTimingType =
  | @as("back_forward") Back_forward
  | @as("navigate") Navigate
  | @as("prerender") Prerender
  | @as("reload") Reload

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

type opusBitstreamFormat =
  | @as("ogg") Ogg
  | @as("opus") Opus

type orientationType =
  | @as("landscape-primary") LandscapePrimary
  | @as("landscape-secondary") LandscapeSecondary
  | @as("portrait-primary") PortraitPrimary
  | @as("portrait-secondary") PortraitSecondary

type oscillatorType =
  | @as("custom") Custom
  | @as("sawtooth") Sawtooth
  | @as("sine") Sine
  | @as("square") Square
  | @as("triangle") Triangle

type overSampleType =
  | @as("2x") V2x
  | @as("4x") V4x
  | @as("none") None

type panningModelType =
  | HRTF
  | @as("equalpower") Equalpower

type paymentComplete =
  | @as("fail") Fail
  | @as("success") Success
  | @as("unknown") Unknown

type paymentShippingType =
  | @as("delivery") Delivery
  | @as("pickup") Pickup
  | @as("shipping") Shipping

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

type playbackDirection =
  | @as("alternate") Alternate
  | @as("alternate-reverse") AlternateReverse
  | @as("normal") Normal
  | @as("reverse") Reverse

type positionAlignSetting =
  | @as("auto") Auto
  | @as("center") Center
  | @as("line-left") LineLeft
  | @as("line-right") LineRight

type predefinedColorSpace =
  | @as("display-p3") DisplayP3
  | @as("srgb") Srgb

type premultiplyAlpha =
  | @as("default") Default
  | @as("none") None
  | @as("premultiply") Premultiply

type presentationStyle =
  | @as("attachment") Attachment
  | @as("inline") Inline
  | @as("unspecified") Unspecified

type publicKeyCredentialType = | @as("public-key") PublicKey

type pushEncryptionKeyName =
  | @as("auth") Auth
  | @as("p256dh") P256dh

type rtcBundlePolicy =
  | @as("balanced") Balanced
  | @as("max-bundle") MaxBundle
  | @as("max-compat") MaxCompat

type rtcDataChannelState =
  | @as("closed") Closed
  | @as("closing") Closing
  | @as("connecting") Connecting
  | @as("open") Open

type rtcDegradationPreference =
  | @as("balanced") Balanced
  | @as("maintain-framerate") MaintainFramerate
  | @as("maintain-resolution") MaintainResolution

type rtcDtlsTransportState =
  | @as("closed") Closed
  | @as("connected") Connected
  | @as("connecting") Connecting
  | @as("failed") Failed
  | @as("new") New

type rtcEncodedVideoFrameType =
  | @as("delta") Delta
  | @as("empty") Empty
  | @as("key") Key

type rtcErrorDetailType =
  | @as("data-channel-failure") DataChannelFailure
  | @as("dtls-failure") DtlsFailure
  | @as("fingerprint-failure") FingerprintFailure
  | @as("hardware-encoder-error") HardwareEncoderError
  | @as("hardware-encoder-not-available") HardwareEncoderNotAvailable
  | @as("sctp-failure") SctpFailure
  | @as("sdp-syntax-error") SdpSyntaxError

type rtcIceCandidateType =
  | @as("host") Host
  | @as("prflx") Prflx
  | @as("relay") Relay
  | @as("srflx") Srflx

type rtcIceComponent =
  | @as("rtcp") Rtcp
  | @as("rtp") Rtp

type rtcIceConnectionState =
  | @as("checking") Checking
  | @as("closed") Closed
  | @as("completed") Completed
  | @as("connected") Connected
  | @as("disconnected") Disconnected
  | @as("failed") Failed
  | @as("new") New

type rtcIceGathererState =
  | @as("complete") Complete
  | @as("gathering") Gathering
  | @as("new") New

type rtcIceGatheringState =
  | @as("complete") Complete
  | @as("gathering") Gathering
  | @as("new") New

type rtcIceProtocol =
  | @as("tcp") Tcp
  | @as("udp") Udp

type rtcIceTcpCandidateType =
  | @as("active") Active
  | @as("passive") Passive
  | @as("so") So

type rtcIceTransportPolicy =
  | @as("all") All
  | @as("relay") Relay

type rtcIceTransportState =
  | @as("checking") Checking
  | @as("closed") Closed
  | @as("completed") Completed
  | @as("connected") Connected
  | @as("disconnected") Disconnected
  | @as("failed") Failed
  | @as("new") New

type rtcPeerConnectionState =
  | @as("closed") Closed
  | @as("connected") Connected
  | @as("connecting") Connecting
  | @as("disconnected") Disconnected
  | @as("failed") Failed
  | @as("new") New

type rtcPriorityType =
  | @as("high") High
  | @as("low") Low
  | @as("medium") Medium
  | @as("very-low") VeryLow

type rtcRtcpMuxPolicy = | @as("require") Require

type rtcRtpTransceiverDirection =
  | @as("inactive") Inactive
  | @as("recvonly") Recvonly
  | @as("sendonly") Sendonly
  | @as("sendrecv") Sendrecv
  | @as("stopped") Stopped

type rtcSctpTransportState =
  | @as("closed") Closed
  | @as("connected") Connected
  | @as("connecting") Connecting

type rtcSdpType =
  | @as("answer") Answer
  | @as("offer") Offer
  | @as("pranswer") Pranswer
  | @as("rollback") Rollback

type rtcSignalingState =
  | @as("closed") Closed
  | @as("have-local-offer") HaveLocalOffer
  | @as("have-local-pranswer") HaveLocalPranswer
  | @as("have-remote-offer") HaveRemoteOffer
  | @as("have-remote-pranswer") HaveRemotePranswer
  | @as("stable") Stable

type rtcStatsIceCandidatePairState =
  | @as("failed") Failed
  | @as("frozen") Frozen
  | @as("in-progress") InProgress
  | @as("inprogress") Inprogress
  | @as("succeeded") Succeeded
  | @as("waiting") Waiting

type rtcStatsType =
  | @as("candidate-pair") CandidatePair
  | @as("certificate") Certificate
  | @as("codec") Codec
  | @as("data-channel") DataChannel
  | @as("inbound-rtp") InboundRtp
  | @as("local-candidate") LocalCandidate
  | @as("media-playout") MediaPlayout
  | @as("media-source") MediaSource
  | @as("outbound-rtp") OutboundRtp
  | @as("peer-connection") PeerConnection
  | @as("remote-candidate") RemoteCandidate
  | @as("remote-inbound-rtp") RemoteInboundRtp
  | @as("remote-outbound-rtp") RemoteOutboundRtp
  | @as("transport") Transport

type readableStreamReaderMode = | @as("byob") Byob

type readableStreamType = | @as("bytes") Bytes

type readyState =
  | @as("closed") Closed
  | @as("ended") Ended
  | @as("open") Open

type recordingState =
  | @as("inactive") Inactive
  | @as("paused") Paused
  | @as("recording") Recording

type referrerPolicy =
  | @as("no-referrer") NoReferrer
  | @as("no-referrer-when-downgrade") NoReferrerWhenDowngrade
  | @as("origin") Origin
  | @as("origin-when-cross-origin") OriginWhenCrossOrigin
  | @as("same-origin") SameOrigin
  | @as("strict-origin") StrictOrigin
  | @as("strict-origin-when-cross-origin") StrictOriginWhenCrossOrigin
  | @as("unsafe-url") UnsafeUrl

type remotePlaybackState =
  | @as("connected") Connected
  | @as("connecting") Connecting
  | @as("disconnected") Disconnected

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

type residentKeyRequirement =
  | @as("discouraged") Discouraged
  | @as("preferred") Preferred
  | @as("required") Required

type resizeObserverBoxOptions =
  | @as("border-box") BorderBox
  | @as("content-box") ContentBox
  | @as("device-pixel-content-box") DevicePixelContentBox

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

type scrollBehavior =
  | @as("auto") Auto
  | @as("instant") Instant
  | @as("smooth") Smooth

type scrollLogicalPosition =
  | @as("center") Center
  | @as("end") End
  | @as("nearest") Nearest
  | @as("start") Start

type scrollRestoration =
  | @as("auto") Auto
  | @as("manual") Manual

type scrollSetting = | @as("up") Up

type securityPolicyViolationEventDisposition =
  | @as("enforce") Enforce
  | @as("report") Report

type selectionMode =
  | @as("end") End
  | @as("preserve") Preserve
  | @as("select") Select
  | @as("start") Start

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

type shadowRootMode =
  | @as("closed") Closed
  | @as("open") Open

type slotAssignmentMode =
  | @as("manual") Manual
  | @as("named") Named

type speechSynthesisErrorCode =
  | @as("audio-busy") AudioBusy
  | @as("audio-hardware") AudioHardware
  | @as("canceled") Canceled
  | @as("interrupted") Interrupted
  | @as("invalid-argument") InvalidArgument
  | @as("language-unavailable") LanguageUnavailable
  | @as("network") Network
  | @as("not-allowed") NotAllowed
  | @as("synthesis-failed") SynthesisFailed
  | @as("synthesis-unavailable") SynthesisUnavailable
  | @as("text-too-long") TextTooLong
  | @as("voice-unavailable") VoiceUnavailable

type textTrackKind =
  | @as("captions") Captions
  | @as("chapters") Chapters
  | @as("descriptions") Descriptions
  | @as("metadata") Metadata
  | @as("subtitles") Subtitles

type textTrackMode =
  | @as("disabled") Disabled
  | @as("hidden") Hidden
  | @as("showing") Showing

type touchType =
  | @as("direct") Direct
  | @as("stylus") Stylus

type transferFunction =
  | @as("hlg") Hlg
  | @as("pq") Pq
  | @as("srgb") Srgb

type userVerificationRequirement =
  | @as("discouraged") Discouraged
  | @as("preferred") Preferred
  | @as("required") Required

type videoColorPrimaries =
  | @as("bt470bg") Bt470bg
  | @as("bt709") Bt709
  | @as("smpte170m") Smpte170m

type videoEncoderBitrateMode =
  | @as("constant") Constant
  | @as("quantizer") Quantizer
  | @as("variable") Variable

type videoFacingModeEnum =
  | @as("environment") Environment
  | @as("left") Left
  | @as("right") Right
  | @as("user") User

type videoMatrixCoefficients =
  | @as("bt470bg") Bt470bg
  | @as("bt709") Bt709
  | @as("rgb") Rgb
  | @as("smpte170m") Smpte170m

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

type videoTransferCharacteristics =
  | @as("bt709") Bt709
  | @as("iec61966-2-1") Iec6196621
  | @as("smpte170m") Smpte170m

type wakeLockType = | @as("screen") Screen

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

type xmlHttpRequestResponseType =
  | @as("arraybuffer") Arraybuffer
  | @as("blob") Blob
  | @as("document") Document
  | @as("json") Json
  | @as("text") Text

type domString =
  | @as("abort") Abort
  | @as("auxclick") Auxclick
  | @as("beforeinput") Beforeinput
  | @as("beforetoggle") Beforetoggle
  | @as("blur") Blur
  | @as("cancel") Cancel
  | @as("canplay") Canplay
  | @as("canplaythrough") Canplaythrough
  | @as("change") Change
  | @as("click") Click
  | @as("close") Close
  | @as("contextlost") Contextlost
  | @as("contextmenu") Contextmenu
  | @as("contextrestored") Contextrestored
  | @as("copy") Copy
  | @as("cuechange") Cuechange
  | @as("cut") Cut
  | @as("dblclick") Dblclick
  | @as("drag") Drag
  | @as("dragend") Dragend
  | @as("dragenter") Dragenter
  | @as("dragleave") Dragleave
  | @as("dragover") Dragover
  | @as("dragstart") Dragstart
  | @as("drop") Drop
  | @as("durationchange") Durationchange
  | @as("emptied") Emptied
  | @as("ended") Ended
  | @as("error") Error
  | @as("focus") Focus
  | @as("formdata") Formdata
  | @as("input") Input
  | @as("invalid") Invalid
  | @as("keydown") Keydown
  | @as("keypress") Keypress
  | @as("keyup") Keyup
  | @as("load") Load
  | @as("loadeddata") Loadeddata
  | @as("loadedmetadata") Loadedmetadata
  | @as("loadstart") Loadstart
  | @as("mousedown") Mousedown
  | @as("mouseenter") Mouseenter
  | @as("mouseleave") Mouseleave
  | @as("mousemove") Mousemove
  | @as("mouseout") Mouseout
  | @as("mouseover") Mouseover
  | @as("mouseup") Mouseup
  | @as("paste") Paste
  | @as("pause") Pause
  | @as("play") Play
  | @as("playing") Playing
  | @as("progress") Progress
  | @as("ratechange") Ratechange
  | @as("reset") Reset
  | @as("resize") Resize
  | @as("scroll") Scroll
  | @as("scrollend") Scrollend
  | @as("securitypolicyviolation") Securitypolicyviolation
  | @as("seeked") Seeked
  | @as("seeking") Seeking
  | @as("select") Select
  | @as("slotchange") Slotchange
  | @as("stalled") Stalled
  | @as("submit") Submit
  | @as("suspend") Suspend
  | @as("timeupdate") Timeupdate
  | @as("toggle") Toggle
  | @as("volumechange") Volumechange
  | @as("waiting") Waiting
  | @as("webkitanimationend") Webkitanimationend
  | @as("webkitanimationiteration") Webkitanimationiteration
  | @as("webkitanimationstart") Webkitanimationstart
  | @as("webkittransitionend") Webkittransitionend
  | @as("wheel") Wheel
  | @as("animationstart") Animationstart
  | @as("animationiteration") Animationiteration
  | @as("animationend") Animationend
  | @as("animationcancel") Animationcancel
  | @as("transitionrun") Transitionrun
  | @as("transitionstart") Transitionstart
  | @as("transitionend") Transitionend
  | @as("transitioncancel") Transitioncancel
  | @as("pointerover") Pointerover
  | @as("pointerenter") Pointerenter
  | @as("pointerdown") Pointerdown
  | @as("pointermove") Pointermove
  | @as("pointerup") Pointerup
  | @as("pointercancel") Pointercancel
  | @as("pointerout") Pointerout
  | @as("pointerleave") Pointerleave
  | @as("gotpointercapture") Gotpointercapture
  | @as("lostpointercapture") Lostpointercapture
  | @as("selectstart") Selectstart
  | @as("selectionchange") Selectionchange
  | @as("touchstart") Touchstart
  | @as("touchend") Touchend
  | @as("touchmove") Touchmove
  | @as("touchcancel") Touchcancel

type eventPhase =
  | @as(0) NONE
  | @as(1) CAPTURING_PHASE
  | @as(2) AT_TARGET
  | @as(3) BUBBLING_PHASE

type queuingStrategy<'t> = {}
type mediaImage = {
  src: string,
  sizes?: string,
  @as("type") type_?: string,
}
/**
EventTarget is a DOM interface implemented by objects that can receive events and may have listeners for them.
[See EventTarget on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget)
*/
type eventTarget = {}

/**
A generic interface for representing an audio processing module. Examples include:
[See AudioNode on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode)
*/
type rec audioNode = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/context)
    */
  context: baseAudioContext,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/numberOfInputs)
    */
  numberOfInputs: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/numberOfOutputs)
    */
  numberOfOutputs: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelCount)
    */
  mutable channelCount: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelCountMode)
    */
  mutable channelCountMode: channelCountMode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelInterpretation)
    */
  mutable channelInterpretation: channelInterpretation,
}

/**
AudioDestinationNode has no output (as it is the output, no more AudioNode can be linked after it in the audio graph) and one input. The number of channels in the input must be between 0 and the maxChannelCount value or an exception is raised.
[See AudioDestinationNode on MDN](https://developer.mozilla.org/docs/Web/API/AudioDestinationNode)
*/
and audioDestinationNode = {
  // Base properties from AudioNode
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/context)
    */
  context: baseAudioContext,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/numberOfInputs)
    */
  numberOfInputs: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/numberOfOutputs)
    */
  numberOfOutputs: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelCount)
    */
  mutable channelCount: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelCountMode)
    */
  mutable channelCountMode: channelCountMode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/channelInterpretation)
    */
  mutable channelInterpretation: channelInterpretation,
  // End base properties from AudioNode

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioDestinationNode/maxChannelCount)
    */
  maxChannelCount: any,
}

/**
[See BaseAudioContext on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext)
*/
and baseAudioContext = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/destination)
    */
  destination: audioDestinationNode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/sampleRate)
    */
  sampleRate: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/currentTime)
    */
  currentTime: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/listener)
    */
  listener: audioListener,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/state)
    */
  state: audioContextState,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/BaseAudioContext/audioWorklet)
    */
  audioWorklet: audioWorklet,
}

/**
The position and orientation of the unique person listening to the audio scene, and is used in audio spatialization. All PannerNodes spatialize in relation to the AudioListener stored in the BaseAudioContext.listener attribute.
[See AudioListener on MDN](https://developer.mozilla.org/docs/Web/API/AudioListener)
*/
and audioListener = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioListener/positionX)
    */
  positionX: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioListener/positionY)
    */
  positionY: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioListener/positionZ)
    */
  positionZ: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioListener/forwardX)
    */
  forwardX: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioListener/forwardY)
    */
  forwardY: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioListener/forwardZ)
    */
  forwardZ: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioListener/upX)
    */
  upX: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioListener/upY)
    */
  upY: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioListener/upZ)
    */
  upZ: audioParam,
}

/**
[See AudioWorklet on MDN](https://developer.mozilla.org/docs/Web/API/AudioWorklet)
*/
and audioWorklet = {}

/**
The Web Audio API's AudioParam interface represents an audio-related parameter, usually a parameter of an AudioNode (such as GainNode.gain).
[See AudioParam on MDN](https://developer.mozilla.org/docs/Web/API/AudioParam)
*/
and audioParam = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioParam/value)
    */
  mutable value: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioParam/defaultValue)
    */
  defaultValue: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioParam/minValue)
    */
  minValue: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioParam/maxValue)
    */
  maxValue: float,
}

/**
[See NavigationPreloadManager on MDN](https://developer.mozilla.org/docs/Web/API/NavigationPreloadManager)
*/
type navigationPreloadManager = {}

/**
This Push API interface provides a way to receive notifications from third-party servers as well as request URLs for push notifications.
[See PushManager on MDN](https://developer.mozilla.org/docs/Web/API/PushManager)
*/
type pushManager = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PushManager/supportedContentEncodings_static)
    */
  supportedContentEncodings: array<domString>,
}

/**
This ServiceWorker API interface represents the service worker registration. You register a service worker to control one or more pages that share the same origin.
[See ServiceWorkerRegistration on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerRegistration)
*/
type rec serviceWorkerRegistration = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerRegistration/installing)
    */
  installing: Null.t<serviceWorker>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerRegistration/waiting)
    */
  waiting: Null.t<serviceWorker>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerRegistration/active)
    */
  active: Null.t<serviceWorker>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerRegistration/navigationPreload)
    */
  navigationPreload: navigationPreloadManager,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerRegistration/scope)
    */
  scope: usvString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerRegistration/updateViaCache)
    */
  updateViaCache: serviceWorkerUpdateViaCache,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerRegistration/pushManager)
    */
  pushManager: pushManager,
}

/**
This ServiceWorker API interface provides a reference to a service worker. Multiple browsing contexts (e.g. pages, workers, etc.) can be associated with the same service worker, each through a unique ServiceWorker object.
[See ServiceWorker on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorker)
*/
and serviceWorker = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorker/scriptURL)
    */
  scriptURL: usvString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorker/state)
    */
  state: serviceWorkerState,
}

/**
The ServiceWorkerContainer interface of the ServiceWorker API provides an object representing the service worker as an overall unit in the network ecosystem, including facilities to register, unregister and update service workers, and access the state of service workers and their registrations.
[See ServiceWorkerContainer on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerContainer)
*/
and serviceWorkerContainer = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerContainer/controller)
    */
  controller: Null.t<serviceWorker>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerContainer/ready)
    */
  ready: Promise.t<serviceWorkerRegistration>,
}

/**
[See FileSystemEntry on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemEntry)
*/
type rec fileSystemEntry = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemEntry/isFile)
    */
  isFile: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemEntry/isDirectory)
    */
  isDirectory: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemEntry/name)
    */
  name: usvString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemEntry/fullPath)
    */
  fullPath: usvString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemEntry/filesystem)
    */
  filesystem: fileSystem,
}

/**
[See FileSystemDirectoryEntry on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryEntry)
*/
and fileSystemDirectoryEntry = {
  // Base properties from FileSystemEntry
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemEntry/isFile)
    */
  isFile: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemEntry/isDirectory)
    */
  isDirectory: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemEntry/name)
    */
  name: usvString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemEntry/fullPath)
    */
  fullPath: usvString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemEntry/filesystem)
    */
  filesystem: fileSystem,
  // End base properties from FileSystemEntry
}

/**
[See FileSystem on MDN](https://developer.mozilla.org/docs/Web/API/FileSystem)
*/
and fileSystem = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystem/name)
    */
  name: usvString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystem/root)
    */
  root: fileSystemDirectoryEntry,
}

/**
A set of space-separated tokens. Such a set is returned by Element.classList, HTMLLinkElement.relList, HTMLAnchorElement.relList, HTMLAreaElement.relList, HTMLIframeElement.sandbox, or HTMLOutputElement.htmlFor. It is indexed beginning with 0 as with JavaScript Array objects. DOMTokenList is always case-sensitive.
[See DOMTokenList on MDN](https://developer.mozilla.org/docs/Web/API/DOMTokenList)
*/
type domTokenList = {
  /**
    Returns the number of tokens.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMTokenList/length)
    */
  length: any,
  /**
    Returns the associated set as string.

Can be set, to change the associated attribute.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMTokenList/value)
    */
  mutable value: domString,
}

/**
A collection of Attr objects. Objects inside a NamedNodeMap are not in any particular order, unlike NodeList, although they may be accessed by an index as in an array.
[See NamedNodeMap on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap)
*/
type namedNodeMap = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/length)
    */
  length: any,
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
  length: any,
}

/**
The location (URL) of the object it is linked to. Changes done on it are reflected on the object it relates to. Both the Document and Window interface have such a linked Location, accessible via Document.location and Window.location respectively.
[See Location on MDN](https://developer.mozilla.org/docs/Web/API/Location)
*/
type location = {
  /**
    Returns the Location object's URL.

Can be set, to navigate to the given URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/href)
    */
  mutable href: usvString,
  /**
    Returns the Location object's URL's origin.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/origin)
    */
  origin: usvString,
  /**
    Returns the Location object's URL's scheme.

Can be set, to navigate to the same URL with a changed scheme.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/protocol)
    */
  mutable protocol: usvString,
  /**
    Returns the Location object's URL's host and port (if different from the default port for the scheme).

Can be set, to navigate to the same URL with a changed host and port.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/host)
    */
  mutable host: usvString,
  /**
    Returns the Location object's URL's host.

Can be set, to navigate to the same URL with a changed host.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/hostname)
    */
  mutable hostname: usvString,
  /**
    Returns the Location object's URL's port.

Can be set, to navigate to the same URL with a changed port.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/port)
    */
  mutable port: usvString,
  /**
    Returns the Location object's URL's path.

Can be set, to navigate to the same URL with a changed path.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/pathname)
    */
  mutable pathname: usvString,
  /**
    Returns the Location object's URL's query (includes leading "?" if non-empty).

Can be set, to navigate to the same URL with a changed query (ignores leading "?").
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/search)
    */
  mutable search: usvString,
  /**
    Returns the Location object's URL's fragment (includes leading "#" if non-empty).

Can be set, to navigate to the same URL with a changed fragment (ignores leading "#").
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/hash)
    */
  mutable hash: usvString,
  /**
    Returns a DOMStringList object listing the origins of the ancestor browsing contexts, from the parent browsing context to the top-level browsing context.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/ancestorOrigins)
    */
  ancestorOrigins: domStringList,
}

/**
[See FragmentDirective on MDN](https://developer.mozilla.org/docs/Web/API/FragmentDirective)
*/
type fragmentDirective = {}

/**
Allows manipulation of the browser session history, that is the pages visited in the tab or frame that the current page is loaded in.
[See History on MDN](https://developer.mozilla.org/docs/Web/API/History)
*/
type history = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/History/length)
    */
  length: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/History/scrollRestoration)
    */
  mutable scrollRestoration: scrollRestoration,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/History/state)
    */
  state: any,
}

/**
[See CustomElementRegistry on MDN](https://developer.mozilla.org/docs/Web/API/CustomElementRegistry)
*/
type customElementRegistry = {}

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
[See Clipboard on MDN](https://developer.mozilla.org/docs/Web/API/Clipboard)
*/
type clipboard = {
  ...eventTarget,
}

/**
[See CredentialsContainer on MDN](https://developer.mozilla.org/docs/Web/API/CredentialsContainer)
*/
type credentialsContainer = {}

/**
An object able to programmatically obtain the position of the device. It gives Web content access to the location of the device. This allows a Web site or app to offer customized results based on the user's location.
[See Geolocation on MDN](https://developer.mozilla.org/docs/Web/API/Geolocation)
*/
type geolocation = {}

/**
[See MediaCapabilities on MDN](https://developer.mozilla.org/docs/Web/API/MediaCapabilities)
*/
type mediaCapabilities = {}

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
Provides access to connected media input devices like cameras and microphones, as well as screen sharing. In essence, it lets you obtain access to any hardware source of media data.
[See MediaDevices on MDN](https://developer.mozilla.org/docs/Web/API/MediaDevices)
*/
type mediaDevices = {
  ...eventTarget,
}

/**
[See MediaMetadata on MDN](https://developer.mozilla.org/docs/Web/API/MediaMetadata)
*/
type mediaMetadata = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaMetadata/title)
    */
  mutable title: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaMetadata/artist)
    */
  mutable artist: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaMetadata/album)
    */
  mutable album: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaMetadata/artwork)
    */
  mutable artwork: array<mediaImage>,
}

/**
[See MediaSession on MDN](https://developer.mozilla.org/docs/Web/API/MediaSession)
*/
type mediaSession = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaSession/metadata)
    */
  mutable metadata: Null.t<mediaMetadata>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaSession/playbackState)
    */
  mutable playbackState: mediaSessionPlaybackState,
}

/**
[See Permissions on MDN](https://developer.mozilla.org/docs/Web/API/Permissions)
*/
type permissions = {}

/**
[See WakeLock on MDN](https://developer.mozilla.org/docs/Web/API/WakeLock)
*/
type wakeLock = {}

/**
The state and the identity of the user agent. It allows scripts to query it and to register themselves to carry on some activities.
[See Navigator on MDN](https://developer.mozilla.org/docs/Web/API/Navigator)
*/
type navigator = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/clipboard)
    */
  clipboard: clipboard,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/credentials)
    */
  credentials: credentialsContainer,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/geolocation)
    */
  geolocation: geolocation,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/userActivation)
    */
  userActivation: userActivation,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/mediaCapabilities)
    */
  mediaCapabilities: mediaCapabilities,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/mediaDevices)
    */
  mediaDevices: mediaDevices,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/mediaSession)
    */
  mediaSession: mediaSession,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/permissions)
    */
  permissions: permissions,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/maxTouchPoints)
    */
  maxTouchPoints: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/wakeLock)
    */
  wakeLock: wakeLock,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/serviceWorker)
    */
  serviceWorker: serviceWorkerContainer,
}

/**
[See ScreenOrientation on MDN](https://developer.mozilla.org/docs/Web/API/ScreenOrientation)
*/
type screenOrientation = {
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
  colorDepth: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Screen/pixelDepth)
    */
  pixelDepth: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Screen/orientation)
    */
  orientation: screenOrientation,
}

/**
[See VisualViewport on MDN](https://developer.mozilla.org/docs/Web/API/VisualViewport)
*/
type visualViewport = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VisualViewport/offsetLeft)
    */
  offsetLeft: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VisualViewport/offsetTop)
    */
  offsetTop: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VisualViewport/pageLeft)
    */
  pageLeft: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VisualViewport/pageTop)
    */
  pageTop: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VisualViewport/width)
    */
  width: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VisualViewport/height)
    */
  height: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VisualViewport/scale)
    */
  scale: float,
}

/**
This Web Speech API interface is the controller interface for the speech service; this can be used to retrieve information about the synthesis voices available on the device, start and pause speech, and other commands besides.
[See SpeechSynthesis on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesis)
*/
type speechSynthesis = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesis/pending)
    */
  pending: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesis/speaking)
    */
  speaking: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesis/paused)
    */
  paused: bool,
}

/**
An abnormal event (called an exception) which occurs as a result of calling a method or accessing a property of a web API.
[See DOMException on MDN](https://developer.mozilla.org/docs/Web/API/DOMException)
*/
type domException = {
  ...error,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMException/name)
    */
  name: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMException/message)
    */
  message: domString,
}

/**
This IndexedDB API interface provides a connection to a database; you can use an IDBDatabase object to open a transaction on your database then create, manipulate, and delete objects (data) in that database. The interface provides the only way to get and manage versions of the database.
[See IDBDatabase on MDN](https://developer.mozilla.org/docs/Web/API/IDBDatabase)
*/
type idbDatabase = {
  ...eventTarget,
  /**
    Returns the name of the database.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBDatabase/name)
    */
  name: domString,
  /**
    Returns the version of the database.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBDatabase/version)
    */
  version: int,
  /**
    Returns a list of the names of object stores in the database.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBDatabase/objectStoreNames)
    */
  objectStoreNames: domStringList,
}

/**
[See IDBTransaction on MDN](https://developer.mozilla.org/docs/Web/API/IDBTransaction)
*/
type idbTransaction = {
  ...eventTarget,
  /**
    Returns a list of the names of object stores in the transaction's scope. For an upgrade transaction this is all object stores in the database.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBTransaction/objectStoreNames)
    */
  objectStoreNames: domStringList,
  /**
    Returns the mode the transaction was created with ("readonly" or "readwrite"), or "versionchange" for an upgrade transaction.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBTransaction/mode)
    */
  mode: idbTransactionMode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBTransaction/durability)
    */
  durability: idbTransactionDurability,
  /**
    Returns the transaction's connection.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBTransaction/db)
    */
  db: idbDatabase,
  /**
    If the transaction was aborted, returns the error (a DOMException) providing the reason.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBTransaction/error)
    */
  error: Null.t<domException>,
}

/**
The request object does not initially contain any information about the result of the operation, but once information becomes available, an event is fired on the request, and the information becomes available through the properties of the IDBRequest instance.
[See IDBRequest on MDN](https://developer.mozilla.org/docs/Web/API/IDBRequest)
*/
type idbRequest<'t> = {
  ...eventTarget,
  /**
    When a request is completed, returns the result, or undefined if the request failed. Throws a "InvalidStateError" DOMException if the request is still pending.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBRequest/result)
    */
  result: 't,
  /**
    When a request is completed, returns the error (a DOMException), or null if the request succeeded. Throws a "InvalidStateError" DOMException if the request is still pending.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBRequest/error)
    */
  error: Null.t<domException>,
  /**
    Returns the IDBObjectStore, IDBIndex, or IDBCursor the request was made against, or null if is was an open request.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBRequest/source)
    */
  source: unknown,
  /**
    Returns the IDBTransaction the request was made within. If this as an open request, then it returns an upgrade transaction while it is running, or null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBRequest/transaction)
    */
  transaction: Null.t<idbTransaction>,
  /**
    Returns "pending" until a request is complete, then returns "done".
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBRequest/readyState)
    */
  readyState: idbRequestReadyState,
}

/**
This IndexedDB API interface represents a cursor for traversing or iterating over multiple records in a database.
[See IDBCursor on MDN](https://developer.mozilla.org/docs/Web/API/IDBCursor)
*/
type idbCursor = {
  /**
    Returns the IDBObjectStore or IDBIndex the cursor was opened from.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBCursor/source)
    */
  source: unknown,
  /**
    Returns the direction ("next", "nextunique", "prev" or "prevunique") of the cursor.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBCursor/direction)
    */
  direction: idbCursorDirection,
  /**
    Returns the key of the cursor. Throws a "InvalidStateError" DOMException if the cursor is advancing or is finished.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBCursor/key)
    */
  key: idbValidKey,
  /**
    Returns the effective key of the cursor. Throws a "InvalidStateError" DOMException if the cursor is advancing or is finished.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBCursor/primaryKey)
    */
  primaryKey: idbValidKey,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBCursor/request)
    */
  request: idbRequest<unit>,
}

/**
This Web Crypto API interface provides a number of low-level cryptographic functions. It is accessed via the Crypto.subtle properties available in a window context (via Window.crypto).
[See SubtleCrypto on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto)
*/
type subtleCrypto = {}

/**
The CryptoKey dictionary of the Web Crypto API represents a cryptographic key.
[See CryptoKey on MDN](https://developer.mozilla.org/docs/Web/API/CryptoKey)
*/
type cryptoKey = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CryptoKey/type)
    */
  @as("type")
  type_: keyType,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CryptoKey/extractable)
    */
  extractable: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CryptoKey/algorithm)
    */
  algorithm: keyAlgorithm,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CryptoKey/usages)
    */
  usages: array<keyUsage>,
}

/**
A list of DataTransferItem objects representing items being dragged. During a drag operation, each DragEvent has a dataTransfer property and that property is a DataTransferItemList.
[See DataTransferItemList on MDN](https://developer.mozilla.org/docs/Web/API/DataTransferItemList)
*/
type dataTransferItemList = {
  /**
    Returns the number of items in the drag data store.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DataTransferItemList/length)
    */
  length: any,
}

/**
An object of this type is returned by the files property of the HTML <input> element; this lets you access the list of files selected with the <input type="file"> element. It's also used for a list of files dropped into web content when using the drag and drop API; see the DataTransfer object for details on this usage.
[See FileList on MDN](https://developer.mozilla.org/docs/Web/API/FileList)
*/
type fileList = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileList/length)
    */
  length: any,
}

/**
Used to hold the data that is being dragged during a drag and drop operation. It may hold one or more data items, each of one or more data types. For more information about drag and drop, see HTML Drag and Drop API.
[See DataTransfer on MDN](https://developer.mozilla.org/docs/Web/API/DataTransfer)
*/
type dataTransfer = {
  /**
    Returns the kind of operation that is currently selected. If the kind of operation isn't one of those that is allowed by the effectAllowed attribute, then the operation will fail.

Can be set, to change the selected operation.

The possible values are "none", "copy", "link", and "move".
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DataTransfer/dropEffect)
    */
  mutable dropEffect: string,
  /**
    Returns the kinds of operations that are to be allowed.

Can be set (during the dragstart event), to change the allowed operations.

The possible values are "none", "copy", "copyLink", "copyMove", "link", "linkMove", "move", "all", and "uninitialized",
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DataTransfer/effectAllowed)
    */
  mutable effectAllowed: string,
  /**
    Returns a DataTransferItemList object, with the drag data.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DataTransfer/items)
    */
  items: dataTransferItemList,
  /**
    Returns a frozen array listing the formats that were set in the dragstart event. In addition, if any files are being dragged, then one of the types will be the string "Files".
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DataTransfer/types)
    */
  types: array<domString>,
  /**
    Returns a FileList of the files being dragged, if any.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DataTransfer/files)
    */
  files: fileList,
}

/**
[See AnimationEffect on MDN](https://developer.mozilla.org/docs/Web/API/AnimationEffect)
*/
type animationEffect = {}

/**
[See MediaList on MDN](https://developer.mozilla.org/docs/Web/API/MediaList)
*/
type mediaList = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaList/mediaText)
    */
  mutable mediaText: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaList/length)
    */
  length: any,
}

/**
[See CSSNumericArray on MDN](https://developer.mozilla.org/docs/Web/API/CSSNumericArray)
*/
type cssNumericArray = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSNumericArray/length)
    */
  length: any,
}

/**
[See CSSTransformComponent on MDN](https://developer.mozilla.org/docs/Web/API/CSSTransformComponent)
*/
type cssTransformComponent = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSTransformComponent/is2D)
    */
  mutable is2D: bool,
}

/**
[See CSSStyleValue on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleValue)
*/
type cssStyleValue = {}

/**
[See CSSNumericValue on MDN](https://developer.mozilla.org/docs/Web/API/CSSNumericValue)
*/
type cssNumericValue = {
  ...cssStyleValue,
}

/**
[See CSSPerspective on MDN](https://developer.mozilla.org/docs/Web/API/CSSPerspective)
*/
type cssPerspective = {
  ...cssTransformComponent,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSPerspective/length)
    */
  mutable length: cssPerspectiveValue,
}

/**
[See DOMMatrixReadOnly on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly)
*/
type domMatrixReadOnly = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  a: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  b: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  c: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  d: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  e: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  f: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m11: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m12: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m13: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m14: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m21: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m22: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m23: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m24: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m31: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m32: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m33: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m34: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m41: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m42: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m43: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m44: any,
}

/**
[See DOMMatrix on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrix)
*/
type domMatrix = {
  ...domMatrixReadOnly,
}

/**
[See CSSMatrixComponent on MDN](https://developer.mozilla.org/docs/Web/API/CSSMatrixComponent)
*/
type cssMatrixComponent = {
  ...cssTransformComponent,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSMatrixComponent/matrix)
    */
  mutable matrix: domMatrix,
}

type nodeFilter = {}

/**
This EncryptedMediaExtensions API interface is a read-only map of media key statuses by key IDs.
[See MediaKeyStatusMap on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeyStatusMap)
*/
type mediaKeyStatusMap = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeyStatusMap/size)
    */
  size: any,
}

/**
This EncryptedMediaExtensions API interface represents a context for message exchange with a content decryption module (CDM).
[See MediaKeySession on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySession)
*/
type mediaKeySession = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySession/sessionId)
    */
  sessionId: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySession/expiration)
    */
  expiration: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySession/closed)
    */
  closed: Promise.t<mediaKeySessionClosedReason>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySession/keyStatuses)
    */
  keyStatuses: mediaKeyStatusMap,
}

/**
This Gamepad API interface represents hardware in the controller designed to provide haptic feedback to the user (if available), most commonly vibration hardware.
[See GamepadHapticActuator on MDN](https://developer.mozilla.org/docs/Web/API/GamepadHapticActuator)
*/
type gamepadHapticActuator = {}

/**
[See GeolocationCoordinates on MDN](https://developer.mozilla.org/docs/Web/API/GeolocationCoordinates)
*/
type geolocationCoordinates = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/GeolocationCoordinates/accuracy)
    */
  accuracy: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/GeolocationCoordinates/latitude)
    */
  latitude: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/GeolocationCoordinates/longitude)
    */
  longitude: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/GeolocationCoordinates/altitude)
    */
  altitude: Null.t<float>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/GeolocationCoordinates/altitudeAccuracy)
    */
  altitudeAccuracy: Null.t<float>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/GeolocationCoordinates/heading)
    */
  heading: Null.t<float>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/GeolocationCoordinates/speed)
    */
  speed: Null.t<float>,
}

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
An error which occurred while handling media in an HTML media element based on HTMLMediaElement, such as <audio> or <video>.
[See MediaError on MDN](https://developer.mozilla.org/docs/Web/API/MediaError)
*/
type mediaError = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaError/code)
    */
  code: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaError/message)
    */
  message: domString,
}

/**
Used to represent a set of time ranges, primarily for the purpose of tracking which portions of media have been buffered when loading it for use by the <audio> and <video> elements.
[See TimeRanges on MDN](https://developer.mozilla.org/docs/Web/API/TimeRanges)
*/
type timeRanges = {
  /**
    Returns the number of ranges in the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TimeRanges/length)
    */
  length: any,
}

/**
[See TextTrackList on MDN](https://developer.mozilla.org/docs/Web/API/TextTrackList)
*/
type textTrackList = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextTrackList/length)
    */
  length: any,
}

/**
[See RemotePlayback on MDN](https://developer.mozilla.org/docs/Web/API/RemotePlayback)
*/
type remotePlayback = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RemotePlayback/state)
    */
  state: remotePlaybackState,
}

/**
[See TextTrackCueList on MDN](https://developer.mozilla.org/docs/Web/API/TextTrackCueList)
*/
type textTrackCueList = {
  /**
    Returns the number of cues in the list.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextTrackCueList/length)
    */
  length: any,
}

/**
Provides a way to easily construct a set of key/value pairs representing form fields and their values, which can then be easily sent using the XMLHttpRequest.send() method. It uses the same format a form would use if the encoding type were set to "multipart/form-data".
[See FormData on MDN](https://developer.mozilla.org/docs/Web/API/FormData)
*/
type formData = {}

/**
[See CustomStateSet on MDN](https://developer.mozilla.org/docs/Web/API/CustomStateSet)
*/
type customStateSet = {}

/**
This Channel Messaging API interface represents one of the two ports of a MessageChannel, allowing messages to be sent from one port and listening out for them arriving at the other.
[See MessagePort on MDN](https://developer.mozilla.org/docs/Web/API/MessagePort)
*/
type messagePort = {
  ...eventTarget,
}

/**
A simple container list for multiple SourceBuffer objects.
[See SourceBufferList on MDN](https://developer.mozilla.org/docs/Web/API/SourceBufferList)
*/
type sourceBufferList = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SourceBufferList/length)
    */
  length: any,
}

/**
This Web Speech API interface represents a voice that the system supports. Every SpeechSynthesisVoice has its own relative speech service including information about language, name and URI.
[See SpeechSynthesisVoice on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisVoice)
*/
type speechSynthesisVoice = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisVoice/voiceURI)
    */
  voiceURI: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisVoice/name)
    */
  name: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisVoice/lang)
    */
  lang: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisVoice/localService)
    */
  localService: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisVoice/default)
    */
  default: bool,
}

/**
An individual button of a gamepad or other controller, allowing access to the current state of different types of buttons available on the control device.
[See GamepadButton on MDN](https://developer.mozilla.org/docs/Web/API/GamepadButton)
*/
type gamepadButton = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/GamepadButton/pressed)
    */
  pressed: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/GamepadButton/touched)
    */
  touched: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/GamepadButton/value)
    */
  value: float,
}

/**
[See PerformanceServerTiming on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceServerTiming)
*/
type performanceServerTiming = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceServerTiming/name)
    */
  name: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceServerTiming/duration)
    */
  duration: domHighResTimeStamp,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceServerTiming/description)
    */
  description: domString,
}

/**
[See ResizeObserverSize on MDN](https://developer.mozilla.org/docs/Web/API/ResizeObserverSize)
*/
type resizeObserverSize = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ResizeObserverSize/inlineSize)
    */
  inlineSize: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ResizeObserverSize/blockSize)
    */
  blockSize: any,
}

/**
[See URLSearchParams on MDN](https://developer.mozilla.org/docs/Web/API/URLSearchParams)
*/
type urlSearchParams = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/URLSearchParams/size)
    */
  size: any,
}

/**
A short audio asset residing in memory, created from an audio file using the AudioContext.decodeAudioData() method, or from raw data using AudioContext.createBuffer(). Once put into an AudioBuffer, the audio can then be played by being passed into an AudioBufferSourceNode.
[See AudioBuffer on MDN](https://developer.mozilla.org/docs/Web/API/AudioBuffer)
*/
type audioBuffer = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBuffer/sampleRate)
    */
  sampleRate: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBuffer/length)
    */
  length: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBuffer/duration)
    */
  duration: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBuffer/numberOfChannels)
    */
  numberOfChannels: any,
}

/**
[See AuthenticatorResponse on MDN](https://developer.mozilla.org/docs/Web/API/AuthenticatorResponse)
*/
type authenticatorResponse = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AuthenticatorResponse/clientDataJSON)
    */
  clientDataJSON: arrayBuffer,
}

/**
[See VideoColorSpace on MDN](https://developer.mozilla.org/docs/Web/API/VideoColorSpace)
*/
type videoColorSpace = {
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
One end of a connection—or potential connection—and how it's configured. Each RTCSessionDescription consists of a description type indicating which part of the offer/answer negotiation process it describes and of the SDP descriptor of the session.
[See RTCSessionDescription on MDN](https://developer.mozilla.org/docs/Web/API/RTCSessionDescription)
*/
type rtcSessionDescription = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCSessionDescription/type)
    */
  @as("type")
  type_: rtcSdpType,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCSessionDescription/sdp)
    */
  sdp: domString,
}

/**
Provides access to information about the ICE transport layer over which the data is being sent and received.
[See RTCIceTransport on MDN](https://developer.mozilla.org/docs/Web/API/RTCIceTransport)
*/
type rtcIceTransport = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCIceTransport/state)
    */
  state: rtcIceTransportState,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCIceTransport/gatheringState)
    */
  gatheringState: rtcIceGathererState,
}

/**
[See RTCDtlsTransport on MDN](https://developer.mozilla.org/docs/Web/API/RTCDtlsTransport)
*/
type rtcDtlsTransport = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCDtlsTransport/iceTransport)
    */
  iceTransport: rtcIceTransport,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCDtlsTransport/state)
    */
  state: rtcDtlsTransportState,
}

/**
[See RTCSctpTransport on MDN](https://developer.mozilla.org/docs/Web/API/RTCSctpTransport)
*/
type rtcSctpTransport = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCSctpTransport/transport)
    */
  transport: rtcDtlsTransport,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCSctpTransport/state)
    */
  state: rtcSctpTransportState,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCSctpTransport/maxMessageSize)
    */
  maxMessageSize: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCSctpTransport/maxChannels)
    */
  maxChannels: Null.t<int>,
}

/**
[See RTCRtpScriptTransform on MDN](https://developer.mozilla.org/docs/Web/API/RTCRtpScriptTransform)
*/
type rtcRtpScriptTransform = {}

/**
[See RTCDTMFSender on MDN](https://developer.mozilla.org/docs/Web/API/RTCDTMFSender)
*/
type rtcdtmfSender = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCDTMFSender/canInsertDTMF)
    */
  canInsertDTMF: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCDTMFSender/toneBuffer)
    */
  toneBuffer: domString,
}

/**
[See VTTRegion on MDN](https://developer.mozilla.org/docs/Web/API/VTTRegion)
*/
type vttRegion = {}

/**
[See AnimationTimeline on MDN](https://developer.mozilla.org/docs/Web/API/AnimationTimeline)
*/
type rec animationTimeline = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnimationTimeline/currentTime)
    */
  currentTime: Null.t<float>,
}

/**
[See DocumentTimeline on MDN](https://developer.mozilla.org/docs/Web/API/DocumentTimeline)
*/
and documentTimeline = {
  // Base properties from AnimationTimeline
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnimationTimeline/currentTime)
    */
  currentTime: Null.t<float>,
  // End base properties from AnimationTimeline
}

/**
Node is an interface from which a number of DOM API object types inherit. It allows those types to be treated similarly; for example, inheriting the same set of methods, or being tested in the same way.
[See Node on MDN](https://developer.mozilla.org/docs/Web/API/Node)
*/
type rec node = {
  /**
    Returns the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeType)
    */
  nodeType: int,
  /**
    Returns a string appropriate for the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeName)
    */
  nodeName: domString,
  /**
    Returns node's node document's document base URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/baseURI)
    */
  baseURI: usvString,
  /**
    Returns true if node is connected and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isConnected)
    */
  isConnected: bool,
  /**
    Returns the node document. Returns null for documents.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/ownerDocument)
    */
  ownerDocument: Null.t<document>,
  /**
    Returns the parent.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentNode)
    */
  parentNode: Null.t<node>,
  /**
    Returns the parent element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentElement)
    */
  parentElement: Null.t<htmlElement>,
  /**
    Returns the children.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/childNodes)
    */
  childNodes: nodeListOf<node>,
  /**
    Returns the first child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/firstChild)
    */
  firstChild: Null.t<node>,
  /**
    Returns the last child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lastChild)
    */
  lastChild: Null.t<node>,
  /**
    Returns the previous sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/previousSibling)
    */
  previousSibling: Null.t<node>,
  /**
    Returns the next sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nextSibling)
    */
  nextSibling: Null.t<node>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeValue)
    */
  mutable nodeValue: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/textContent)
    */
  mutable textContent: Null.t<domString>,
}

/**
NodeList objects are collections of nodes, usually returned by properties such as Node.childNodes and methods such as document.querySelectorAll().
[See NodeList on MDN](https://developer.mozilla.org/docs/Web/API/NodeList)
*/
and nodeList = {
  /**
    Returns the number of nodes in the collection.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NodeList/length)
    */
  length: any,
}

and nodeListOf<'tNode> = {
  // Base properties from NodeList
  /**
    Returns the number of nodes in the collection.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NodeList/length)
    */
  length: any,
  // End base properties from NodeList
}

/**
Element is the most general base class from which all objects in a Document inherit. It only has methods and properties common to all kinds of elements. More specific classes inherit from Element.
[See Element on MDN](https://developer.mozilla.org/docs/Web/API/Element)
*/
and element = {
  // Base properties from Node
  /**
    Returns the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeType)
    */
  nodeType: int,
  /**
    Returns a string appropriate for the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeName)
    */
  nodeName: domString,
  /**
    Returns node's node document's document base URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/baseURI)
    */
  baseURI: usvString,
  /**
    Returns true if node is connected and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isConnected)
    */
  isConnected: bool,
  /**
    Returns the node document. Returns null for documents.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/ownerDocument)
    */
  ownerDocument: Null.t<document>,
  /**
    Returns the parent.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentNode)
    */
  parentNode: Null.t<node>,
  /**
    Returns the parent element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentElement)
    */
  parentElement: Null.t<htmlElement>,
  /**
    Returns the children.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/childNodes)
    */
  childNodes: nodeListOf<node>,
  /**
    Returns the first child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/firstChild)
    */
  firstChild: Null.t<node>,
  /**
    Returns the last child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lastChild)
    */
  lastChild: Null.t<node>,
  /**
    Returns the previous sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/previousSibling)
    */
  previousSibling: Null.t<node>,
  /**
    Returns the next sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nextSibling)
    */
  nextSibling: Null.t<node>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeValue)
    */
  mutable nodeValue: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/textContent)
    */
  mutable textContent: Null.t<domString>,
  // End base properties from Node

  /**
    Returns the namespace.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/namespaceURI)
    */
  namespaceURI: Null.t<domString>,
  /**
    Returns the namespace prefix.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/prefix)
    */
  prefix: Null.t<domString>,
  /**
    Returns the local name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/localName)
    */
  localName: domString,
  /**
    Returns the HTML-uppercased qualified name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/tagName)
    */
  tagName: domString,
  /**
    Returns the value of element's id content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/id)
    */
  mutable id: domString,
  /**
    Returns the value of element's class content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/className)
    */
  mutable className: domString,
  /**
    Allows for manipulation of element's class content attribute as a set of whitespace-separated tokens through a DOMTokenList object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/classList)
    */
  classList: domTokenList,
  /**
    Returns the value of element's slot content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/slot)
    */
  mutable slot: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/attributes)
    */
  attributes: namedNodeMap,
  /**
    Returns element's shadow root, if any, and if shadow root's mode is "open", and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/shadowRoot)
    */
  shadowRoot: Null.t<shadowRoot>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/part)
    */
  part: domTokenList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollTop)
    */
  mutable scrollTop: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollLeft)
    */
  mutable scrollLeft: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollWidth)
    */
  scrollWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollHeight)
    */
  scrollHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientTop)
    */
  clientTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientLeft)
    */
  clientLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientWidth)
    */
  clientWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientHeight)
    */
  clientHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/currentCSSZoom)
    */
  currentCSSZoom: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/innerHTML)
    */
  mutable innerHTML: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/outerHTML)
    */
  mutable outerHTML: unknown,
}

/**
[See ShadowRoot on MDN](https://developer.mozilla.org/docs/Web/API/ShadowRoot)
*/
and shadowRoot = {
  // Base properties from DocumentFragment
  // End base properties from DocumentFragment

  // Base properties from Node
  /**
    Returns the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeType)
    */
  nodeType: int,
  /**
    Returns a string appropriate for the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeName)
    */
  nodeName: domString,
  /**
    Returns node's node document's document base URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/baseURI)
    */
  baseURI: usvString,
  /**
    Returns true if node is connected and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isConnected)
    */
  isConnected: bool,
  /**
    Returns the node document. Returns null for documents.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/ownerDocument)
    */
  ownerDocument: Null.t<document>,
  /**
    Returns the parent.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentNode)
    */
  parentNode: Null.t<node>,
  /**
    Returns the parent element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentElement)
    */
  parentElement: Null.t<htmlElement>,
  /**
    Returns the children.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/childNodes)
    */
  childNodes: nodeListOf<node>,
  /**
    Returns the first child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/firstChild)
    */
  firstChild: Null.t<node>,
  /**
    Returns the last child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lastChild)
    */
  lastChild: Null.t<node>,
  /**
    Returns the previous sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/previousSibling)
    */
  previousSibling: Null.t<node>,
  /**
    Returns the next sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nextSibling)
    */
  nextSibling: Null.t<node>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeValue)
    */
  mutable nodeValue: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/textContent)
    */
  mutable textContent: Null.t<domString>,
  // End base properties from Node

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ShadowRoot/mode)
    */
  mode: shadowRootMode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ShadowRoot/delegatesFocus)
    */
  delegatesFocus: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ShadowRoot/slotAssignment)
    */
  slotAssignment: slotAssignmentMode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ShadowRoot/clonable)
    */
  clonable: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ShadowRoot/serializable)
    */
  serializable: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ShadowRoot/host)
    */
  host: element,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ShadowRoot/innerHTML)
    */
  mutable innerHTML: unknown,
}

/**
A generic collection (array-like object similar to arguments) of elements (in document order) and offers methods and properties for selecting from the list.
[See HTMLCollection on MDN](https://developer.mozilla.org/docs/Web/API/HTMLCollection)
*/
and htmlCollection = {
  /**
    Sets or retrieves the number of objects in a collection.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLCollection/length)
    */
  length: any,
}

and htmlCollectionOf<'t> = {
  // Base properties from HTMLCollection
  /**
    Sets or retrieves the number of objects in a collection.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLCollection/length)
    */
  length: any,
  // End base properties from HTMLCollection
}

/**
A collection of HTML form control elements. 
[See HTMLFormControlsCollection on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormControlsCollection)
*/
and htmlFormControlsCollection = {
  // Base properties from HTMLCollection
  /**
    Sets or retrieves the number of objects in a collection.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLCollection/length)
    */
  length: any,
  // End base properties from HTMLCollection
}

/**
Any HTML element. Some elements directly implement this interface, while others implement it via an interface that inherits it.
[See HTMLElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement)
*/
and htmlElement = {
  // Base properties from Element
  /**
    Returns the namespace.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/namespaceURI)
    */
  namespaceURI: Null.t<domString>,
  /**
    Returns the namespace prefix.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/prefix)
    */
  prefix: Null.t<domString>,
  /**
    Returns the local name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/localName)
    */
  localName: domString,
  /**
    Returns the HTML-uppercased qualified name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/tagName)
    */
  tagName: domString,
  /**
    Returns the value of element's id content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/id)
    */
  mutable id: domString,
  /**
    Returns the value of element's class content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/className)
    */
  mutable className: domString,
  /**
    Allows for manipulation of element's class content attribute as a set of whitespace-separated tokens through a DOMTokenList object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/classList)
    */
  classList: domTokenList,
  /**
    Returns the value of element's slot content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/slot)
    */
  mutable slot: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/attributes)
    */
  attributes: namedNodeMap,
  /**
    Returns element's shadow root, if any, and if shadow root's mode is "open", and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/shadowRoot)
    */
  shadowRoot: Null.t<shadowRoot>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/part)
    */
  part: domTokenList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollTop)
    */
  mutable scrollTop: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollLeft)
    */
  mutable scrollLeft: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollWidth)
    */
  scrollWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollHeight)
    */
  scrollHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientTop)
    */
  clientTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientLeft)
    */
  clientLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientWidth)
    */
  clientWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientHeight)
    */
  clientHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/currentCSSZoom)
    */
  currentCSSZoom: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/innerHTML)
    */
  mutable innerHTML: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/outerHTML)
    */
  mutable outerHTML: unknown,
  // End base properties from Element

  // Base properties from Node
  /**
    Returns the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeType)
    */
  nodeType: int,
  /**
    Returns a string appropriate for the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeName)
    */
  nodeName: domString,
  /**
    Returns node's node document's document base URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/baseURI)
    */
  baseURI: usvString,
  /**
    Returns true if node is connected and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isConnected)
    */
  isConnected: bool,
  /**
    Returns the node document. Returns null for documents.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/ownerDocument)
    */
  ownerDocument: Null.t<document>,
  /**
    Returns the parent.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentNode)
    */
  parentNode: Null.t<node>,
  /**
    Returns the parent element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentElement)
    */
  parentElement: Null.t<htmlElement>,
  /**
    Returns the children.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/childNodes)
    */
  childNodes: nodeListOf<node>,
  /**
    Returns the first child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/firstChild)
    */
  firstChild: Null.t<node>,
  /**
    Returns the last child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lastChild)
    */
  lastChild: Null.t<node>,
  /**
    Returns the previous sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/previousSibling)
    */
  previousSibling: Null.t<node>,
  /**
    Returns the next sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nextSibling)
    */
  nextSibling: Null.t<node>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeValue)
    */
  mutable nodeValue: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/textContent)
    */
  mutable textContent: Null.t<domString>,
  // End base properties from Node

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/title)
    */
  mutable title: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/lang)
    */
  mutable lang: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/translate)
    */
  mutable translate: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/dir)
    */
  mutable dir: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/hidden)
    */
  mutable hidden: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/inert)
    */
  mutable inert: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKey)
    */
  mutable accessKey: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKeyLabel)
    */
  accessKeyLabel: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/draggable)
    */
  mutable draggable: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/spellcheck)
    */
  mutable spellcheck: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/autocapitalize)
    */
  mutable autocapitalize: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/innerText)
    */
  mutable innerText: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/outerText)
    */
  mutable outerText: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/popover)
    */
  mutable popover: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetParent)
    */
  offsetParent: Null.t<element>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetTop)
    */
  offsetTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetLeft)
    */
  offsetLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetWidth)
    */
  offsetWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetHeight)
    */
  offsetHeight: int,
}

/**
Contains the descriptive information, or metadata, for a document. This object inherits all of the properties and methods described in the HTMLElement interface.
[See HTMLHeadElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLHeadElement)
*/
and htmlHeadElement = {
  // Base properties from HTMLElement
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/title)
    */
  mutable title: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/lang)
    */
  mutable lang: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/translate)
    */
  mutable translate: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/dir)
    */
  mutable dir: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/hidden)
    */
  mutable hidden: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/inert)
    */
  mutable inert: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKey)
    */
  mutable accessKey: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKeyLabel)
    */
  accessKeyLabel: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/draggable)
    */
  mutable draggable: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/spellcheck)
    */
  mutable spellcheck: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/autocapitalize)
    */
  mutable autocapitalize: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/innerText)
    */
  mutable innerText: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/outerText)
    */
  mutable outerText: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/popover)
    */
  mutable popover: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetParent)
    */
  offsetParent: Null.t<element>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetTop)
    */
  offsetTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetLeft)
    */
  offsetLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetWidth)
    */
  offsetWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetHeight)
    */
  offsetHeight: int,
  // End base properties from HTMLElement

  // Base properties from Element
  /**
    Returns the namespace.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/namespaceURI)
    */
  namespaceURI: Null.t<domString>,
  /**
    Returns the namespace prefix.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/prefix)
    */
  prefix: Null.t<domString>,
  /**
    Returns the local name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/localName)
    */
  localName: domString,
  /**
    Returns the HTML-uppercased qualified name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/tagName)
    */
  tagName: domString,
  /**
    Returns the value of element's id content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/id)
    */
  mutable id: domString,
  /**
    Returns the value of element's class content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/className)
    */
  mutable className: domString,
  /**
    Allows for manipulation of element's class content attribute as a set of whitespace-separated tokens through a DOMTokenList object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/classList)
    */
  classList: domTokenList,
  /**
    Returns the value of element's slot content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/slot)
    */
  mutable slot: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/attributes)
    */
  attributes: namedNodeMap,
  /**
    Returns element's shadow root, if any, and if shadow root's mode is "open", and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/shadowRoot)
    */
  shadowRoot: Null.t<shadowRoot>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/part)
    */
  part: domTokenList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollTop)
    */
  mutable scrollTop: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollLeft)
    */
  mutable scrollLeft: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollWidth)
    */
  scrollWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollHeight)
    */
  scrollHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientTop)
    */
  clientTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientLeft)
    */
  clientLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientWidth)
    */
  clientWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientHeight)
    */
  clientHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/currentCSSZoom)
    */
  currentCSSZoom: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/innerHTML)
    */
  mutable innerHTML: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/outerHTML)
    */
  mutable outerHTML: unknown,
  // End base properties from Element

  // Base properties from Node
  /**
    Returns the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeType)
    */
  nodeType: int,
  /**
    Returns a string appropriate for the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeName)
    */
  nodeName: domString,
  /**
    Returns node's node document's document base URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/baseURI)
    */
  baseURI: usvString,
  /**
    Returns true if node is connected and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isConnected)
    */
  isConnected: bool,
  /**
    Returns the node document. Returns null for documents.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/ownerDocument)
    */
  ownerDocument: Null.t<document>,
  /**
    Returns the parent.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentNode)
    */
  parentNode: Null.t<node>,
  /**
    Returns the parent element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentElement)
    */
  parentElement: Null.t<htmlElement>,
  /**
    Returns the children.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/childNodes)
    */
  childNodes: nodeListOf<node>,
  /**
    Returns the first child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/firstChild)
    */
  firstChild: Null.t<node>,
  /**
    Returns the last child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lastChild)
    */
  lastChild: Null.t<node>,
  /**
    Returns the previous sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/previousSibling)
    */
  previousSibling: Null.t<node>,
  /**
    Returns the next sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nextSibling)
    */
  nextSibling: Null.t<node>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeValue)
    */
  mutable nodeValue: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/textContent)
    */
  mutable textContent: Null.t<domString>,
  // End base properties from Node
}

/**
A <form> element in the DOM; it allows access to and in some cases modification of aspects of the form, as well as access to its component elements.
[See HTMLFormElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement)
*/
and htmlFormElement = {
  // Base properties from HTMLElement
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/title)
    */
  mutable title: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/lang)
    */
  mutable lang: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/translate)
    */
  mutable translate: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/dir)
    */
  mutable dir: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/hidden)
    */
  mutable hidden: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/inert)
    */
  mutable inert: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKey)
    */
  mutable accessKey: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKeyLabel)
    */
  accessKeyLabel: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/draggable)
    */
  mutable draggable: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/spellcheck)
    */
  mutable spellcheck: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/autocapitalize)
    */
  mutable autocapitalize: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/innerText)
    */
  mutable innerText: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/outerText)
    */
  mutable outerText: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/popover)
    */
  mutable popover: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetParent)
    */
  offsetParent: Null.t<element>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetTop)
    */
  offsetTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetLeft)
    */
  offsetLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetWidth)
    */
  offsetWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetHeight)
    */
  offsetHeight: int,
  // End base properties from HTMLElement

  // Base properties from Element
  /**
    Returns the namespace.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/namespaceURI)
    */
  namespaceURI: Null.t<domString>,
  /**
    Returns the namespace prefix.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/prefix)
    */
  prefix: Null.t<domString>,
  /**
    Returns the local name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/localName)
    */
  localName: domString,
  /**
    Returns the HTML-uppercased qualified name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/tagName)
    */
  tagName: domString,
  /**
    Returns the value of element's id content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/id)
    */
  mutable id: domString,
  /**
    Returns the value of element's class content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/className)
    */
  mutable className: domString,
  /**
    Allows for manipulation of element's class content attribute as a set of whitespace-separated tokens through a DOMTokenList object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/classList)
    */
  classList: domTokenList,
  /**
    Returns the value of element's slot content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/slot)
    */
  mutable slot: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/attributes)
    */
  attributes: namedNodeMap,
  /**
    Returns element's shadow root, if any, and if shadow root's mode is "open", and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/shadowRoot)
    */
  shadowRoot: Null.t<shadowRoot>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/part)
    */
  part: domTokenList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollTop)
    */
  mutable scrollTop: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollLeft)
    */
  mutable scrollLeft: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollWidth)
    */
  scrollWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollHeight)
    */
  scrollHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientTop)
    */
  clientTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientLeft)
    */
  clientLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientWidth)
    */
  clientWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientHeight)
    */
  clientHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/currentCSSZoom)
    */
  currentCSSZoom: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/innerHTML)
    */
  mutable innerHTML: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/outerHTML)
    */
  mutable outerHTML: unknown,
  // End base properties from Element

  // Base properties from Node
  /**
    Returns the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeType)
    */
  nodeType: int,
  /**
    Returns a string appropriate for the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeName)
    */
  nodeName: domString,
  /**
    Returns node's node document's document base URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/baseURI)
    */
  baseURI: usvString,
  /**
    Returns true if node is connected and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isConnected)
    */
  isConnected: bool,
  /**
    Returns the node document. Returns null for documents.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/ownerDocument)
    */
  ownerDocument: Null.t<document>,
  /**
    Returns the parent.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentNode)
    */
  parentNode: Null.t<node>,
  /**
    Returns the parent element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentElement)
    */
  parentElement: Null.t<htmlElement>,
  /**
    Returns the children.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/childNodes)
    */
  childNodes: nodeListOf<node>,
  /**
    Returns the first child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/firstChild)
    */
  firstChild: Null.t<node>,
  /**
    Returns the last child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lastChild)
    */
  lastChild: Null.t<node>,
  /**
    Returns the previous sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/previousSibling)
    */
  previousSibling: Null.t<node>,
  /**
    Returns the next sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nextSibling)
    */
  nextSibling: Null.t<node>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeValue)
    */
  mutable nodeValue: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/textContent)
    */
  mutable textContent: Null.t<domString>,
  // End base properties from Node

  /**
    Sets or retrieves a list of character encodings for input data that must be accepted by the server processing the form.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/acceptCharset)
    */
  mutable acceptCharset: domString,
  /**
    Sets or retrieves the URL to which the form content is sent for processing.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/action)
    */
  mutable action: usvString,
  /**
    Specifies whether autocomplete is applied to an editable text field.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/autocomplete)
    */
  mutable autocomplete: autoFillBase,
  /**
    Sets or retrieves the encoding type for the form.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/enctype)
    */
  mutable enctype: domString,
  /**
    Sets or retrieves the MIME encoding for the form.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/encoding)
    */
  mutable encoding: domString,
  /**
    Sets or retrieves how to send the form data to the server.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/method)
    */
  mutable method: domString,
  /**
    Sets or retrieves the name of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/name)
    */
  mutable name: domString,
  /**
    Sets or retrieves the window or frame at which to target content.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/target)
    */
  mutable target: domString,
  /**
    Retrieves a collection, in source order, of all controls in a given form.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/elements)
    */
  elements: htmlFormControlsCollection,
  /**
    Sets or retrieves the number of objects in a collection.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/length)
    */
  length: any,
}

/**
Provides special properties and methods for manipulating <img> elements.
[See HTMLImageElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement)
*/
and htmlImageElement = {
  // Base properties from HTMLElement
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/title)
    */
  mutable title: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/lang)
    */
  mutable lang: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/translate)
    */
  mutable translate: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/dir)
    */
  mutable dir: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/hidden)
    */
  mutable hidden: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/inert)
    */
  mutable inert: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKey)
    */
  mutable accessKey: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKeyLabel)
    */
  accessKeyLabel: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/draggable)
    */
  mutable draggable: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/spellcheck)
    */
  mutable spellcheck: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/autocapitalize)
    */
  mutable autocapitalize: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/innerText)
    */
  mutable innerText: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/outerText)
    */
  mutable outerText: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/popover)
    */
  mutable popover: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetParent)
    */
  offsetParent: Null.t<element>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetTop)
    */
  offsetTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetLeft)
    */
  offsetLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetWidth)
    */
  offsetWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetHeight)
    */
  offsetHeight: int,
  // End base properties from HTMLElement

  // Base properties from Element
  /**
    Returns the namespace.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/namespaceURI)
    */
  namespaceURI: Null.t<domString>,
  /**
    Returns the namespace prefix.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/prefix)
    */
  prefix: Null.t<domString>,
  /**
    Returns the local name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/localName)
    */
  localName: domString,
  /**
    Returns the HTML-uppercased qualified name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/tagName)
    */
  tagName: domString,
  /**
    Returns the value of element's id content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/id)
    */
  mutable id: domString,
  /**
    Returns the value of element's class content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/className)
    */
  mutable className: domString,
  /**
    Allows for manipulation of element's class content attribute as a set of whitespace-separated tokens through a DOMTokenList object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/classList)
    */
  classList: domTokenList,
  /**
    Returns the value of element's slot content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/slot)
    */
  mutable slot: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/attributes)
    */
  attributes: namedNodeMap,
  /**
    Returns element's shadow root, if any, and if shadow root's mode is "open", and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/shadowRoot)
    */
  shadowRoot: Null.t<shadowRoot>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/part)
    */
  part: domTokenList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollTop)
    */
  mutable scrollTop: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollLeft)
    */
  mutable scrollLeft: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollWidth)
    */
  scrollWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollHeight)
    */
  scrollHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientTop)
    */
  clientTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientLeft)
    */
  clientLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientWidth)
    */
  clientWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientHeight)
    */
  clientHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/currentCSSZoom)
    */
  currentCSSZoom: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/innerHTML)
    */
  mutable innerHTML: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/outerHTML)
    */
  mutable outerHTML: unknown,
  // End base properties from Element

  // Base properties from Node
  /**
    Returns the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeType)
    */
  nodeType: int,
  /**
    Returns a string appropriate for the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeName)
    */
  nodeName: domString,
  /**
    Returns node's node document's document base URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/baseURI)
    */
  baseURI: usvString,
  /**
    Returns true if node is connected and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isConnected)
    */
  isConnected: bool,
  /**
    Returns the node document. Returns null for documents.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/ownerDocument)
    */
  ownerDocument: Null.t<document>,
  /**
    Returns the parent.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentNode)
    */
  parentNode: Null.t<node>,
  /**
    Returns the parent element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentElement)
    */
  parentElement: Null.t<htmlElement>,
  /**
    Returns the children.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/childNodes)
    */
  childNodes: nodeListOf<node>,
  /**
    Returns the first child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/firstChild)
    */
  firstChild: Null.t<node>,
  /**
    Returns the last child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lastChild)
    */
  lastChild: Null.t<node>,
  /**
    Returns the previous sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/previousSibling)
    */
  previousSibling: Null.t<node>,
  /**
    Returns the next sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nextSibling)
    */
  nextSibling: Null.t<node>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeValue)
    */
  mutable nodeValue: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/textContent)
    */
  mutable textContent: Null.t<domString>,
  // End base properties from Node

  /**
    Sets or retrieves a text alternative to the graphic.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/alt)
    */
  mutable alt: domString,
  /**
    The address or URL of the a media resource that is to be considered.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/src)
    */
  mutable src: usvString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/srcset)
    */
  mutable srcset: usvString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/sizes)
    */
  mutable sizes: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/crossOrigin)
    */
  mutable crossOrigin: Null.t<domString>,
  /**
    Sets or retrieves the URL, often with a bookmark extension (#name), to use as a client-side image map.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/useMap)
    */
  mutable useMap: domString,
  /**
    Sets or retrieves whether the image is a server-side image map.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/isMap)
    */
  mutable isMap: bool,
  /**
    Sets or retrieves the width of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/width)
    */
  mutable width: any,
  /**
    Sets or retrieves the height of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/height)
    */
  mutable height: any,
  /**
    The original width of the image resource before sizing.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/naturalWidth)
    */
  naturalWidth: any,
  /**
    The original height of the image resource before sizing.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/naturalHeight)
    */
  naturalHeight: any,
  /**
    Retrieves whether the object is fully loaded.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/complete)
    */
  complete: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/currentSrc)
    */
  currentSrc: usvString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/referrerPolicy)
    */
  mutable referrerPolicy: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/decoding)
    */
  mutable decoding: string,
  /**
    Sets or retrieves the policy for loading image elements that are outside the viewport.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/loading)
    */
  mutable loading: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/fetchPriority)
    */
  mutable fetchPriority: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/x)
    */
  x: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/y)
    */
  y: int,
}

/**
Provides special properties (beyond the regular HTMLElement interface it also has available to it by inheritance) for manipulating <embed> elements.
[See HTMLEmbedElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLEmbedElement)
*/
and htmlEmbedElement = {
  // Base properties from HTMLElement
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/title)
    */
  mutable title: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/lang)
    */
  mutable lang: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/translate)
    */
  mutable translate: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/dir)
    */
  mutable dir: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/hidden)
    */
  mutable hidden: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/inert)
    */
  mutable inert: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKey)
    */
  mutable accessKey: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKeyLabel)
    */
  accessKeyLabel: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/draggable)
    */
  mutable draggable: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/spellcheck)
    */
  mutable spellcheck: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/autocapitalize)
    */
  mutable autocapitalize: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/innerText)
    */
  mutable innerText: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/outerText)
    */
  mutable outerText: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/popover)
    */
  mutable popover: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetParent)
    */
  offsetParent: Null.t<element>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetTop)
    */
  offsetTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetLeft)
    */
  offsetLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetWidth)
    */
  offsetWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetHeight)
    */
  offsetHeight: int,
  // End base properties from HTMLElement

  // Base properties from Element
  /**
    Returns the namespace.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/namespaceURI)
    */
  namespaceURI: Null.t<domString>,
  /**
    Returns the namespace prefix.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/prefix)
    */
  prefix: Null.t<domString>,
  /**
    Returns the local name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/localName)
    */
  localName: domString,
  /**
    Returns the HTML-uppercased qualified name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/tagName)
    */
  tagName: domString,
  /**
    Returns the value of element's id content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/id)
    */
  mutable id: domString,
  /**
    Returns the value of element's class content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/className)
    */
  mutable className: domString,
  /**
    Allows for manipulation of element's class content attribute as a set of whitespace-separated tokens through a DOMTokenList object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/classList)
    */
  classList: domTokenList,
  /**
    Returns the value of element's slot content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/slot)
    */
  mutable slot: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/attributes)
    */
  attributes: namedNodeMap,
  /**
    Returns element's shadow root, if any, and if shadow root's mode is "open", and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/shadowRoot)
    */
  shadowRoot: Null.t<shadowRoot>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/part)
    */
  part: domTokenList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollTop)
    */
  mutable scrollTop: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollLeft)
    */
  mutable scrollLeft: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollWidth)
    */
  scrollWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollHeight)
    */
  scrollHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientTop)
    */
  clientTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientLeft)
    */
  clientLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientWidth)
    */
  clientWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientHeight)
    */
  clientHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/currentCSSZoom)
    */
  currentCSSZoom: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/innerHTML)
    */
  mutable innerHTML: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/outerHTML)
    */
  mutable outerHTML: unknown,
  // End base properties from Element

  // Base properties from Node
  /**
    Returns the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeType)
    */
  nodeType: int,
  /**
    Returns a string appropriate for the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeName)
    */
  nodeName: domString,
  /**
    Returns node's node document's document base URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/baseURI)
    */
  baseURI: usvString,
  /**
    Returns true if node is connected and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isConnected)
    */
  isConnected: bool,
  /**
    Returns the node document. Returns null for documents.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/ownerDocument)
    */
  ownerDocument: Null.t<document>,
  /**
    Returns the parent.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentNode)
    */
  parentNode: Null.t<node>,
  /**
    Returns the parent element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentElement)
    */
  parentElement: Null.t<htmlElement>,
  /**
    Returns the children.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/childNodes)
    */
  childNodes: nodeListOf<node>,
  /**
    Returns the first child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/firstChild)
    */
  firstChild: Null.t<node>,
  /**
    Returns the last child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lastChild)
    */
  lastChild: Null.t<node>,
  /**
    Returns the previous sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/previousSibling)
    */
  previousSibling: Null.t<node>,
  /**
    Returns the next sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nextSibling)
    */
  nextSibling: Null.t<node>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeValue)
    */
  mutable nodeValue: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/textContent)
    */
  mutable textContent: Null.t<domString>,
  // End base properties from Node

  /**
    Sets or retrieves a URL to be loaded by the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLEmbedElement/src)
    */
  mutable src: usvString,
  /**
    Sets or retrieves the width of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLEmbedElement/width)
    */
  mutable width: domString,
  /**
    Sets or retrieves the height of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLEmbedElement/height)
    */
  mutable height: domString,
}

/**
Hyperlink elements and provides special properties and methods (beyond those of the regular HTMLElement object interface that they inherit from) for manipulating the layout and presentation of such elements.
[See HTMLAnchorElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAnchorElement)
*/
and htmlAnchorElement = {
  // Base properties from HTMLElement
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/title)
    */
  mutable title: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/lang)
    */
  mutable lang: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/translate)
    */
  mutable translate: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/dir)
    */
  mutable dir: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/hidden)
    */
  mutable hidden: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/inert)
    */
  mutable inert: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKey)
    */
  mutable accessKey: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKeyLabel)
    */
  accessKeyLabel: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/draggable)
    */
  mutable draggable: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/spellcheck)
    */
  mutable spellcheck: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/autocapitalize)
    */
  mutable autocapitalize: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/innerText)
    */
  mutable innerText: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/outerText)
    */
  mutable outerText: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/popover)
    */
  mutable popover: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetParent)
    */
  offsetParent: Null.t<element>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetTop)
    */
  offsetTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetLeft)
    */
  offsetLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetWidth)
    */
  offsetWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetHeight)
    */
  offsetHeight: int,
  // End base properties from HTMLElement

  // Base properties from Element
  /**
    Returns the namespace.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/namespaceURI)
    */
  namespaceURI: Null.t<domString>,
  /**
    Returns the namespace prefix.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/prefix)
    */
  prefix: Null.t<domString>,
  /**
    Returns the local name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/localName)
    */
  localName: domString,
  /**
    Returns the HTML-uppercased qualified name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/tagName)
    */
  tagName: domString,
  /**
    Returns the value of element's id content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/id)
    */
  mutable id: domString,
  /**
    Returns the value of element's class content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/className)
    */
  mutable className: domString,
  /**
    Allows for manipulation of element's class content attribute as a set of whitespace-separated tokens through a DOMTokenList object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/classList)
    */
  classList: domTokenList,
  /**
    Returns the value of element's slot content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/slot)
    */
  mutable slot: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/attributes)
    */
  attributes: namedNodeMap,
  /**
    Returns element's shadow root, if any, and if shadow root's mode is "open", and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/shadowRoot)
    */
  shadowRoot: Null.t<shadowRoot>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/part)
    */
  part: domTokenList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollTop)
    */
  mutable scrollTop: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollLeft)
    */
  mutable scrollLeft: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollWidth)
    */
  scrollWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollHeight)
    */
  scrollHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientTop)
    */
  clientTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientLeft)
    */
  clientLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientWidth)
    */
  clientWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientHeight)
    */
  clientHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/currentCSSZoom)
    */
  currentCSSZoom: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/innerHTML)
    */
  mutable innerHTML: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/outerHTML)
    */
  mutable outerHTML: unknown,
  // End base properties from Element

  // Base properties from Node
  /**
    Returns the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeType)
    */
  nodeType: int,
  /**
    Returns a string appropriate for the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeName)
    */
  nodeName: domString,
  /**
    Returns node's node document's document base URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/baseURI)
    */
  baseURI: usvString,
  /**
    Returns true if node is connected and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isConnected)
    */
  isConnected: bool,
  /**
    Returns the node document. Returns null for documents.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/ownerDocument)
    */
  ownerDocument: Null.t<document>,
  /**
    Returns the parent.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentNode)
    */
  parentNode: Null.t<node>,
  /**
    Returns the parent element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentElement)
    */
  parentElement: Null.t<htmlElement>,
  /**
    Returns the children.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/childNodes)
    */
  childNodes: nodeListOf<node>,
  /**
    Returns the first child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/firstChild)
    */
  firstChild: Null.t<node>,
  /**
    Returns the last child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lastChild)
    */
  lastChild: Null.t<node>,
  /**
    Returns the previous sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/previousSibling)
    */
  previousSibling: Null.t<node>,
  /**
    Returns the next sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nextSibling)
    */
  nextSibling: Null.t<node>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeValue)
    */
  mutable nodeValue: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/textContent)
    */
  mutable textContent: Null.t<domString>,
  // End base properties from Node

  /**
    Sets or retrieves the window or frame at which to target content.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAnchorElement/target)
    */
  mutable target: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAnchorElement/download)
    */
  mutable download: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAnchorElement/ping)
    */
  mutable ping: usvString,
  /**
    Sets or retrieves the relationship between the object and the destination of the link.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAnchorElement/rel)
    */
  mutable rel: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAnchorElement/relList)
    */
  relList: domTokenList,
  /**
    Sets or retrieves the language code of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAnchorElement/hreflang)
    */
  mutable hreflang: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAnchorElement/type)
    */
  @as("type")
  mutable type_: domString,
  /**
    Retrieves or sets the text of the object as a string.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAnchorElement/text)
    */
  mutable text: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAnchorElement/referrerPolicy)
    */
  mutable referrerPolicy: domString,
}

/**
Provides special properties and methods (beyond those of the regular object HTMLElement interface it also has available to it by inheritance) for manipulating the layout and presentation of <area> elements.
[See HTMLAreaElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAreaElement)
*/
and htmlAreaElement = {
  // Base properties from HTMLElement
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/title)
    */
  mutable title: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/lang)
    */
  mutable lang: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/translate)
    */
  mutable translate: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/dir)
    */
  mutable dir: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/hidden)
    */
  mutable hidden: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/inert)
    */
  mutable inert: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKey)
    */
  mutable accessKey: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKeyLabel)
    */
  accessKeyLabel: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/draggable)
    */
  mutable draggable: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/spellcheck)
    */
  mutable spellcheck: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/autocapitalize)
    */
  mutable autocapitalize: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/innerText)
    */
  mutable innerText: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/outerText)
    */
  mutable outerText: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/popover)
    */
  mutable popover: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetParent)
    */
  offsetParent: Null.t<element>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetTop)
    */
  offsetTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetLeft)
    */
  offsetLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetWidth)
    */
  offsetWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetHeight)
    */
  offsetHeight: int,
  // End base properties from HTMLElement

  // Base properties from Element
  /**
    Returns the namespace.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/namespaceURI)
    */
  namespaceURI: Null.t<domString>,
  /**
    Returns the namespace prefix.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/prefix)
    */
  prefix: Null.t<domString>,
  /**
    Returns the local name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/localName)
    */
  localName: domString,
  /**
    Returns the HTML-uppercased qualified name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/tagName)
    */
  tagName: domString,
  /**
    Returns the value of element's id content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/id)
    */
  mutable id: domString,
  /**
    Returns the value of element's class content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/className)
    */
  mutable className: domString,
  /**
    Allows for manipulation of element's class content attribute as a set of whitespace-separated tokens through a DOMTokenList object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/classList)
    */
  classList: domTokenList,
  /**
    Returns the value of element's slot content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/slot)
    */
  mutable slot: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/attributes)
    */
  attributes: namedNodeMap,
  /**
    Returns element's shadow root, if any, and if shadow root's mode is "open", and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/shadowRoot)
    */
  shadowRoot: Null.t<shadowRoot>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/part)
    */
  part: domTokenList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollTop)
    */
  mutable scrollTop: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollLeft)
    */
  mutable scrollLeft: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollWidth)
    */
  scrollWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollHeight)
    */
  scrollHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientTop)
    */
  clientTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientLeft)
    */
  clientLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientWidth)
    */
  clientWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientHeight)
    */
  clientHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/currentCSSZoom)
    */
  currentCSSZoom: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/innerHTML)
    */
  mutable innerHTML: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/outerHTML)
    */
  mutable outerHTML: unknown,
  // End base properties from Element

  // Base properties from Node
  /**
    Returns the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeType)
    */
  nodeType: int,
  /**
    Returns a string appropriate for the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeName)
    */
  nodeName: domString,
  /**
    Returns node's node document's document base URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/baseURI)
    */
  baseURI: usvString,
  /**
    Returns true if node is connected and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isConnected)
    */
  isConnected: bool,
  /**
    Returns the node document. Returns null for documents.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/ownerDocument)
    */
  ownerDocument: Null.t<document>,
  /**
    Returns the parent.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentNode)
    */
  parentNode: Null.t<node>,
  /**
    Returns the parent element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentElement)
    */
  parentElement: Null.t<htmlElement>,
  /**
    Returns the children.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/childNodes)
    */
  childNodes: nodeListOf<node>,
  /**
    Returns the first child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/firstChild)
    */
  firstChild: Null.t<node>,
  /**
    Returns the last child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lastChild)
    */
  lastChild: Null.t<node>,
  /**
    Returns the previous sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/previousSibling)
    */
  previousSibling: Null.t<node>,
  /**
    Returns the next sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nextSibling)
    */
  nextSibling: Null.t<node>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeValue)
    */
  mutable nodeValue: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/textContent)
    */
  mutable textContent: Null.t<domString>,
  // End base properties from Node

  /**
    Sets or retrieves the window or frame at which to target content.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAreaElement/target)
    */
  mutable target: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAreaElement/ping)
    */
  mutable ping: usvString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAreaElement/rel)
    */
  mutable rel: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAreaElement/relList)
    */
  relList: domTokenList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAreaElement/referrerPolicy)
    */
  mutable referrerPolicy: domString,
}

/**
HTML <script> elements expose the HTMLScriptElement interface, which provides special properties and methods for manipulating the behavior and execution of <script> elements (beyond the inherited HTMLElement interface).
[See HTMLScriptElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLScriptElement)
*/
and htmlScriptElement = {
  // Base properties from HTMLElement
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/title)
    */
  mutable title: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/lang)
    */
  mutable lang: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/translate)
    */
  mutable translate: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/dir)
    */
  mutable dir: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/hidden)
    */
  mutable hidden: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/inert)
    */
  mutable inert: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKey)
    */
  mutable accessKey: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKeyLabel)
    */
  accessKeyLabel: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/draggable)
    */
  mutable draggable: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/spellcheck)
    */
  mutable spellcheck: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/autocapitalize)
    */
  mutable autocapitalize: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/innerText)
    */
  mutable innerText: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/outerText)
    */
  mutable outerText: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/popover)
    */
  mutable popover: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetParent)
    */
  offsetParent: Null.t<element>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetTop)
    */
  offsetTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetLeft)
    */
  offsetLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetWidth)
    */
  offsetWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetHeight)
    */
  offsetHeight: int,
  // End base properties from HTMLElement

  // Base properties from Element
  /**
    Returns the namespace.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/namespaceURI)
    */
  namespaceURI: Null.t<domString>,
  /**
    Returns the namespace prefix.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/prefix)
    */
  prefix: Null.t<domString>,
  /**
    Returns the local name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/localName)
    */
  localName: domString,
  /**
    Returns the HTML-uppercased qualified name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/tagName)
    */
  tagName: domString,
  /**
    Returns the value of element's id content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/id)
    */
  mutable id: domString,
  /**
    Returns the value of element's class content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/className)
    */
  mutable className: domString,
  /**
    Allows for manipulation of element's class content attribute as a set of whitespace-separated tokens through a DOMTokenList object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/classList)
    */
  classList: domTokenList,
  /**
    Returns the value of element's slot content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/slot)
    */
  mutable slot: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/attributes)
    */
  attributes: namedNodeMap,
  /**
    Returns element's shadow root, if any, and if shadow root's mode is "open", and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/shadowRoot)
    */
  shadowRoot: Null.t<shadowRoot>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/part)
    */
  part: domTokenList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollTop)
    */
  mutable scrollTop: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollLeft)
    */
  mutable scrollLeft: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollWidth)
    */
  scrollWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollHeight)
    */
  scrollHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientTop)
    */
  clientTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientLeft)
    */
  clientLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientWidth)
    */
  clientWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientHeight)
    */
  clientHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/currentCSSZoom)
    */
  currentCSSZoom: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/innerHTML)
    */
  mutable innerHTML: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/outerHTML)
    */
  mutable outerHTML: unknown,
  // End base properties from Element

  // Base properties from Node
  /**
    Returns the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeType)
    */
  nodeType: int,
  /**
    Returns a string appropriate for the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeName)
    */
  nodeName: domString,
  /**
    Returns node's node document's document base URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/baseURI)
    */
  baseURI: usvString,
  /**
    Returns true if node is connected and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isConnected)
    */
  isConnected: bool,
  /**
    Returns the node document. Returns null for documents.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/ownerDocument)
    */
  ownerDocument: Null.t<document>,
  /**
    Returns the parent.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentNode)
    */
  parentNode: Null.t<node>,
  /**
    Returns the parent element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentElement)
    */
  parentElement: Null.t<htmlElement>,
  /**
    Returns the children.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/childNodes)
    */
  childNodes: nodeListOf<node>,
  /**
    Returns the first child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/firstChild)
    */
  firstChild: Null.t<node>,
  /**
    Returns the last child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lastChild)
    */
  lastChild: Null.t<node>,
  /**
    Returns the previous sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/previousSibling)
    */
  previousSibling: Null.t<node>,
  /**
    Returns the next sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nextSibling)
    */
  nextSibling: Null.t<node>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeValue)
    */
  mutable nodeValue: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/textContent)
    */
  mutable textContent: Null.t<domString>,
  // End base properties from Node

  /**
    Retrieves the URL to an external file that contains the source code or data.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLScriptElement/src)
    */
  mutable src: usvString,
  /**
    Sets or retrieves the MIME type for the associated scripting engine.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLScriptElement/type)
    */
  @as("type")
  mutable type_: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLScriptElement/noModule)
    */
  mutable noModule: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLScriptElement/async)
    */
  mutable async: bool,
  /**
    Sets or retrieves the status of the script.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLScriptElement/defer)
    */
  mutable defer: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLScriptElement/crossOrigin)
    */
  mutable crossOrigin: Null.t<domString>,
  /**
    Retrieves or sets the text of the object as a string.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLScriptElement/text)
    */
  mutable text: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLScriptElement/integrity)
    */
  mutable integrity: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLScriptElement/referrerPolicy)
    */
  mutable referrerPolicy: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLScriptElement/fetchPriority)
    */
  mutable fetchPriority: domString,
}

/**
An object providing methods which are not dependent on any particular document. Such an object is returned by the Document.implementation property.
[See DOMImplementation on MDN](https://developer.mozilla.org/docs/Web/API/DOMImplementation)
*/
and domImplementation = {}

/**
A Node containing a doctype.
[See DocumentType on MDN](https://developer.mozilla.org/docs/Web/API/DocumentType)
*/
and documentType = {
  // Base properties from Node
  /**
    Returns the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeType)
    */
  nodeType: int,
  /**
    Returns a string appropriate for the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeName)
    */
  nodeName: domString,
  /**
    Returns node's node document's document base URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/baseURI)
    */
  baseURI: usvString,
  /**
    Returns true if node is connected and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isConnected)
    */
  isConnected: bool,
  /**
    Returns the node document. Returns null for documents.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/ownerDocument)
    */
  ownerDocument: Null.t<document>,
  /**
    Returns the parent.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentNode)
    */
  parentNode: Null.t<node>,
  /**
    Returns the parent element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentElement)
    */
  parentElement: Null.t<htmlElement>,
  /**
    Returns the children.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/childNodes)
    */
  childNodes: nodeListOf<node>,
  /**
    Returns the first child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/firstChild)
    */
  firstChild: Null.t<node>,
  /**
    Returns the last child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lastChild)
    */
  lastChild: Null.t<node>,
  /**
    Returns the previous sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/previousSibling)
    */
  previousSibling: Null.t<node>,
  /**
    Returns the next sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nextSibling)
    */
  nextSibling: Null.t<node>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeValue)
    */
  mutable nodeValue: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/textContent)
    */
  mutable textContent: Null.t<domString>,
  // End base properties from Node

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DocumentType/name)
    */
  name: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DocumentType/publicId)
    */
  publicId: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DocumentType/systemId)
    */
  systemId: domString,
}

/**
Any web page loaded in the browser and serves as an entry point into the web page's content, which is the DOM tree.
[See Document on MDN](https://developer.mozilla.org/docs/Web/API/Document)
*/
and document = {
  // Base properties from Node
  /**
    Returns the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeType)
    */
  nodeType: int,
  /**
    Returns a string appropriate for the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeName)
    */
  nodeName: domString,
  /**
    Returns node's node document's document base URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/baseURI)
    */
  baseURI: usvString,
  /**
    Returns true if node is connected and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isConnected)
    */
  isConnected: bool,
  /**
    Returns the node document. Returns null for documents.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/ownerDocument)
    */
  ownerDocument: Null.t<document>,
  /**
    Returns the parent.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentNode)
    */
  parentNode: Null.t<node>,
  /**
    Returns the parent element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentElement)
    */
  parentElement: Null.t<htmlElement>,
  /**
    Returns the children.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/childNodes)
    */
  childNodes: nodeListOf<node>,
  /**
    Returns the first child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/firstChild)
    */
  firstChild: Null.t<node>,
  /**
    Returns the last child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lastChild)
    */
  lastChild: Null.t<node>,
  /**
    Returns the previous sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/previousSibling)
    */
  previousSibling: Null.t<node>,
  /**
    Returns the next sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nextSibling)
    */
  nextSibling: Null.t<node>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeValue)
    */
  mutable nodeValue: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/textContent)
    */
  mutable textContent: Null.t<domString>,
  // End base properties from Node

  /**
    Gets the implementation object of the current document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/implementation)
    */
  implementation: domImplementation,
  /**
    Sets or gets the URL for the current document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/URL)
    */
  @as("URL")
  uRL: usvString,
  /**
    Returns document's URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/documentURI)
    */
  documentURI: usvString,
  /**
    Gets a value that indicates whether standards-compliant mode is switched on for the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/compatMode)
    */
  compatMode: domString,
  /**
    Returns document's encoding.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/characterSet)
    */
  characterSet: domString,
  /**
    Returns document's content type.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/contentType)
    */
  contentType: domString,
  /**
    Gets an object representing the document type declaration associated with the current document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/doctype)
    */
  doctype: Null.t<documentType>,
  /**
    Gets a reference to the root node of the document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/documentElement)
    */
  documentElement: htmlElement,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/scrollingElement)
    */
  scrollingElement: Null.t<element>,
  /**
    Returns true if document has the ability to display elements fullscreen and fullscreen is supported, or false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/fullscreenEnabled)
    */
  fullscreenEnabled: bool,
  /**
    Contains information about the current URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/location)
    */
  mutable location: location,
  /**
    Gets the URL of the location that referred the user to the current page.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/referrer)
    */
  referrer: usvString,
  /**
    Returns the HTTP cookies that apply to the Document. If there are no cookies or cookies can't be applied to this resource, the empty string will be returned.

Can be set, to add a new cookie to the element's set of HTTP cookies.

If the contents are sandboxed into a unique origin (e.g. in an iframe with the sandbox attribute), a "SecurityError" DOMException will be thrown on getting and setting.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/cookie)
    */
  mutable cookie: usvString,
  /**
    Gets the date that the page was last modified, if the page supplies one.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/lastModified)
    */
  lastModified: domString,
  /**
    Retrieves a value that indicates the current state of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/readyState)
    */
  readyState: documentReadyState,
  /**
    Contains the title of the document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/title)
    */
  mutable title: domString,
  /**
    Sets or retrieves a value that indicates the reading order of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/dir)
    */
  mutable dir: domString,
  /**
    Specifies the beginning and end of the document body.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/body)
    */
  mutable body: htmlElement,
  /**
    Returns the head element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/head)
    */
  head: htmlHeadElement,
  /**
    Retrieves a collection, in source order, of img objects in the document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/images)
    */
  images: htmlCollectionOf<htmlImageElement>,
  /**
    Retrieves a collection of all embed objects in the document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/embeds)
    */
  embeds: htmlCollectionOf<htmlEmbedElement>,
  /**
    Return an HTMLCollection of the embed elements in the Document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/plugins)
    */
  plugins: htmlCollectionOf<htmlEmbedElement>,
  /**
    Retrieves a collection of all a objects that specify the href property and all area objects in the document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/links)
    */
  links: htmlCollectionOf<htmlElement>,
  /**
    Retrieves a collection, in source order, of all form objects in the document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/forms)
    */
  forms: htmlCollectionOf<htmlFormElement>,
  /**
    Retrieves a collection of all script objects in the document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/scripts)
    */
  scripts: htmlCollectionOf<htmlScriptElement>,
  /**
    Returns the script element, or the SVG script element, that is currently executing, as long as the element represents a classic script. In the case of reentrant script execution, returns the one that most recently started executing amongst those that have not yet finished executing.

Returns null if the Document is not currently executing a script or SVG script element (e.g., because the running script is an event handler, or a timeout), or if the currently executing script or SVG script element represents a module script.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/currentScript)
    */
  currentScript: Null.t<htmlElement>,
  /**
    Returns the Window object of the active document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/defaultView)
    */
  defaultView: Null.t<window>,
  /**
    Sets or gets a value that indicates whether the document can be edited.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/designMode)
    */
  mutable designMode: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/hidden)
    */
  hidden: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/visibilityState)
    */
  visibilityState: documentVisibilityState,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/pictureInPictureEnabled)
    */
  pictureInPictureEnabled: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/fragmentDirective)
    */
  fragmentDirective: fragmentDirective,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/timeline)
    */
  timeline: documentTimeline,
}

/**
A window containing a DOM document; the document property points to the DOM document loaded in that window.
[See Window on MDN](https://developer.mozilla.org/docs/Web/API/Window)
*/
and window = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/window)
    */
  window: window,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/self)
    */
  self: window,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/document)
    */
  document: document,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/name)
    */
  mutable name: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/location)
    */
  mutable location: location,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/history)
    */
  history: history,
  /**
    Defines a new custom element, mapping the given name to the given constructor as an autonomous custom element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/customElements)
    */
  customElements: customElementRegistry,
  /**
    Returns true if the location bar is visible; otherwise, returns false.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/locationbar)
    */
  locationbar: barProp,
  /**
    Returns true if the menu bar is visible; otherwise, returns false.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/menubar)
    */
  menubar: barProp,
  /**
    Returns true if the personal bar is visible; otherwise, returns false.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/personalbar)
    */
  personalbar: barProp,
  /**
    Returns true if the scrollbars are visible; otherwise, returns false.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/scrollbars)
    */
  scrollbars: barProp,
  /**
    Returns true if the status bar is visible; otherwise, returns false.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/statusbar)
    */
  statusbar: barProp,
  /**
    Returns true if the toolbar is visible; otherwise, returns false.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/toolbar)
    */
  toolbar: barProp,
  /**
    Returns true if the window has been closed, false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/closed)
    */
  closed: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/frames)
    */
  frames: window,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/length)
    */
  length: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/top)
    */
  top: Null.t<window>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/opener)
    */
  mutable opener: any,
  /**
    Refers to either the parent WindowProxy, or itself.

It can rarely be null e.g. for contentWindow of an iframe that is already removed from the parent.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/parent)
    */
  parent: window,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/frameElement)
    */
  frameElement: Null.t<element>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/navigator)
    */
  navigator: navigator,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/screen)
    */
  screen: screen,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/visualViewport)
    */
  visualViewport: Null.t<visualViewport>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/innerWidth)
    */
  innerWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/innerHeight)
    */
  innerHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/scrollX)
    */
  scrollX: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/scrollY)
    */
  scrollY: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/screenX)
    */
  screenX: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/screenLeft)
    */
  screenLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/screenY)
    */
  screenY: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/screenTop)
    */
  screenTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/outerWidth)
    */
  outerWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/outerHeight)
    */
  outerHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/devicePixelRatio)
    */
  devicePixelRatio: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/speechSynthesis)
    */
  speechSynthesis: speechSynthesis,
}

/**
An event which takes place in the DOM.
[See Event on MDN](https://developer.mozilla.org/docs/Web/API/Event)
*/
and event = {
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
  timeStamp: domHighResTimeStamp,
}

/**
A MutationRecord represents an individual DOM mutation. It is the object that is passed to MutationObserver's callback.
[See MutationRecord on MDN](https://developer.mozilla.org/docs/Web/API/MutationRecord)
*/
and mutationRecord = {
  /**
    Returns "attributes" if it was an attribute mutation. "characterData" if it was a mutation to a CharacterData node. And "childList" if it was a mutation to the tree of nodes.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MutationRecord/type)
    */
  @as("type")
  type_: string,
  /**
    Returns the node the mutation affected, depending on the type. For "attributes", it is the element whose attribute changed. For "characterData", it is the CharacterData node. For "childList", it is the node whose children changed.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MutationRecord/target)
    */
  target: node,
  /**
    Return the nodes added and removed respectively.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MutationRecord/addedNodes)
    */
  addedNodes: nodeList,
  /**
    Return the nodes added and removed respectively.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MutationRecord/removedNodes)
    */
  removedNodes: nodeList,
  /**
    Return the previous and next sibling respectively of the added or removed nodes, and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MutationRecord/previousSibling)
    */
  previousSibling: Null.t<node>,
  /**
    Return the previous and next sibling respectively of the added or removed nodes, and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MutationRecord/nextSibling)
    */
  nextSibling: Null.t<node>,
  /**
    Returns the local name of the changed attribute, and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MutationRecord/attributeName)
    */
  attributeName: Null.t<domString>,
  /**
    Returns the namespace of the changed attribute, and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MutationRecord/attributeNamespace)
    */
  attributeNamespace: Null.t<domString>,
  /**
    The return value depends on type. For "attributes", it is the value of the changed attribute before the change. For "characterData", it is the data of the changed node before the change. For "childList", it is null.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MutationRecord/oldValue)
    */
  oldValue: Null.t<domString>,
}

/**
A single style sheet. CSS style sheets will further implement the more specialized CSSStyleSheet interface.
[See StyleSheet on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet)
*/
type rec styleSheet = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/type)
    */
  @as("type")
  type_: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/href)
    */
  href: Null.t<usvString>,
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
  title: Null.t<domString>,
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
*/
and cssStyleSheet = {
  // Base properties from StyleSheet
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/type)
    */
  @as("type")
  type_: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/href)
    */
  href: Null.t<usvString>,
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
  title: Null.t<domString>,
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
and cssRuleList = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSRuleList/length)
    */
  length: any,
}

/**
An object that is a CSS declaration block, and exposes style information and various style-related methods and properties.
[See CSSStyleDeclaration on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleDeclaration)
*/
and cssStyleDeclaration = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleDeclaration/cssText)
    */
  mutable cssText: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleDeclaration/length)
    */
  length: any,
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
A controller object that allows you to abort one or more DOM requests as and when desired.
[See AbortController on MDN](https://developer.mozilla.org/docs/Web/API/AbortController)
*/
type rec abortController = {
  /**
    Returns the AbortSignal object associated with this object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbortController/signal)
    */
  signal: abortSignal,
}

/**
A signal object that allows you to communicate with a DOM request (such as a Fetch) and abort it if required via an AbortController object.
[See AbortSignal on MDN](https://developer.mozilla.org/docs/Web/API/AbortSignal)
*/
and abortSignal = {
  /**
    Returns true if this AbortSignal's AbortController has signaled to abort, and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbortSignal/aborted)
    */
  aborted: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbortSignal/reason)
    */
  reason: any,
}

/**
Provides special properties and methods (beyond the regular HTMLElement object interface it also has available to it by inheritance) for manipulating the layout and presentation of tables in an HTML document.
[See HTMLTableElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableElement)
*/
type rec htmlTableElement = {
  // Base properties from HTMLElement
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/title)
    */
  mutable title: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/lang)
    */
  mutable lang: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/translate)
    */
  mutable translate: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/dir)
    */
  mutable dir: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/hidden)
    */
  mutable hidden: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/inert)
    */
  mutable inert: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKey)
    */
  mutable accessKey: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKeyLabel)
    */
  accessKeyLabel: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/draggable)
    */
  mutable draggable: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/spellcheck)
    */
  mutable spellcheck: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/autocapitalize)
    */
  mutable autocapitalize: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/innerText)
    */
  mutable innerText: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/outerText)
    */
  mutable outerText: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/popover)
    */
  mutable popover: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetParent)
    */
  offsetParent: Null.t<element>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetTop)
    */
  offsetTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetLeft)
    */
  offsetLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetWidth)
    */
  offsetWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetHeight)
    */
  offsetHeight: int,
  // End base properties from HTMLElement

  // Base properties from Element
  /**
    Returns the namespace.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/namespaceURI)
    */
  namespaceURI: Null.t<domString>,
  /**
    Returns the namespace prefix.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/prefix)
    */
  prefix: Null.t<domString>,
  /**
    Returns the local name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/localName)
    */
  localName: domString,
  /**
    Returns the HTML-uppercased qualified name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/tagName)
    */
  tagName: domString,
  /**
    Returns the value of element's id content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/id)
    */
  mutable id: domString,
  /**
    Returns the value of element's class content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/className)
    */
  mutable className: domString,
  /**
    Allows for manipulation of element's class content attribute as a set of whitespace-separated tokens through a DOMTokenList object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/classList)
    */
  classList: domTokenList,
  /**
    Returns the value of element's slot content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/slot)
    */
  mutable slot: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/attributes)
    */
  attributes: namedNodeMap,
  /**
    Returns element's shadow root, if any, and if shadow root's mode is "open", and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/shadowRoot)
    */
  shadowRoot: Null.t<shadowRoot>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/part)
    */
  part: domTokenList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollTop)
    */
  mutable scrollTop: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollLeft)
    */
  mutable scrollLeft: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollWidth)
    */
  scrollWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollHeight)
    */
  scrollHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientTop)
    */
  clientTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientLeft)
    */
  clientLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientWidth)
    */
  clientWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientHeight)
    */
  clientHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/currentCSSZoom)
    */
  currentCSSZoom: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/innerHTML)
    */
  mutable innerHTML: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/outerHTML)
    */
  mutable outerHTML: unknown,
  // End base properties from Element

  // Base properties from Node
  /**
    Returns the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeType)
    */
  nodeType: int,
  /**
    Returns a string appropriate for the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeName)
    */
  nodeName: domString,
  /**
    Returns node's node document's document base URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/baseURI)
    */
  baseURI: usvString,
  /**
    Returns true if node is connected and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isConnected)
    */
  isConnected: bool,
  /**
    Returns the node document. Returns null for documents.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/ownerDocument)
    */
  ownerDocument: Null.t<document>,
  /**
    Returns the parent.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentNode)
    */
  parentNode: Null.t<node>,
  /**
    Returns the parent element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentElement)
    */
  parentElement: Null.t<htmlElement>,
  /**
    Returns the children.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/childNodes)
    */
  childNodes: nodeListOf<node>,
  /**
    Returns the first child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/firstChild)
    */
  firstChild: Null.t<node>,
  /**
    Returns the last child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lastChild)
    */
  lastChild: Null.t<node>,
  /**
    Returns the previous sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/previousSibling)
    */
  previousSibling: Null.t<node>,
  /**
    Returns the next sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nextSibling)
    */
  nextSibling: Null.t<node>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeValue)
    */
  mutable nodeValue: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/textContent)
    */
  mutable textContent: Null.t<domString>,
  // End base properties from Node

  /**
    Retrieves the caption object of a table.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableElement/caption)
    */
  mutable caption: Null.t<htmlTableCaptionElement>,
  /**
    Retrieves the tHead object of the table.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableElement/tHead)
    */
  mutable tHead: Null.t<htmlTableSectionElement>,
  /**
    Retrieves the tFoot object of the table.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableElement/tFoot)
    */
  mutable tFoot: Null.t<htmlTableSectionElement>,
  /**
    Retrieves a collection of all tBody objects in the table. Objects in this collection are in source order.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableElement/tBodies)
    */
  tBodies: htmlCollectionOf<htmlTableSectionElement>,
  /**
    Sets or retrieves the number of horizontal rows contained in the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableElement/rows)
    */
  rows: htmlCollectionOf<htmlTableRowElement>,
}

/**
Special properties (beyond the regular HTMLElement interface it also has available to it by inheritance) for manipulating table caption elements.
[See HTMLTableCaptionElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableCaptionElement)
*/
and htmlTableCaptionElement = {
  // Base properties from HTMLElement
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/title)
    */
  mutable title: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/lang)
    */
  mutable lang: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/translate)
    */
  mutable translate: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/dir)
    */
  mutable dir: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/hidden)
    */
  mutable hidden: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/inert)
    */
  mutable inert: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKey)
    */
  mutable accessKey: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKeyLabel)
    */
  accessKeyLabel: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/draggable)
    */
  mutable draggable: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/spellcheck)
    */
  mutable spellcheck: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/autocapitalize)
    */
  mutable autocapitalize: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/innerText)
    */
  mutable innerText: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/outerText)
    */
  mutable outerText: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/popover)
    */
  mutable popover: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetParent)
    */
  offsetParent: Null.t<element>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetTop)
    */
  offsetTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetLeft)
    */
  offsetLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetWidth)
    */
  offsetWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetHeight)
    */
  offsetHeight: int,
  // End base properties from HTMLElement

  // Base properties from Element
  /**
    Returns the namespace.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/namespaceURI)
    */
  namespaceURI: Null.t<domString>,
  /**
    Returns the namespace prefix.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/prefix)
    */
  prefix: Null.t<domString>,
  /**
    Returns the local name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/localName)
    */
  localName: domString,
  /**
    Returns the HTML-uppercased qualified name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/tagName)
    */
  tagName: domString,
  /**
    Returns the value of element's id content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/id)
    */
  mutable id: domString,
  /**
    Returns the value of element's class content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/className)
    */
  mutable className: domString,
  /**
    Allows for manipulation of element's class content attribute as a set of whitespace-separated tokens through a DOMTokenList object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/classList)
    */
  classList: domTokenList,
  /**
    Returns the value of element's slot content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/slot)
    */
  mutable slot: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/attributes)
    */
  attributes: namedNodeMap,
  /**
    Returns element's shadow root, if any, and if shadow root's mode is "open", and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/shadowRoot)
    */
  shadowRoot: Null.t<shadowRoot>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/part)
    */
  part: domTokenList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollTop)
    */
  mutable scrollTop: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollLeft)
    */
  mutable scrollLeft: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollWidth)
    */
  scrollWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollHeight)
    */
  scrollHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientTop)
    */
  clientTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientLeft)
    */
  clientLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientWidth)
    */
  clientWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientHeight)
    */
  clientHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/currentCSSZoom)
    */
  currentCSSZoom: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/innerHTML)
    */
  mutable innerHTML: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/outerHTML)
    */
  mutable outerHTML: unknown,
  // End base properties from Element

  // Base properties from Node
  /**
    Returns the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeType)
    */
  nodeType: int,
  /**
    Returns a string appropriate for the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeName)
    */
  nodeName: domString,
  /**
    Returns node's node document's document base URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/baseURI)
    */
  baseURI: usvString,
  /**
    Returns true if node is connected and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isConnected)
    */
  isConnected: bool,
  /**
    Returns the node document. Returns null for documents.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/ownerDocument)
    */
  ownerDocument: Null.t<document>,
  /**
    Returns the parent.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentNode)
    */
  parentNode: Null.t<node>,
  /**
    Returns the parent element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentElement)
    */
  parentElement: Null.t<htmlElement>,
  /**
    Returns the children.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/childNodes)
    */
  childNodes: nodeListOf<node>,
  /**
    Returns the first child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/firstChild)
    */
  firstChild: Null.t<node>,
  /**
    Returns the last child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lastChild)
    */
  lastChild: Null.t<node>,
  /**
    Returns the previous sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/previousSibling)
    */
  previousSibling: Null.t<node>,
  /**
    Returns the next sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nextSibling)
    */
  nextSibling: Null.t<node>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeValue)
    */
  mutable nodeValue: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/textContent)
    */
  mutable textContent: Null.t<domString>,
  // End base properties from Node
}

/**
Provides special properties and methods (beyond the HTMLElement interface it also has available to it by inheritance) for manipulating the layout and presentation of sections, that is headers, footers and bodies, in an HTML table.
[See HTMLTableSectionElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableSectionElement)
*/
and htmlTableSectionElement = {
  // Base properties from HTMLElement
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/title)
    */
  mutable title: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/lang)
    */
  mutable lang: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/translate)
    */
  mutable translate: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/dir)
    */
  mutable dir: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/hidden)
    */
  mutable hidden: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/inert)
    */
  mutable inert: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKey)
    */
  mutable accessKey: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKeyLabel)
    */
  accessKeyLabel: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/draggable)
    */
  mutable draggable: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/spellcheck)
    */
  mutable spellcheck: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/autocapitalize)
    */
  mutable autocapitalize: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/innerText)
    */
  mutable innerText: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/outerText)
    */
  mutable outerText: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/popover)
    */
  mutable popover: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetParent)
    */
  offsetParent: Null.t<element>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetTop)
    */
  offsetTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetLeft)
    */
  offsetLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetWidth)
    */
  offsetWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetHeight)
    */
  offsetHeight: int,
  // End base properties from HTMLElement

  // Base properties from Element
  /**
    Returns the namespace.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/namespaceURI)
    */
  namespaceURI: Null.t<domString>,
  /**
    Returns the namespace prefix.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/prefix)
    */
  prefix: Null.t<domString>,
  /**
    Returns the local name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/localName)
    */
  localName: domString,
  /**
    Returns the HTML-uppercased qualified name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/tagName)
    */
  tagName: domString,
  /**
    Returns the value of element's id content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/id)
    */
  mutable id: domString,
  /**
    Returns the value of element's class content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/className)
    */
  mutable className: domString,
  /**
    Allows for manipulation of element's class content attribute as a set of whitespace-separated tokens through a DOMTokenList object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/classList)
    */
  classList: domTokenList,
  /**
    Returns the value of element's slot content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/slot)
    */
  mutable slot: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/attributes)
    */
  attributes: namedNodeMap,
  /**
    Returns element's shadow root, if any, and if shadow root's mode is "open", and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/shadowRoot)
    */
  shadowRoot: Null.t<shadowRoot>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/part)
    */
  part: domTokenList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollTop)
    */
  mutable scrollTop: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollLeft)
    */
  mutable scrollLeft: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollWidth)
    */
  scrollWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollHeight)
    */
  scrollHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientTop)
    */
  clientTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientLeft)
    */
  clientLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientWidth)
    */
  clientWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientHeight)
    */
  clientHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/currentCSSZoom)
    */
  currentCSSZoom: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/innerHTML)
    */
  mutable innerHTML: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/outerHTML)
    */
  mutable outerHTML: unknown,
  // End base properties from Element

  // Base properties from Node
  /**
    Returns the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeType)
    */
  nodeType: int,
  /**
    Returns a string appropriate for the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeName)
    */
  nodeName: domString,
  /**
    Returns node's node document's document base URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/baseURI)
    */
  baseURI: usvString,
  /**
    Returns true if node is connected and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isConnected)
    */
  isConnected: bool,
  /**
    Returns the node document. Returns null for documents.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/ownerDocument)
    */
  ownerDocument: Null.t<document>,
  /**
    Returns the parent.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentNode)
    */
  parentNode: Null.t<node>,
  /**
    Returns the parent element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentElement)
    */
  parentElement: Null.t<htmlElement>,
  /**
    Returns the children.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/childNodes)
    */
  childNodes: nodeListOf<node>,
  /**
    Returns the first child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/firstChild)
    */
  firstChild: Null.t<node>,
  /**
    Returns the last child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lastChild)
    */
  lastChild: Null.t<node>,
  /**
    Returns the previous sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/previousSibling)
    */
  previousSibling: Null.t<node>,
  /**
    Returns the next sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nextSibling)
    */
  nextSibling: Null.t<node>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeValue)
    */
  mutable nodeValue: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/textContent)
    */
  mutable textContent: Null.t<domString>,
  // End base properties from Node

  /**
    Sets or retrieves the number of horizontal rows contained in the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableSectionElement/rows)
    */
  rows: htmlCollectionOf<htmlTableRowElement>,
}

/**
Provides special properties and methods (beyond the regular HTMLElement interface it also has available to it by inheritance) for manipulating the layout and presentation of table cells, either header or data cells, in an HTML document.
[See HTMLTableCellElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableCellElement)
*/
and htmlTableCellElement = {
  // Base properties from HTMLElement
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/title)
    */
  mutable title: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/lang)
    */
  mutable lang: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/translate)
    */
  mutable translate: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/dir)
    */
  mutable dir: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/hidden)
    */
  mutable hidden: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/inert)
    */
  mutable inert: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKey)
    */
  mutable accessKey: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKeyLabel)
    */
  accessKeyLabel: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/draggable)
    */
  mutable draggable: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/spellcheck)
    */
  mutable spellcheck: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/autocapitalize)
    */
  mutable autocapitalize: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/innerText)
    */
  mutable innerText: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/outerText)
    */
  mutable outerText: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/popover)
    */
  mutable popover: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetParent)
    */
  offsetParent: Null.t<element>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetTop)
    */
  offsetTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetLeft)
    */
  offsetLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetWidth)
    */
  offsetWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetHeight)
    */
  offsetHeight: int,
  // End base properties from HTMLElement

  // Base properties from Element
  /**
    Returns the namespace.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/namespaceURI)
    */
  namespaceURI: Null.t<domString>,
  /**
    Returns the namespace prefix.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/prefix)
    */
  prefix: Null.t<domString>,
  /**
    Returns the local name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/localName)
    */
  localName: domString,
  /**
    Returns the HTML-uppercased qualified name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/tagName)
    */
  tagName: domString,
  /**
    Returns the value of element's id content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/id)
    */
  mutable id: domString,
  /**
    Returns the value of element's class content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/className)
    */
  mutable className: domString,
  /**
    Allows for manipulation of element's class content attribute as a set of whitespace-separated tokens through a DOMTokenList object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/classList)
    */
  classList: domTokenList,
  /**
    Returns the value of element's slot content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/slot)
    */
  mutable slot: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/attributes)
    */
  attributes: namedNodeMap,
  /**
    Returns element's shadow root, if any, and if shadow root's mode is "open", and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/shadowRoot)
    */
  shadowRoot: Null.t<shadowRoot>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/part)
    */
  part: domTokenList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollTop)
    */
  mutable scrollTop: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollLeft)
    */
  mutable scrollLeft: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollWidth)
    */
  scrollWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollHeight)
    */
  scrollHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientTop)
    */
  clientTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientLeft)
    */
  clientLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientWidth)
    */
  clientWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientHeight)
    */
  clientHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/currentCSSZoom)
    */
  currentCSSZoom: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/innerHTML)
    */
  mutable innerHTML: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/outerHTML)
    */
  mutable outerHTML: unknown,
  // End base properties from Element

  // Base properties from Node
  /**
    Returns the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeType)
    */
  nodeType: int,
  /**
    Returns a string appropriate for the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeName)
    */
  nodeName: domString,
  /**
    Returns node's node document's document base URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/baseURI)
    */
  baseURI: usvString,
  /**
    Returns true if node is connected and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isConnected)
    */
  isConnected: bool,
  /**
    Returns the node document. Returns null for documents.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/ownerDocument)
    */
  ownerDocument: Null.t<document>,
  /**
    Returns the parent.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentNode)
    */
  parentNode: Null.t<node>,
  /**
    Returns the parent element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentElement)
    */
  parentElement: Null.t<htmlElement>,
  /**
    Returns the children.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/childNodes)
    */
  childNodes: nodeListOf<node>,
  /**
    Returns the first child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/firstChild)
    */
  firstChild: Null.t<node>,
  /**
    Returns the last child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lastChild)
    */
  lastChild: Null.t<node>,
  /**
    Returns the previous sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/previousSibling)
    */
  previousSibling: Null.t<node>,
  /**
    Returns the next sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nextSibling)
    */
  nextSibling: Null.t<node>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeValue)
    */
  mutable nodeValue: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/textContent)
    */
  mutable textContent: Null.t<domString>,
  // End base properties from Node

  /**
    Sets or retrieves the number columns in the table that the object should span.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableCellElement/colSpan)
    */
  mutable colSpan: any,
  /**
    Sets or retrieves how many rows in a table the cell should span.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableCellElement/rowSpan)
    */
  mutable rowSpan: any,
  /**
    Sets or retrieves a list of header cells that provide information for the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableCellElement/headers)
    */
  mutable headers: domString,
  /**
    Retrieves the position of the object in the cells collection of a row.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableCellElement/cellIndex)
    */
  cellIndex: int,
  /**
    Sets or retrieves the group of cells in a table to which the object's information applies.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableCellElement/scope)
    */
  mutable scope: domString,
  /**
    Sets or retrieves abbreviated text for the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableCellElement/abbr)
    */
  mutable abbr: domString,
}

/**
Provides special properties and methods (beyond the HTMLElement interface it also has available to it by inheritance) for manipulating the layout and presentation of rows in an HTML table.
[See HTMLTableRowElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableRowElement)
*/
and htmlTableRowElement = {
  // Base properties from HTMLElement
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/title)
    */
  mutable title: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/lang)
    */
  mutable lang: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/translate)
    */
  mutable translate: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/dir)
    */
  mutable dir: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/hidden)
    */
  mutable hidden: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/inert)
    */
  mutable inert: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKey)
    */
  mutable accessKey: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKeyLabel)
    */
  accessKeyLabel: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/draggable)
    */
  mutable draggable: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/spellcheck)
    */
  mutable spellcheck: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/autocapitalize)
    */
  mutable autocapitalize: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/innerText)
    */
  mutable innerText: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/outerText)
    */
  mutable outerText: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/popover)
    */
  mutable popover: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetParent)
    */
  offsetParent: Null.t<element>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetTop)
    */
  offsetTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetLeft)
    */
  offsetLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetWidth)
    */
  offsetWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetHeight)
    */
  offsetHeight: int,
  // End base properties from HTMLElement

  // Base properties from Element
  /**
    Returns the namespace.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/namespaceURI)
    */
  namespaceURI: Null.t<domString>,
  /**
    Returns the namespace prefix.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/prefix)
    */
  prefix: Null.t<domString>,
  /**
    Returns the local name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/localName)
    */
  localName: domString,
  /**
    Returns the HTML-uppercased qualified name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/tagName)
    */
  tagName: domString,
  /**
    Returns the value of element's id content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/id)
    */
  mutable id: domString,
  /**
    Returns the value of element's class content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/className)
    */
  mutable className: domString,
  /**
    Allows for manipulation of element's class content attribute as a set of whitespace-separated tokens through a DOMTokenList object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/classList)
    */
  classList: domTokenList,
  /**
    Returns the value of element's slot content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/slot)
    */
  mutable slot: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/attributes)
    */
  attributes: namedNodeMap,
  /**
    Returns element's shadow root, if any, and if shadow root's mode is "open", and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/shadowRoot)
    */
  shadowRoot: Null.t<shadowRoot>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/part)
    */
  part: domTokenList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollTop)
    */
  mutable scrollTop: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollLeft)
    */
  mutable scrollLeft: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollWidth)
    */
  scrollWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollHeight)
    */
  scrollHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientTop)
    */
  clientTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientLeft)
    */
  clientLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientWidth)
    */
  clientWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientHeight)
    */
  clientHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/currentCSSZoom)
    */
  currentCSSZoom: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/innerHTML)
    */
  mutable innerHTML: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/outerHTML)
    */
  mutable outerHTML: unknown,
  // End base properties from Element

  // Base properties from Node
  /**
    Returns the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeType)
    */
  nodeType: int,
  /**
    Returns a string appropriate for the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeName)
    */
  nodeName: domString,
  /**
    Returns node's node document's document base URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/baseURI)
    */
  baseURI: usvString,
  /**
    Returns true if node is connected and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isConnected)
    */
  isConnected: bool,
  /**
    Returns the node document. Returns null for documents.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/ownerDocument)
    */
  ownerDocument: Null.t<document>,
  /**
    Returns the parent.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentNode)
    */
  parentNode: Null.t<node>,
  /**
    Returns the parent element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentElement)
    */
  parentElement: Null.t<htmlElement>,
  /**
    Returns the children.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/childNodes)
    */
  childNodes: nodeListOf<node>,
  /**
    Returns the first child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/firstChild)
    */
  firstChild: Null.t<node>,
  /**
    Returns the last child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lastChild)
    */
  lastChild: Null.t<node>,
  /**
    Returns the previous sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/previousSibling)
    */
  previousSibling: Null.t<node>,
  /**
    Returns the next sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nextSibling)
    */
  nextSibling: Null.t<node>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeValue)
    */
  mutable nodeValue: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/textContent)
    */
  mutable textContent: Null.t<domString>,
  // End base properties from Node

  /**
    Retrieves the position of the object in the rows collection for the table.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableRowElement/rowIndex)
    */
  rowIndex: int,
  /**
    Retrieves the position of the object in the collection.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableRowElement/sectionRowIndex)
    */
  sectionRowIndex: int,
  /**
    Retrieves a collection of all cells in the table row.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableRowElement/cells)
    */
  cells: htmlCollectionOf<htmlTableCellElement>,
}

/**
Provides properties and methods (beyond the regular HTMLElement interface it also has available to it by inheritance) for manipulating <button> elements.
[See HTMLButtonElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLButtonElement)
*/
type rec htmlButtonElement = {
  // Base properties from HTMLElement
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/title)
    */
  mutable title: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/lang)
    */
  mutable lang: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/translate)
    */
  mutable translate: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/dir)
    */
  mutable dir: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/hidden)
    */
  mutable hidden: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/inert)
    */
  mutable inert: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKey)
    */
  mutable accessKey: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKeyLabel)
    */
  accessKeyLabel: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/draggable)
    */
  mutable draggable: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/spellcheck)
    */
  mutable spellcheck: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/autocapitalize)
    */
  mutable autocapitalize: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/innerText)
    */
  mutable innerText: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/outerText)
    */
  mutable outerText: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/popover)
    */
  mutable popover: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetParent)
    */
  offsetParent: Null.t<element>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetTop)
    */
  offsetTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetLeft)
    */
  offsetLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetWidth)
    */
  offsetWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetHeight)
    */
  offsetHeight: int,
  // End base properties from HTMLElement

  // Base properties from Element
  /**
    Returns the namespace.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/namespaceURI)
    */
  namespaceURI: Null.t<domString>,
  /**
    Returns the namespace prefix.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/prefix)
    */
  prefix: Null.t<domString>,
  /**
    Returns the local name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/localName)
    */
  localName: domString,
  /**
    Returns the HTML-uppercased qualified name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/tagName)
    */
  tagName: domString,
  /**
    Returns the value of element's id content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/id)
    */
  mutable id: domString,
  /**
    Returns the value of element's class content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/className)
    */
  mutable className: domString,
  /**
    Allows for manipulation of element's class content attribute as a set of whitespace-separated tokens through a DOMTokenList object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/classList)
    */
  classList: domTokenList,
  /**
    Returns the value of element's slot content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/slot)
    */
  mutable slot: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/attributes)
    */
  attributes: namedNodeMap,
  /**
    Returns element's shadow root, if any, and if shadow root's mode is "open", and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/shadowRoot)
    */
  shadowRoot: Null.t<shadowRoot>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/part)
    */
  part: domTokenList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollTop)
    */
  mutable scrollTop: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollLeft)
    */
  mutable scrollLeft: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollWidth)
    */
  scrollWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollHeight)
    */
  scrollHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientTop)
    */
  clientTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientLeft)
    */
  clientLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientWidth)
    */
  clientWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientHeight)
    */
  clientHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/currentCSSZoom)
    */
  currentCSSZoom: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/innerHTML)
    */
  mutable innerHTML: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/outerHTML)
    */
  mutable outerHTML: unknown,
  // End base properties from Element

  // Base properties from Node
  /**
    Returns the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeType)
    */
  nodeType: int,
  /**
    Returns a string appropriate for the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeName)
    */
  nodeName: domString,
  /**
    Returns node's node document's document base URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/baseURI)
    */
  baseURI: usvString,
  /**
    Returns true if node is connected and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isConnected)
    */
  isConnected: bool,
  /**
    Returns the node document. Returns null for documents.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/ownerDocument)
    */
  ownerDocument: Null.t<document>,
  /**
    Returns the parent.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentNode)
    */
  parentNode: Null.t<node>,
  /**
    Returns the parent element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentElement)
    */
  parentElement: Null.t<htmlElement>,
  /**
    Returns the children.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/childNodes)
    */
  childNodes: nodeListOf<node>,
  /**
    Returns the first child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/firstChild)
    */
  firstChild: Null.t<node>,
  /**
    Returns the last child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lastChild)
    */
  lastChild: Null.t<node>,
  /**
    Returns the previous sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/previousSibling)
    */
  previousSibling: Null.t<node>,
  /**
    Returns the next sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nextSibling)
    */
  nextSibling: Null.t<node>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeValue)
    */
  mutable nodeValue: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/textContent)
    */
  mutable textContent: Null.t<domString>,
  // End base properties from Node

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLButtonElement/disabled)
    */
  mutable disabled: bool,
  /**
    Retrieves a reference to the form that the object is embedded in.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLButtonElement/form)
    */
  form: Null.t<htmlFormElement>,
  /**
    Overrides the action attribute (where the data on a form is sent) on the parent form element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLButtonElement/formAction)
    */
  mutable formAction: usvString,
  /**
    Used to override the encoding (formEnctype attribute) specified on the form element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLButtonElement/formEnctype)
    */
  mutable formEnctype: domString,
  /**
    Overrides the submit method attribute previously specified on a form element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLButtonElement/formMethod)
    */
  mutable formMethod: domString,
  /**
    Sets or retrieves the name of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLButtonElement/name)
    */
  mutable name: domString,
  /**
    Gets the classification and default behavior of the button.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLButtonElement/type)
    */
  @as("type")
  mutable type_: string,
  /**
    Sets or retrieves the default or selected value of the control.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLButtonElement/value)
    */
  mutable value: domString,
  /**
    Returns whether an element will successfully validate based on forms validation rules and constraints.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLButtonElement/willValidate)
    */
  willValidate: bool,
  /**
    Returns a  ValidityState object that represents the validity states of an element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLButtonElement/validity)
    */
  validity: validityState,
  /**
    Returns the error message that would be displayed if the user submits the form, or an empty string if no error message. It also triggers the standard error message, such as "this is a required field". The result is that the user sees validation messages without actually submitting.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLButtonElement/validationMessage)
    */
  validationMessage: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLButtonElement/labels)
    */
  labels: nodeListOf<htmlLabelElement>,
}

/**
Gives access to properties specific to <label> elements. It inherits methods and properties from the base HTMLElement interface.
[See HTMLLabelElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLabelElement)
*/
and htmlLabelElement = {
  // Base properties from HTMLElement
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/title)
    */
  mutable title: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/lang)
    */
  mutable lang: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/translate)
    */
  mutable translate: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/dir)
    */
  mutable dir: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/hidden)
    */
  mutable hidden: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/inert)
    */
  mutable inert: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKey)
    */
  mutable accessKey: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKeyLabel)
    */
  accessKeyLabel: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/draggable)
    */
  mutable draggable: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/spellcheck)
    */
  mutable spellcheck: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/autocapitalize)
    */
  mutable autocapitalize: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/innerText)
    */
  mutable innerText: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/outerText)
    */
  mutable outerText: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/popover)
    */
  mutable popover: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetParent)
    */
  offsetParent: Null.t<element>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetTop)
    */
  offsetTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetLeft)
    */
  offsetLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetWidth)
    */
  offsetWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetHeight)
    */
  offsetHeight: int,
  // End base properties from HTMLElement

  // Base properties from Element
  /**
    Returns the namespace.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/namespaceURI)
    */
  namespaceURI: Null.t<domString>,
  /**
    Returns the namespace prefix.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/prefix)
    */
  prefix: Null.t<domString>,
  /**
    Returns the local name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/localName)
    */
  localName: domString,
  /**
    Returns the HTML-uppercased qualified name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/tagName)
    */
  tagName: domString,
  /**
    Returns the value of element's id content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/id)
    */
  mutable id: domString,
  /**
    Returns the value of element's class content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/className)
    */
  mutable className: domString,
  /**
    Allows for manipulation of element's class content attribute as a set of whitespace-separated tokens through a DOMTokenList object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/classList)
    */
  classList: domTokenList,
  /**
    Returns the value of element's slot content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/slot)
    */
  mutable slot: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/attributes)
    */
  attributes: namedNodeMap,
  /**
    Returns element's shadow root, if any, and if shadow root's mode is "open", and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/shadowRoot)
    */
  shadowRoot: Null.t<shadowRoot>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/part)
    */
  part: domTokenList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollTop)
    */
  mutable scrollTop: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollLeft)
    */
  mutable scrollLeft: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollWidth)
    */
  scrollWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollHeight)
    */
  scrollHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientTop)
    */
  clientTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientLeft)
    */
  clientLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientWidth)
    */
  clientWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientHeight)
    */
  clientHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/currentCSSZoom)
    */
  currentCSSZoom: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/innerHTML)
    */
  mutable innerHTML: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/outerHTML)
    */
  mutable outerHTML: unknown,
  // End base properties from Element

  // Base properties from Node
  /**
    Returns the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeType)
    */
  nodeType: int,
  /**
    Returns a string appropriate for the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeName)
    */
  nodeName: domString,
  /**
    Returns node's node document's document base URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/baseURI)
    */
  baseURI: usvString,
  /**
    Returns true if node is connected and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isConnected)
    */
  isConnected: bool,
  /**
    Returns the node document. Returns null for documents.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/ownerDocument)
    */
  ownerDocument: Null.t<document>,
  /**
    Returns the parent.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentNode)
    */
  parentNode: Null.t<node>,
  /**
    Returns the parent element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentElement)
    */
  parentElement: Null.t<htmlElement>,
  /**
    Returns the children.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/childNodes)
    */
  childNodes: nodeListOf<node>,
  /**
    Returns the first child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/firstChild)
    */
  firstChild: Null.t<node>,
  /**
    Returns the last child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lastChild)
    */
  lastChild: Null.t<node>,
  /**
    Returns the previous sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/previousSibling)
    */
  previousSibling: Null.t<node>,
  /**
    Returns the next sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nextSibling)
    */
  nextSibling: Null.t<node>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeValue)
    */
  mutable nodeValue: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/textContent)
    */
  mutable textContent: Null.t<domString>,
  // End base properties from Node

  /**
    Retrieves a reference to the form that the object is embedded in.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLabelElement/form)
    */
  form: Null.t<htmlFormElement>,
  /**
    Sets or retrieves the object to which the given label object is assigned.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLabelElement/htmlFor)
    */
  mutable htmlFor: domString,
  /**
    Returns the form control that is associated with this element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLabelElement/control)
    */
  control: Null.t<htmlElement>,
}

/**
Provides special properties and methods for manipulating the layout and presentation of <textarea> elements.
[See HTMLTextAreaElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement)
*/
and htmlTextAreaElement = {
  // Base properties from HTMLElement
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/title)
    */
  mutable title: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/lang)
    */
  mutable lang: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/translate)
    */
  mutable translate: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/dir)
    */
  mutable dir: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/hidden)
    */
  mutable hidden: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/inert)
    */
  mutable inert: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKey)
    */
  mutable accessKey: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKeyLabel)
    */
  accessKeyLabel: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/draggable)
    */
  mutable draggable: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/spellcheck)
    */
  mutable spellcheck: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/autocapitalize)
    */
  mutable autocapitalize: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/innerText)
    */
  mutable innerText: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/outerText)
    */
  mutable outerText: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/popover)
    */
  mutable popover: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetParent)
    */
  offsetParent: Null.t<element>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetTop)
    */
  offsetTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetLeft)
    */
  offsetLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetWidth)
    */
  offsetWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetHeight)
    */
  offsetHeight: int,
  // End base properties from HTMLElement

  // Base properties from Element
  /**
    Returns the namespace.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/namespaceURI)
    */
  namespaceURI: Null.t<domString>,
  /**
    Returns the namespace prefix.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/prefix)
    */
  prefix: Null.t<domString>,
  /**
    Returns the local name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/localName)
    */
  localName: domString,
  /**
    Returns the HTML-uppercased qualified name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/tagName)
    */
  tagName: domString,
  /**
    Returns the value of element's id content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/id)
    */
  mutable id: domString,
  /**
    Returns the value of element's class content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/className)
    */
  mutable className: domString,
  /**
    Allows for manipulation of element's class content attribute as a set of whitespace-separated tokens through a DOMTokenList object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/classList)
    */
  classList: domTokenList,
  /**
    Returns the value of element's slot content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/slot)
    */
  mutable slot: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/attributes)
    */
  attributes: namedNodeMap,
  /**
    Returns element's shadow root, if any, and if shadow root's mode is "open", and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/shadowRoot)
    */
  shadowRoot: Null.t<shadowRoot>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/part)
    */
  part: domTokenList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollTop)
    */
  mutable scrollTop: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollLeft)
    */
  mutable scrollLeft: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollWidth)
    */
  scrollWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollHeight)
    */
  scrollHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientTop)
    */
  clientTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientLeft)
    */
  clientLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientWidth)
    */
  clientWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientHeight)
    */
  clientHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/currentCSSZoom)
    */
  currentCSSZoom: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/innerHTML)
    */
  mutable innerHTML: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/outerHTML)
    */
  mutable outerHTML: unknown,
  // End base properties from Element

  // Base properties from Node
  /**
    Returns the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeType)
    */
  nodeType: int,
  /**
    Returns a string appropriate for the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeName)
    */
  nodeName: domString,
  /**
    Returns node's node document's document base URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/baseURI)
    */
  baseURI: usvString,
  /**
    Returns true if node is connected and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isConnected)
    */
  isConnected: bool,
  /**
    Returns the node document. Returns null for documents.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/ownerDocument)
    */
  ownerDocument: Null.t<document>,
  /**
    Returns the parent.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentNode)
    */
  parentNode: Null.t<node>,
  /**
    Returns the parent element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentElement)
    */
  parentElement: Null.t<htmlElement>,
  /**
    Returns the children.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/childNodes)
    */
  childNodes: nodeListOf<node>,
  /**
    Returns the first child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/firstChild)
    */
  firstChild: Null.t<node>,
  /**
    Returns the last child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lastChild)
    */
  lastChild: Null.t<node>,
  /**
    Returns the previous sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/previousSibling)
    */
  previousSibling: Null.t<node>,
  /**
    Returns the next sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nextSibling)
    */
  nextSibling: Null.t<node>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeValue)
    */
  mutable nodeValue: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/textContent)
    */
  mutable textContent: Null.t<domString>,
  // End base properties from Node

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/autocomplete)
    */
  mutable autocomplete: string,
  /**
    Sets or retrieves the width of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/cols)
    */
  mutable cols: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/disabled)
    */
  mutable disabled: bool,
  /**
    Retrieves a reference to the form that the object is embedded in.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/form)
    */
  form: Null.t<htmlFormElement>,
  /**
    Sets or retrieves the maximum number of characters that the user can enter in a text control.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/maxLength)
    */
  mutable maxLength: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/minLength)
    */
  mutable minLength: int,
  /**
    Sets or retrieves the name of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/name)
    */
  mutable name: domString,
  /**
    Gets or sets a text string that is displayed in an input field as a hint or prompt to users as the format or type of information they need to enter.The text appears in an input field until the user puts focus on the field.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/placeholder)
    */
  mutable placeholder: domString,
  /**
    Sets or retrieves the value indicated whether the content of the object is read-only.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/readOnly)
    */
  mutable readOnly: bool,
  /**
    When present, marks an element that can't be submitted without a value.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/required)
    */
  mutable required: bool,
  /**
    Sets or retrieves the number of horizontal rows contained in the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/rows)
    */
  mutable rows: any,
  /**
    Sets or retrieves how to handle wordwrapping in the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/wrap)
    */
  mutable wrap: domString,
  /**
    Retrieves the type of control.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/type)
    */
  @as("type")
  type_: domString,
  /**
    Sets or retrieves the initial contents of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/defaultValue)
    */
  mutable defaultValue: domString,
  /**
    Retrieves or sets the text in the entry field of the textArea element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/value)
    */
  mutable value: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/textLength)
    */
  textLength: any,
  /**
    Returns whether an element will successfully validate based on forms validation rules and constraints.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/willValidate)
    */
  willValidate: bool,
  /**
    Returns a  ValidityState object that represents the validity states of an element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/validity)
    */
  validity: validityState,
  /**
    Returns the error message that would be displayed if the user submits the form, or an empty string if no error message. It also triggers the standard error message, such as "this is a required field". The result is that the user sees validation messages without actually submitting.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/validationMessage)
    */
  validationMessage: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/labels)
    */
  labels: nodeListOf<htmlLabelElement>,
  /**
    Gets or sets the starting position or offset of a text selection.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/selectionStart)
    */
  mutable selectionStart: any,
  /**
    Gets or sets the end position or offset of a text selection.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/selectionEnd)
    */
  mutable selectionEnd: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement/selectionDirection)
    */
  mutable selectionDirection: string,
}

/**
Provides properties and methods (beyond those inherited from HTMLElement) for manipulating the layout and presentation of <output> elements.
[See HTMLOutputElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOutputElement)
*/
and htmlOutputElement = {
  // Base properties from HTMLElement
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/title)
    */
  mutable title: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/lang)
    */
  mutable lang: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/translate)
    */
  mutable translate: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/dir)
    */
  mutable dir: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/hidden)
    */
  mutable hidden: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/inert)
    */
  mutable inert: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKey)
    */
  mutable accessKey: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKeyLabel)
    */
  accessKeyLabel: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/draggable)
    */
  mutable draggable: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/spellcheck)
    */
  mutable spellcheck: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/autocapitalize)
    */
  mutable autocapitalize: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/innerText)
    */
  mutable innerText: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/outerText)
    */
  mutable outerText: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/popover)
    */
  mutable popover: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetParent)
    */
  offsetParent: Null.t<element>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetTop)
    */
  offsetTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetLeft)
    */
  offsetLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetWidth)
    */
  offsetWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetHeight)
    */
  offsetHeight: int,
  // End base properties from HTMLElement

  // Base properties from Element
  /**
    Returns the namespace.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/namespaceURI)
    */
  namespaceURI: Null.t<domString>,
  /**
    Returns the namespace prefix.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/prefix)
    */
  prefix: Null.t<domString>,
  /**
    Returns the local name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/localName)
    */
  localName: domString,
  /**
    Returns the HTML-uppercased qualified name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/tagName)
    */
  tagName: domString,
  /**
    Returns the value of element's id content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/id)
    */
  mutable id: domString,
  /**
    Returns the value of element's class content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/className)
    */
  mutable className: domString,
  /**
    Allows for manipulation of element's class content attribute as a set of whitespace-separated tokens through a DOMTokenList object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/classList)
    */
  classList: domTokenList,
  /**
    Returns the value of element's slot content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/slot)
    */
  mutable slot: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/attributes)
    */
  attributes: namedNodeMap,
  /**
    Returns element's shadow root, if any, and if shadow root's mode is "open", and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/shadowRoot)
    */
  shadowRoot: Null.t<shadowRoot>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/part)
    */
  part: domTokenList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollTop)
    */
  mutable scrollTop: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollLeft)
    */
  mutable scrollLeft: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollWidth)
    */
  scrollWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollHeight)
    */
  scrollHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientTop)
    */
  clientTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientLeft)
    */
  clientLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientWidth)
    */
  clientWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientHeight)
    */
  clientHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/currentCSSZoom)
    */
  currentCSSZoom: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/innerHTML)
    */
  mutable innerHTML: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/outerHTML)
    */
  mutable outerHTML: unknown,
  // End base properties from Element

  // Base properties from Node
  /**
    Returns the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeType)
    */
  nodeType: int,
  /**
    Returns a string appropriate for the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeName)
    */
  nodeName: domString,
  /**
    Returns node's node document's document base URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/baseURI)
    */
  baseURI: usvString,
  /**
    Returns true if node is connected and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isConnected)
    */
  isConnected: bool,
  /**
    Returns the node document. Returns null for documents.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/ownerDocument)
    */
  ownerDocument: Null.t<document>,
  /**
    Returns the parent.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentNode)
    */
  parentNode: Null.t<node>,
  /**
    Returns the parent element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentElement)
    */
  parentElement: Null.t<htmlElement>,
  /**
    Returns the children.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/childNodes)
    */
  childNodes: nodeListOf<node>,
  /**
    Returns the first child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/firstChild)
    */
  firstChild: Null.t<node>,
  /**
    Returns the last child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lastChild)
    */
  lastChild: Null.t<node>,
  /**
    Returns the previous sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/previousSibling)
    */
  previousSibling: Null.t<node>,
  /**
    Returns the next sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nextSibling)
    */
  nextSibling: Null.t<node>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeValue)
    */
  mutable nodeValue: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/textContent)
    */
  mutable textContent: Null.t<domString>,
  // End base properties from Node

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOutputElement/htmlFor)
    */
  htmlFor: domTokenList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOutputElement/form)
    */
  form: Null.t<htmlFormElement>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOutputElement/name)
    */
  mutable name: domString,
  /**
    Returns the string "output".
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOutputElement/type)
    */
  @as("type")
  type_: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOutputElement/defaultValue)
    */
  mutable defaultValue: domString,
  /**
    Returns the element's current value.

Can be set, to change the value.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOutputElement/value)
    */
  mutable value: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOutputElement/willValidate)
    */
  willValidate: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOutputElement/validity)
    */
  validity: validityState,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOutputElement/validationMessage)
    */
  validationMessage: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOutputElement/labels)
    */
  labels: nodeListOf<htmlLabelElement>,
}

/**
Provides special properties and methods for manipulating the options, layout, and presentation of <input> elements.
[See HTMLInputElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement)
*/
and htmlInputElement = {
  // Base properties from HTMLElement
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/title)
    */
  mutable title: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/lang)
    */
  mutable lang: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/translate)
    */
  mutable translate: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/dir)
    */
  mutable dir: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/hidden)
    */
  mutable hidden: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/inert)
    */
  mutable inert: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKey)
    */
  mutable accessKey: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKeyLabel)
    */
  accessKeyLabel: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/draggable)
    */
  mutable draggable: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/spellcheck)
    */
  mutable spellcheck: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/autocapitalize)
    */
  mutable autocapitalize: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/innerText)
    */
  mutable innerText: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/outerText)
    */
  mutable outerText: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/popover)
    */
  mutable popover: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetParent)
    */
  offsetParent: Null.t<element>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetTop)
    */
  offsetTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetLeft)
    */
  offsetLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetWidth)
    */
  offsetWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetHeight)
    */
  offsetHeight: int,
  // End base properties from HTMLElement

  // Base properties from Element
  /**
    Returns the namespace.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/namespaceURI)
    */
  namespaceURI: Null.t<domString>,
  /**
    Returns the namespace prefix.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/prefix)
    */
  prefix: Null.t<domString>,
  /**
    Returns the local name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/localName)
    */
  localName: domString,
  /**
    Returns the HTML-uppercased qualified name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/tagName)
    */
  tagName: domString,
  /**
    Returns the value of element's id content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/id)
    */
  mutable id: domString,
  /**
    Returns the value of element's class content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/className)
    */
  mutable className: domString,
  /**
    Allows for manipulation of element's class content attribute as a set of whitespace-separated tokens through a DOMTokenList object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/classList)
    */
  classList: domTokenList,
  /**
    Returns the value of element's slot content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/slot)
    */
  mutable slot: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/attributes)
    */
  attributes: namedNodeMap,
  /**
    Returns element's shadow root, if any, and if shadow root's mode is "open", and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/shadowRoot)
    */
  shadowRoot: Null.t<shadowRoot>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/part)
    */
  part: domTokenList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollTop)
    */
  mutable scrollTop: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollLeft)
    */
  mutable scrollLeft: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollWidth)
    */
  scrollWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollHeight)
    */
  scrollHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientTop)
    */
  clientTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientLeft)
    */
  clientLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientWidth)
    */
  clientWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientHeight)
    */
  clientHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/currentCSSZoom)
    */
  currentCSSZoom: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/innerHTML)
    */
  mutable innerHTML: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/outerHTML)
    */
  mutable outerHTML: unknown,
  // End base properties from Element

  // Base properties from Node
  /**
    Returns the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeType)
    */
  nodeType: int,
  /**
    Returns a string appropriate for the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeName)
    */
  nodeName: domString,
  /**
    Returns node's node document's document base URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/baseURI)
    */
  baseURI: usvString,
  /**
    Returns true if node is connected and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isConnected)
    */
  isConnected: bool,
  /**
    Returns the node document. Returns null for documents.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/ownerDocument)
    */
  ownerDocument: Null.t<document>,
  /**
    Returns the parent.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentNode)
    */
  parentNode: Null.t<node>,
  /**
    Returns the parent element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentElement)
    */
  parentElement: Null.t<htmlElement>,
  /**
    Returns the children.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/childNodes)
    */
  childNodes: nodeListOf<node>,
  /**
    Returns the first child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/firstChild)
    */
  firstChild: Null.t<node>,
  /**
    Returns the last child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lastChild)
    */
  lastChild: Null.t<node>,
  /**
    Returns the previous sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/previousSibling)
    */
  previousSibling: Null.t<node>,
  /**
    Returns the next sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nextSibling)
    */
  nextSibling: Null.t<node>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeValue)
    */
  mutable nodeValue: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/textContent)
    */
  mutable textContent: Null.t<domString>,
  // End base properties from Node

  /**
    Sets or retrieves a comma-separated list of content types.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/accept)
    */
  mutable accept: domString,
  /**
    Sets or retrieves a text alternative to the graphic.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/alt)
    */
  mutable alt: domString,
  /**
    Specifies whether autocomplete is applied to an editable text field.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/autocomplete)
    */
  mutable autocomplete: string,
  /**
    Sets or retrieves the state of the check box or radio button.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/defaultChecked)
    */
  mutable defaultChecked: bool,
  /**
    Sets or retrieves the state of the check box or radio button.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/checked)
    */
  mutable checked: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/disabled)
    */
  mutable disabled: bool,
  /**
    Retrieves a reference to the form that the object is embedded in.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/form)
    */
  form: Null.t<htmlFormElement>,
  /**
    Returns a FileList object on a file type input object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/files)
    */
  mutable files: Null.t<fileList>,
  /**
    Overrides the action attribute (where the data on a form is sent) on the parent form element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/formAction)
    */
  mutable formAction: usvString,
  /**
    Used to override the encoding (formEnctype attribute) specified on the form element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/formEnctype)
    */
  mutable formEnctype: domString,
  /**
    Overrides the submit method attribute previously specified on a form element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/formMethod)
    */
  mutable formMethod: domString,
  /**
    Sets or retrieves the height of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/height)
    */
  mutable height: any,
  /**
    When set, overrides the rendering of checkbox controls so that the current value is not visible.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/indeterminate)
    */
  mutable indeterminate: bool,
  /**
    Specifies the ID of a pre-defined datalist of options for an input element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/list)
    */
  list: Null.t<htmlDataListElement>,
  /**
    Defines the maximum acceptable value for an input element with type="number".When used with the min and step attributes, lets you control the range and increment (such as only even numbers) that the user can enter into an input field.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/max)
    */
  mutable max: domString,
  /**
    Sets or retrieves the maximum number of characters that the user can enter in a text control.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/maxLength)
    */
  mutable maxLength: int,
  /**
    Defines the minimum acceptable value for an input element with type="number". When used with the max and step attributes, lets you control the range and increment (such as even numbers only) that the user can enter into an input field.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/min)
    */
  mutable min: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/minLength)
    */
  mutable minLength: int,
  /**
    Sets or retrieves the Boolean value indicating whether multiple items can be selected from a list.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/multiple)
    */
  mutable multiple: bool,
  /**
    Sets or retrieves the name of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/name)
    */
  mutable name: domString,
  /**
    Gets or sets a string containing a regular expression that the user's input must match.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/pattern)
    */
  mutable pattern: domString,
  /**
    Gets or sets a text string that is displayed in an input field as a hint or prompt to users as the format or type of information they need to enter.The text appears in an input field until the user puts focus on the field.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/placeholder)
    */
  mutable placeholder: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/readOnly)
    */
  mutable readOnly: bool,
  /**
    When present, marks an element that can't be submitted without a value.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/required)
    */
  mutable required: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/size)
    */
  mutable size: any,
  /**
    The address or URL of the a media resource that is to be considered.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/src)
    */
  mutable src: usvString,
  /**
    Defines an increment or jump between values that you want to allow the user to enter. When used with the max and min attributes, lets you control the range and increment (for example, allow only even numbers) that the user can enter into an input field.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/step)
    */
  mutable step: domString,
  /**
    Returns the content type of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/type)
    */
  @as("type")
  mutable type_: domString,
  /**
    Sets or retrieves the initial contents of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/defaultValue)
    */
  mutable defaultValue: domString,
  /**
    Returns the value of the data at the cursor's current position.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/value)
    */
  mutable value: domString,
  /**
    Returns a Date object representing the form control's value, if applicable; otherwise, returns null. Can be set, to change the value. Throws an "InvalidStateError" DOMException if the control isn't date- or time-based.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/valueAsDate)
    */
  mutable valueAsDate: Null.t<Date.t>,
  /**
    Returns the input field value as a number.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/valueAsNumber)
    */
  mutable valueAsNumber: any,
  /**
    Sets or retrieves the width of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/width)
    */
  mutable width: any,
  /**
    Returns whether an element will successfully validate based on forms validation rules and constraints.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/willValidate)
    */
  willValidate: bool,
  /**
    Returns a  ValidityState object that represents the validity states of an element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/validity)
    */
  validity: validityState,
  /**
    Returns the error message that would be displayed if the user submits the form, or an empty string if no error message. It also triggers the standard error message, such as "this is a required field". The result is that the user sees validation messages without actually submitting.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/validationMessage)
    */
  validationMessage: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/labels)
    */
  labels: Null.t<nodeListOf<htmlLabelElement>>,
  /**
    Gets or sets the starting position or offset of a text selection.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/selectionStart)
    */
  mutable selectionStart: Null.t<any>,
  /**
    Gets or sets the end position or offset of a text selection.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/selectionEnd)
    */
  mutable selectionEnd: Null.t<any>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/selectionDirection)
    */
  mutable selectionDirection: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/webkitdirectory)
    */
  mutable webkitdirectory: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/webkitEntries)
    */
  webkitEntries: array<fileSystemEntry>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/capture)
    */
  mutable capture: domString,
}

/**
Provides special properties (beyond the HTMLElement object interface it also has available to it by inheritance) to manipulate <datalist> elements and their content.
[See HTMLDataListElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLDataListElement)
*/
and htmlDataListElement = {
  // Base properties from HTMLElement
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/title)
    */
  mutable title: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/lang)
    */
  mutable lang: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/translate)
    */
  mutable translate: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/dir)
    */
  mutable dir: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/hidden)
    */
  mutable hidden: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/inert)
    */
  mutable inert: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKey)
    */
  mutable accessKey: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKeyLabel)
    */
  accessKeyLabel: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/draggable)
    */
  mutable draggable: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/spellcheck)
    */
  mutable spellcheck: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/autocapitalize)
    */
  mutable autocapitalize: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/innerText)
    */
  mutable innerText: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/outerText)
    */
  mutable outerText: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/popover)
    */
  mutable popover: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetParent)
    */
  offsetParent: Null.t<element>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetTop)
    */
  offsetTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetLeft)
    */
  offsetLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetWidth)
    */
  offsetWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetHeight)
    */
  offsetHeight: int,
  // End base properties from HTMLElement

  // Base properties from Element
  /**
    Returns the namespace.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/namespaceURI)
    */
  namespaceURI: Null.t<domString>,
  /**
    Returns the namespace prefix.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/prefix)
    */
  prefix: Null.t<domString>,
  /**
    Returns the local name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/localName)
    */
  localName: domString,
  /**
    Returns the HTML-uppercased qualified name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/tagName)
    */
  tagName: domString,
  /**
    Returns the value of element's id content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/id)
    */
  mutable id: domString,
  /**
    Returns the value of element's class content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/className)
    */
  mutable className: domString,
  /**
    Allows for manipulation of element's class content attribute as a set of whitespace-separated tokens through a DOMTokenList object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/classList)
    */
  classList: domTokenList,
  /**
    Returns the value of element's slot content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/slot)
    */
  mutable slot: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/attributes)
    */
  attributes: namedNodeMap,
  /**
    Returns element's shadow root, if any, and if shadow root's mode is "open", and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/shadowRoot)
    */
  shadowRoot: Null.t<shadowRoot>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/part)
    */
  part: domTokenList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollTop)
    */
  mutable scrollTop: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollLeft)
    */
  mutable scrollLeft: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollWidth)
    */
  scrollWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollHeight)
    */
  scrollHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientTop)
    */
  clientTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientLeft)
    */
  clientLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientWidth)
    */
  clientWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientHeight)
    */
  clientHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/currentCSSZoom)
    */
  currentCSSZoom: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/innerHTML)
    */
  mutable innerHTML: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/outerHTML)
    */
  mutable outerHTML: unknown,
  // End base properties from Element

  // Base properties from Node
  /**
    Returns the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeType)
    */
  nodeType: int,
  /**
    Returns a string appropriate for the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeName)
    */
  nodeName: domString,
  /**
    Returns node's node document's document base URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/baseURI)
    */
  baseURI: usvString,
  /**
    Returns true if node is connected and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isConnected)
    */
  isConnected: bool,
  /**
    Returns the node document. Returns null for documents.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/ownerDocument)
    */
  ownerDocument: Null.t<document>,
  /**
    Returns the parent.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentNode)
    */
  parentNode: Null.t<node>,
  /**
    Returns the parent element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentElement)
    */
  parentElement: Null.t<htmlElement>,
  /**
    Returns the children.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/childNodes)
    */
  childNodes: nodeListOf<node>,
  /**
    Returns the first child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/firstChild)
    */
  firstChild: Null.t<node>,
  /**
    Returns the last child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lastChild)
    */
  lastChild: Null.t<node>,
  /**
    Returns the previous sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/previousSibling)
    */
  previousSibling: Null.t<node>,
  /**
    Returns the next sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nextSibling)
    */
  nextSibling: Null.t<node>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeValue)
    */
  mutable nodeValue: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/textContent)
    */
  mutable textContent: Null.t<domString>,
  // End base properties from Node

  /**
    Returns an HTMLCollection of the option elements of the datalist element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLDataListElement/options)
    */
  options: htmlCollectionOf<htmlOptionElement>,
}

/**
A <select> HTML Element. These elements also share all of the properties and methods of other HTML elements via the HTMLElement interface.
[See HTMLSelectElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement)
*/
and htmlSelectElement = {
  // Base properties from HTMLElement
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/title)
    */
  mutable title: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/lang)
    */
  mutable lang: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/translate)
    */
  mutable translate: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/dir)
    */
  mutable dir: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/hidden)
    */
  mutable hidden: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/inert)
    */
  mutable inert: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKey)
    */
  mutable accessKey: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKeyLabel)
    */
  accessKeyLabel: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/draggable)
    */
  mutable draggable: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/spellcheck)
    */
  mutable spellcheck: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/autocapitalize)
    */
  mutable autocapitalize: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/innerText)
    */
  mutable innerText: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/outerText)
    */
  mutable outerText: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/popover)
    */
  mutable popover: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetParent)
    */
  offsetParent: Null.t<element>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetTop)
    */
  offsetTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetLeft)
    */
  offsetLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetWidth)
    */
  offsetWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetHeight)
    */
  offsetHeight: int,
  // End base properties from HTMLElement

  // Base properties from Element
  /**
    Returns the namespace.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/namespaceURI)
    */
  namespaceURI: Null.t<domString>,
  /**
    Returns the namespace prefix.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/prefix)
    */
  prefix: Null.t<domString>,
  /**
    Returns the local name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/localName)
    */
  localName: domString,
  /**
    Returns the HTML-uppercased qualified name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/tagName)
    */
  tagName: domString,
  /**
    Returns the value of element's id content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/id)
    */
  mutable id: domString,
  /**
    Returns the value of element's class content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/className)
    */
  mutable className: domString,
  /**
    Allows for manipulation of element's class content attribute as a set of whitespace-separated tokens through a DOMTokenList object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/classList)
    */
  classList: domTokenList,
  /**
    Returns the value of element's slot content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/slot)
    */
  mutable slot: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/attributes)
    */
  attributes: namedNodeMap,
  /**
    Returns element's shadow root, if any, and if shadow root's mode is "open", and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/shadowRoot)
    */
  shadowRoot: Null.t<shadowRoot>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/part)
    */
  part: domTokenList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollTop)
    */
  mutable scrollTop: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollLeft)
    */
  mutable scrollLeft: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollWidth)
    */
  scrollWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollHeight)
    */
  scrollHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientTop)
    */
  clientTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientLeft)
    */
  clientLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientWidth)
    */
  clientWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientHeight)
    */
  clientHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/currentCSSZoom)
    */
  currentCSSZoom: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/innerHTML)
    */
  mutable innerHTML: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/outerHTML)
    */
  mutable outerHTML: unknown,
  // End base properties from Element

  // Base properties from Node
  /**
    Returns the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeType)
    */
  nodeType: int,
  /**
    Returns a string appropriate for the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeName)
    */
  nodeName: domString,
  /**
    Returns node's node document's document base URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/baseURI)
    */
  baseURI: usvString,
  /**
    Returns true if node is connected and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isConnected)
    */
  isConnected: bool,
  /**
    Returns the node document. Returns null for documents.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/ownerDocument)
    */
  ownerDocument: Null.t<document>,
  /**
    Returns the parent.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentNode)
    */
  parentNode: Null.t<node>,
  /**
    Returns the parent element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentElement)
    */
  parentElement: Null.t<htmlElement>,
  /**
    Returns the children.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/childNodes)
    */
  childNodes: nodeListOf<node>,
  /**
    Returns the first child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/firstChild)
    */
  firstChild: Null.t<node>,
  /**
    Returns the last child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lastChild)
    */
  lastChild: Null.t<node>,
  /**
    Returns the previous sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/previousSibling)
    */
  previousSibling: Null.t<node>,
  /**
    Returns the next sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nextSibling)
    */
  nextSibling: Null.t<node>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeValue)
    */
  mutable nodeValue: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/textContent)
    */
  mutable textContent: Null.t<domString>,
  // End base properties from Node

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement/disabled)
    */
  mutable disabled: bool,
  /**
    Retrieves a reference to the form that the object is embedded in.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement/form)
    */
  form: Null.t<htmlFormElement>,
  /**
    Sets or retrieves the Boolean value indicating whether multiple items can be selected from a list.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement/multiple)
    */
  mutable multiple: bool,
  /**
    Sets or retrieves the name of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement/name)
    */
  mutable name: domString,
  /**
    When present, marks an element that can't be submitted without a value.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement/required)
    */
  mutable required: bool,
  /**
    Sets or retrieves the number of rows in the list box.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement/size)
    */
  mutable size: any,
  /**
    Retrieves the type of select control based on the value of the MULTIPLE attribute.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement/type)
    */
  @as("type")
  type_: string,
  /**
    Returns an HTMLOptionsCollection of the list of options.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement/options)
    */
  options: htmlOptionsCollection,
  /**
    Sets or retrieves the number of objects in a collection.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement/length)
    */
  mutable length: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement/selectedOptions)
    */
  selectedOptions: htmlCollectionOf<htmlOptionElement>,
  /**
    Sets or retrieves the index of the selected option in a select object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement/selectedIndex)
    */
  mutable selectedIndex: int,
  /**
    Sets or retrieves the value which is returned to the server when the form control is submitted.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement/value)
    */
  mutable value: domString,
  /**
    Returns whether an element will successfully validate based on forms validation rules and constraints.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement/willValidate)
    */
  willValidate: bool,
  /**
    Returns a  ValidityState object that represents the validity states of an element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement/validity)
    */
  validity: validityState,
  /**
    Returns the error message that would be displayed if the user submits the form, or an empty string if no error message. It also triggers the standard error message, such as "this is a required field". The result is that the user sees validation messages without actually submitting.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement/validationMessage)
    */
  validationMessage: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement/labels)
    */
  labels: nodeListOf<htmlLabelElement>,
}

/**
<option> elements and inherits all classes and methods of the HTMLElement interface.
[See HTMLOptionElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOptionElement)
*/
and htmlOptionElement = {
  // Base properties from HTMLElement
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/title)
    */
  mutable title: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/lang)
    */
  mutable lang: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/translate)
    */
  mutable translate: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/dir)
    */
  mutable dir: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/hidden)
    */
  mutable hidden: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/inert)
    */
  mutable inert: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKey)
    */
  mutable accessKey: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKeyLabel)
    */
  accessKeyLabel: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/draggable)
    */
  mutable draggable: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/spellcheck)
    */
  mutable spellcheck: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/autocapitalize)
    */
  mutable autocapitalize: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/innerText)
    */
  mutable innerText: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/outerText)
    */
  mutable outerText: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/popover)
    */
  mutable popover: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetParent)
    */
  offsetParent: Null.t<element>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetTop)
    */
  offsetTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetLeft)
    */
  offsetLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetWidth)
    */
  offsetWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetHeight)
    */
  offsetHeight: int,
  // End base properties from HTMLElement

  // Base properties from Element
  /**
    Returns the namespace.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/namespaceURI)
    */
  namespaceURI: Null.t<domString>,
  /**
    Returns the namespace prefix.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/prefix)
    */
  prefix: Null.t<domString>,
  /**
    Returns the local name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/localName)
    */
  localName: domString,
  /**
    Returns the HTML-uppercased qualified name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/tagName)
    */
  tagName: domString,
  /**
    Returns the value of element's id content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/id)
    */
  mutable id: domString,
  /**
    Returns the value of element's class content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/className)
    */
  mutable className: domString,
  /**
    Allows for manipulation of element's class content attribute as a set of whitespace-separated tokens through a DOMTokenList object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/classList)
    */
  classList: domTokenList,
  /**
    Returns the value of element's slot content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/slot)
    */
  mutable slot: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/attributes)
    */
  attributes: namedNodeMap,
  /**
    Returns element's shadow root, if any, and if shadow root's mode is "open", and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/shadowRoot)
    */
  shadowRoot: Null.t<shadowRoot>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/part)
    */
  part: domTokenList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollTop)
    */
  mutable scrollTop: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollLeft)
    */
  mutable scrollLeft: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollWidth)
    */
  scrollWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollHeight)
    */
  scrollHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientTop)
    */
  clientTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientLeft)
    */
  clientLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientWidth)
    */
  clientWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientHeight)
    */
  clientHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/currentCSSZoom)
    */
  currentCSSZoom: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/innerHTML)
    */
  mutable innerHTML: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/outerHTML)
    */
  mutable outerHTML: unknown,
  // End base properties from Element

  // Base properties from Node
  /**
    Returns the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeType)
    */
  nodeType: int,
  /**
    Returns a string appropriate for the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeName)
    */
  nodeName: domString,
  /**
    Returns node's node document's document base URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/baseURI)
    */
  baseURI: usvString,
  /**
    Returns true if node is connected and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isConnected)
    */
  isConnected: bool,
  /**
    Returns the node document. Returns null for documents.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/ownerDocument)
    */
  ownerDocument: Null.t<document>,
  /**
    Returns the parent.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentNode)
    */
  parentNode: Null.t<node>,
  /**
    Returns the parent element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentElement)
    */
  parentElement: Null.t<htmlElement>,
  /**
    Returns the children.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/childNodes)
    */
  childNodes: nodeListOf<node>,
  /**
    Returns the first child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/firstChild)
    */
  firstChild: Null.t<node>,
  /**
    Returns the last child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lastChild)
    */
  lastChild: Null.t<node>,
  /**
    Returns the previous sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/previousSibling)
    */
  previousSibling: Null.t<node>,
  /**
    Returns the next sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nextSibling)
    */
  nextSibling: Null.t<node>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeValue)
    */
  mutable nodeValue: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/textContent)
    */
  mutable textContent: Null.t<domString>,
  // End base properties from Node

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOptionElement/disabled)
    */
  mutable disabled: bool,
  /**
    Retrieves a reference to the form that the object is embedded in.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOptionElement/form)
    */
  form: Null.t<htmlFormElement>,
  /**
    Sets or retrieves a value that you can use to implement your own label functionality for the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOptionElement/label)
    */
  mutable label: domString,
  /**
    Sets or retrieves the status of an option.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOptionElement/defaultSelected)
    */
  mutable defaultSelected: bool,
  /**
    Sets or retrieves whether the option in the list box is the default item.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOptionElement/selected)
    */
  mutable selected: bool,
  /**
    Sets or retrieves the value which is returned to the server when the form control is submitted.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOptionElement/value)
    */
  mutable value: domString,
  /**
    Sets or retrieves the text string specified by the option tag.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOptionElement/text)
    */
  mutable text: domString,
  /**
    Sets or retrieves the ordinal position of an option in a list box.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOptionElement/index)
    */
  index: int,
}

/**
HTMLOptionsCollection is an interface representing a collection of HTML option elements (in document order) and offers methods and properties for traversing the list as well as optionally altering its items. This type is returned solely by the "options" property of select.
[See HTMLOptionsCollection on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOptionsCollection)
*/
and htmlOptionsCollection = {
  // Base properties from HTMLCollection
  /**
    Sets or retrieves the number of objects in a collection.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLCollection/length)
    */
  length: any,
  // End base properties from HTMLCollection

  /**
    Returns the index of the first selected item, if any, or −1 if there is no selected item.

Can be set, to change the selection.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOptionsCollection/selectedIndex)
    */
  mutable selectedIndex: int,
}

/**
[See ReadableByteStreamController on MDN](https://developer.mozilla.org/docs/Web/API/ReadableByteStreamController)
*/
type rec readableByteStreamController = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ReadableByteStreamController/byobRequest)
    */
  byobRequest: Null.t<readableStreamBYOBRequest>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ReadableByteStreamController/desiredSize)
    */
  desiredSize: Null.t<any>,
}

/**
[See ReadableStreamBYOBRequest on MDN](https://developer.mozilla.org/docs/Web/API/ReadableStreamBYOBRequest)
*/
and readableStreamBYOBRequest = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ReadableStreamBYOBRequest/view)
    */
  view: Null.t<arrayBufferView>,
}

/**
[See Animation on MDN](https://developer.mozilla.org/docs/Web/API/Animation)
*/
type rec animation = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/id)
    */
  mutable id: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/effect)
    */
  mutable effect: Null.t<animationEffect>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/timeline)
    */
  mutable timeline: Null.t<animationTimeline>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/playbackRate)
    */
  mutable playbackRate: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/playState)
    */
  playState: animationPlayState,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/replaceState)
    */
  replaceState: animationReplaceState,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/pending)
    */
  pending: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/ready)
    */
  ready: Promise.t<animation>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/finished)
    */
  finished: Promise.t<animation>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/startTime)
    */
  mutable startTime: Null.t<float>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Animation/currentTime)
    */
  mutable currentTime: Null.t<float>,
}

/**
[See FontFaceSet on MDN](https://developer.mozilla.org/docs/Web/API/FontFaceSet)
*/
type rec fontFaceSet = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFaceSet/ready)
    */
  ready: Promise.t<fontFaceSet>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFaceSet/status)
    */
  status: fontFaceSetLoadStatus,
}

/**
[See FontFace on MDN](https://developer.mozilla.org/docs/Web/API/FontFace)
*/
type rec fontFace = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace/family)
    */
  mutable family: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace/style)
    */
  mutable style: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace/weight)
    */
  mutable weight: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace/stretch)
    */
  mutable stretch: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace/unicodeRange)
    */
  mutable unicodeRange: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace/featureSettings)
    */
  mutable featureSettings: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace/display)
    */
  mutable display: fontDisplay,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace/ascentOverride)
    */
  mutable ascentOverride: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace/descentOverride)
    */
  mutable descentOverride: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace/lineGapOverride)
    */
  mutable lineGapOverride: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace/status)
    */
  status: fontFaceLoadStatus,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace/loaded)
    */
  loaded: Promise.t<fontFace>,
}

/**
The ANGLE_instanced_arrays extension is part of the WebGL API and allows to draw the same object, or groups of similar objects multiple times, if they share the same vertex data, primitive count and type.
[See ANGLE_instanced_arrays on MDN](https://developer.mozilla.org/docs/Web/API/ANGLE_instanced_arrays)
*/
type angle_instanced_arrays = {}

/**
Inherits from Event, and represents the event object of an event sent on a document or worker when its content security policy is violated.
[See SecurityPolicyViolationEvent on MDN](https://developer.mozilla.org/docs/Web/API/SecurityPolicyViolationEvent)
*/
type securityPolicyViolationEvent = {
  ...event,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SecurityPolicyViolationEvent/documentURI)
    */
  documentURI: usvString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SecurityPolicyViolationEvent/referrer)
    */
  referrer: usvString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SecurityPolicyViolationEvent/blockedURI)
    */
  blockedURI: usvString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SecurityPolicyViolationEvent/effectiveDirective)
    */
  effectiveDirective: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SecurityPolicyViolationEvent/violatedDirective)
    */
  violatedDirective: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SecurityPolicyViolationEvent/originalPolicy)
    */
  originalPolicy: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SecurityPolicyViolationEvent/sourceFile)
    */
  sourceFile: usvString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SecurityPolicyViolationEvent/sample)
    */
  sample: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SecurityPolicyViolationEvent/disposition)
    */
  disposition: securityPolicyViolationEventDisposition,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SecurityPolicyViolationEvent/statusCode)
    */
  statusCode: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SecurityPolicyViolationEvent/lineNumber)
    */
  lineNumber: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SecurityPolicyViolationEvent/columnNumber)
    */
  columnNumber: any,
}

/**
Provides the serializeToString() method to construct an XML string representing a DOM tree.
[See XMLSerializer on MDN](https://developer.mozilla.org/docs/Web/API/XMLSerializer)
*/
type xmlSerializer = {}

/**
[See EXT_blend_minmax on MDN](https://developer.mozilla.org/docs/Web/API/EXT_blend_minmax)
*/
type ext_blend_minmax = {}

/**
[See EXT_color_buffer_float on MDN](https://developer.mozilla.org/docs/Web/API/EXT_color_buffer_float)
*/
type ext_color_buffer_float = {}

/**
[See EXT_color_buffer_half_float on MDN](https://developer.mozilla.org/docs/Web/API/EXT_color_buffer_half_float)
*/
type ext_color_buffer_half_float = {}

/**
[See EXT_float_blend on MDN](https://developer.mozilla.org/docs/Web/API/EXT_float_blend)
*/
type ext_float_blend = {}

/**
The EXT_frag_depth extension is part of the WebGL API and enables to set a depth value of a fragment from within the fragment shader.
[See EXT_frag_depth on MDN](https://developer.mozilla.org/docs/Web/API/EXT_frag_depth)
*/
type ext_frag_depth = {}

/**
[See EXT_sRGB on MDN](https://developer.mozilla.org/docs/Web/API/EXT_sRGB)
*/
type ext_sRGB = {}

/**
[See EXT_shader_texture_lod on MDN](https://developer.mozilla.org/docs/Web/API/EXT_shader_texture_lod)
*/
type ext_shader_texture_lod = {}

/**
[See EXT_texture_compression_bptc on MDN](https://developer.mozilla.org/docs/Web/API/EXT_texture_compression_bptc)
*/
type ext_texture_compression_bptc = {}

/**
[See EXT_texture_compression_rgtc on MDN](https://developer.mozilla.org/docs/Web/API/EXT_texture_compression_rgtc)
*/
type ext_texture_compression_rgtc = {}

/**
The EXT_texture_filter_anisotropic extension is part of the WebGL API and exposes two constants for anisotropic filtering (AF).
[See EXT_texture_filter_anisotropic on MDN](https://developer.mozilla.org/docs/Web/API/EXT_texture_filter_anisotropic)
*/
type ext_texture_filter_anisotropic = {}

/**
[See EXT_texture_norm16 on MDN](https://developer.mozilla.org/docs/Web/API/EXT_texture_norm16)
*/
type ext_texture_norm16 = {}

/**
A file-like object of immutable, raw data. Blobs represent data that isn't necessarily in a JavaScript-native format. The File interface is based on Blob, inheriting blob functionality and expanding it to support files on the user's system.
[See Blob on MDN](https://developer.mozilla.org/docs/Web/API/Blob)
*/
type blob = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Blob/size)
    */
  size: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Blob/type)
    */
  @as("type")
  type_: domString,
}

/**
Provides information about files and allows JavaScript in a web page to access their content.
[See File on MDN](https://developer.mozilla.org/docs/Web/API/File)
*/
type file = {
  ...blob,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/File/name)
    */
  name: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/File/lastModified)
    */
  lastModified: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/File/webkitRelativePath)
    */
  webkitRelativePath: usvString,
}

/**
Lets web applications asynchronously read the contents of files (or raw data buffers) stored on the user's computer, using File or Blob objects to specify the file or data to read.
[See FileReader on MDN](https://developer.mozilla.org/docs/Web/API/FileReader)
*/
type fileReader = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileReader/readyState)
    */
  readyState: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileReader/result)
    */
  result: Null.t<unknown>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileReader/error)
    */
  error: Null.t<domException>,
}

/**
Also inherits methods from its parents IDBRequest and EventTarget.
[See IDBOpenDBRequest on MDN](https://developer.mozilla.org/docs/Web/API/IDBOpenDBRequest)
*/
type idbOpenDBRequest = {
  ...idbRequest<idbDatabase>,
}

/**
This IndexedDB API interface indicates that the version of the database has changed, as the result of an IDBOpenDBRequest.onupgradeneeded event handler function.
[See IDBVersionChangeEvent on MDN](https://developer.mozilla.org/docs/Web/API/IDBVersionChangeEvent)
*/
type idbVersionChangeEvent = {
  ...event,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBVersionChangeEvent/oldVersion)
    */
  oldVersion: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBVersionChangeEvent/newVersion)
    */
  newVersion: Null.t<int>,
}

/**
In the following code snippet, we make a request to open a database, and include handlers for the success and error cases. For a full working example, see our To-do Notifications app (view example live.)
[See IDBFactory on MDN](https://developer.mozilla.org/docs/Web/API/IDBFactory)
*/
type idbFactory = {}

/**
This example shows a variety of different uses of object stores, from updating the data structure with IDBObjectStore.createIndex inside an onupgradeneeded function, to adding a new item to our object store with IDBObjectStore.add. For a full working example, see our To-do Notifications app (view example live.)
[See IDBObjectStore on MDN](https://developer.mozilla.org/docs/Web/API/IDBObjectStore)
*/
type idbObjectStore = {
  /**
    Returns the name of the store.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBObjectStore/name)
    */
  mutable name: domString,
  /**
    Returns the key path of the store, or null if none.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBObjectStore/keyPath)
    */
  keyPath: string,
  /**
    Returns a list of the names of indexes in the store.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBObjectStore/indexNames)
    */
  indexNames: domStringList,
  /**
    Returns the associated transaction.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBObjectStore/transaction)
    */
  transaction: idbTransaction,
  /**
    Returns true if the store has a key generator, and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBObjectStore/autoIncrement)
    */
  autoIncrement: bool,
}

/**
IDBIndex interface of the IndexedDB API provides asynchronous access to an index in a database. An index is a kind of object store for looking up records in another object store, called the referenced object store. You use this interface to retrieve data.
[See IDBIndex on MDN](https://developer.mozilla.org/docs/Web/API/IDBIndex)
*/
type idbIndex = {
  /**
    Returns the name of the index.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBIndex/name)
    */
  mutable name: domString,
  /**
    Returns the IDBObjectStore the index belongs to.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBIndex/objectStore)
    */
  objectStore: idbObjectStore,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBIndex/keyPath)
    */
  keyPath: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBIndex/multiEntry)
    */
  multiEntry: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBIndex/unique)
    */
  unique: bool,
}

/**
A key range can be a single value or a range with upper and lower bounds or endpoints. If the key range has both upper and lower bounds, then it is bounded; if it has no bounds, it is unbounded. A bounded key range can either be open (the endpoints are excluded) or closed (the endpoints are included). To retrieve all keys within a certain range, you can use the following code constructs:
[See IDBKeyRange on MDN](https://developer.mozilla.org/docs/Web/API/IDBKeyRange)
*/
type idbKeyRange = {
  /**
    Returns lower bound, or undefined if none.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBKeyRange/lower)
    */
  lower: any,
  /**
    Returns upper bound, or undefined if none.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBKeyRange/upper)
    */
  upper: any,
  /**
    Returns true if the lower open flag is set, and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBKeyRange/lowerOpen)
    */
  lowerOpen: bool,
  /**
    Returns true if the upper open flag is set, and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBKeyRange/upperOpen)
    */
  upperOpen: bool,
}

/**
This IndexedDB API interface represents a cursor for traversing or iterating over multiple records in a database. It is the same as the IDBCursor, except that it includes the value property.
[See IDBCursorWithValue on MDN](https://developer.mozilla.org/docs/Web/API/IDBCursorWithValue)
*/
type idbCursorWithValue = {
  ...idbCursor,
  /**
    Returns the cursor's current value.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBCursorWithValue/value)
    */
  value: any,
}

/**
[See KHR_parallel_shader_compile on MDN](https://developer.mozilla.org/docs/Web/API/KHR_parallel_shader_compile)
*/
type khr_parallel_shader_compile = {}

/**
[See OES_draw_buffers_indexed on MDN](https://developer.mozilla.org/docs/Web/API/OES_draw_buffers_indexed)
*/
type oes_draw_buffers_indexed = {}

/**
The OES_element_index_uint extension is part of the WebGL API and adds support for gl.UNSIGNED_INT types to WebGLRenderingContext.drawElements().
[See OES_element_index_uint on MDN](https://developer.mozilla.org/docs/Web/API/OES_element_index_uint)
*/
type oes_element_index_uint = {}

/**
[See OES_fbo_render_mipmap on MDN](https://developer.mozilla.org/docs/Web/API/OES_fbo_render_mipmap)
*/
type oes_fbo_render_mipmap = {}

/**
The OES_standard_derivatives extension is part of the WebGL API and adds the GLSL derivative functions dFdx, dFdy, and fwidth.
[See OES_standard_derivatives on MDN](https://developer.mozilla.org/docs/Web/API/OES_standard_derivatives)
*/
type oes_standard_derivatives = {}

/**
The OES_texture_float extension is part of the WebGL API and exposes floating-point pixel types for textures.
[See OES_texture_float on MDN](https://developer.mozilla.org/docs/Web/API/OES_texture_float)
*/
type oes_texture_float = {}

/**
The OES_texture_float_linear extension is part of the WebGL API and allows linear filtering with floating-point pixel types for textures.
[See OES_texture_float_linear on MDN](https://developer.mozilla.org/docs/Web/API/OES_texture_float_linear)
*/
type oes_texture_float_linear = {}

/**
The OES_texture_half_float extension is part of the WebGL API and adds texture formats with 16- (aka half float) and 32-bit floating-point components.
[See OES_texture_half_float on MDN](https://developer.mozilla.org/docs/Web/API/OES_texture_half_float)
*/
type oes_texture_half_float = {}

/**
The OES_texture_half_float_linear extension is part of the WebGL API and allows linear filtering with half floating-point pixel types for textures.
[See OES_texture_half_float_linear on MDN](https://developer.mozilla.org/docs/Web/API/OES_texture_half_float_linear)
*/
type oes_texture_half_float_linear = {}

/**
[See WebGLVertexArrayObjectOES on MDN](https://developer.mozilla.org/docs/Web/API/WebGLVertexArrayObject)
*/
type webGLVertexArrayObjectOES = {}

/**
[See OES_vertex_array_object on MDN](https://developer.mozilla.org/docs/Web/API/OES_vertex_array_object)
*/
type oes_vertex_array_object = {}

/**
[See OVR_multiview2 on MDN](https://developer.mozilla.org/docs/Web/API/OVR_multiview2)
*/
type ovr_multiview2 = {}

/**
All of the SVG DOM interfaces that correspond directly to elements in the SVG language derive from the SVGElement interface.
[See SVGElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGElement)
*/
type svgElement = {
  ...element,
}

/**
SVG elements whose primary purpose is to directly render graphics into a group.
[See SVGGraphicsElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGGraphicsElement)
*/
type svgGraphicsElement = {
  ...svgElement,
}

/**
[See SVGGeometryElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGGeometryElement)
*/
type svgGeometryElement = {
  ...svgGraphicsElement,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGGeometryElement/pathLength)
    */
  pathLength: int,
}

/**
Corresponds to the <number> basic data type.
[See SVGNumber on MDN](https://developer.mozilla.org/docs/Web/API/SVGNumber)
*/
type svgNumber = {}

/**
Correspond to the <length> basic data type.
[See SVGLength on MDN](https://developer.mozilla.org/docs/Web/API/SVGLength)
*/
type svgLength = {}

/**
Used to represent a value that can be an <angle> or <number> value. An SVGAngle reflected through the animVal attribute is always read only.
[See SVGAngle on MDN](https://developer.mozilla.org/docs/Web/API/SVGAngle)
*/
type svgAngle = {}

/**
The SVGNumberList defines a list of SVGNumber objects.
[See SVGNumberList on MDN](https://developer.mozilla.org/docs/Web/API/SVGNumberList)
*/
type svgNumberList = {}

/**
The SVGLengthList defines a list of SVGLength objects.
[See SVGLengthList on MDN](https://developer.mozilla.org/docs/Web/API/SVGLengthList)
*/
type svgLengthList = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGLengthList/length)
    */
  length: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGLengthList/numberOfItems)
    */
  numberOfItems: any,
}

/**
The SVGStringList defines a list of DOMString objects.
[See SVGStringList on MDN](https://developer.mozilla.org/docs/Web/API/SVGStringList)
*/
type svgStringList = {}

/**
Used for attributes of type boolean which can be animated.
[See SVGAnimatedBoolean on MDN](https://developer.mozilla.org/docs/Web/API/SVGAnimatedBoolean)
*/
type svgAnimatedBoolean = {}

/**
Used for attributes whose value must be a constant from a particular enumeration and which can be animated.
[See SVGAnimatedEnumeration on MDN](https://developer.mozilla.org/docs/Web/API/SVGAnimatedEnumeration)
*/
type svgAnimatedEnumeration = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGAnimatedEnumeration/baseVal)
    */
  mutable baseVal: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGAnimatedEnumeration/animVal)
    */
  animVal: int,
}

/**
Used for attributes of basic type <integer> which can be animated.
[See SVGAnimatedInteger on MDN](https://developer.mozilla.org/docs/Web/API/SVGAnimatedInteger)
*/
type svgAnimatedInteger = {}

/**
Used for attributes of basic type <Number> which can be animated.
[See SVGAnimatedNumber on MDN](https://developer.mozilla.org/docs/Web/API/SVGAnimatedNumber)
*/
type svgAnimatedNumber = {}

/**
Used for attributes of basic type <length> which can be animated.
[See SVGAnimatedLength on MDN](https://developer.mozilla.org/docs/Web/API/SVGAnimatedLength)
*/
type svgAnimatedLength = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGAnimatedLength/baseVal)
    */
  baseVal: svgLength,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGAnimatedLength/animVal)
    */
  animVal: svgLength,
}

/**
Used for attributes of basic type <angle> which can be animated.
[See SVGAnimatedAngle on MDN](https://developer.mozilla.org/docs/Web/API/SVGAnimatedAngle)
*/
type svgAnimatedAngle = {}

/**
The SVGAnimatedString interface represents string attributes which can be animated from each SVG declaration. You need to create SVG attribute before doing anything else, everything should be declared inside this.
[See SVGAnimatedString on MDN](https://developer.mozilla.org/docs/Web/API/SVGAnimatedString)
*/
type svgAnimatedString = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGAnimatedString/baseVal)
    */
  mutable baseVal: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGAnimatedString/animVal)
    */
  animVal: domString,
}

/**
Used for attributes of basic SVGRect which can be animated.
[See SVGAnimatedRect on MDN](https://developer.mozilla.org/docs/Web/API/SVGAnimatedRect)
*/
type svgAnimatedRect = {}

/**
The SVGAnimatedNumber interface is used for attributes which take a list of numbers and which can be animated.
[See SVGAnimatedNumberList on MDN](https://developer.mozilla.org/docs/Web/API/SVGAnimatedNumberList)
*/
type svgAnimatedNumberList = {}

/**
Used for attributes of type SVGLengthList which can be animated.
[See SVGAnimatedLengthList on MDN](https://developer.mozilla.org/docs/Web/API/SVGAnimatedLengthList)
*/
type svgAnimatedLengthList = {}

/**
A commonly used set of constants used for reflecting gradientUnits, patternContentUnits and other similar attributes.
[See SVGUnitTypes on MDN](https://developer.mozilla.org/docs/Web/API/SVGUnitTypes)
*/
type svgUnitTypes = {}

/**
Provides access to the properties of <svg> elements, as well as methods to manipulate them. This interface contains also various miscellaneous commonly-used utility methods, such as matrix operations and the ability to control the time of redraw on visual rendering devices.
[See SVGSVGElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGSVGElement)
*/
type svgsvgElement = {
  ...svgGraphicsElement,
}

/**
Corresponds to the <g> element.
[See SVGGElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGGElement)
*/
type svggElement = {
  ...svgGraphicsElement,
}

/**
Corresponds to the <defs> element.
[See SVGDefsElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGDefsElement)
*/
type svgDefsElement = {
  ...svgGraphicsElement,
}

/**
Corresponds to the <desc> element.
[See SVGDescElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGDescElement)
*/
type svgDescElement = {
  ...svgElement,
}

/**
Corresponds to the <metadata> element.
[See SVGMetadataElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGMetadataElement)
*/
type svgMetadataElement = {
  ...svgElement,
}

/**
Corresponds to the <title> element.
[See SVGTitleElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGTitleElement)
*/
type svgTitleElement = {
  ...svgElement,
}

/**
Corresponds to the <symbol> element.
[See SVGSymbolElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGSymbolElement)
*/
type svgSymbolElement = {
  ...svgElement,
}

/**
Corresponds to the <use> element.
[See SVGUseElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGUseElement)
*/
type svgUseElement = {
  ...svgGraphicsElement,
}

/**
Corresponds to the <switch> element.
[See SVGSwitchElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGSwitchElement)
*/
type svgSwitchElement = {
  ...svgGraphicsElement,
}

/**
Corresponds to the SVG <style> element.
[See SVGStyleElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGStyleElement)
*/
type svgStyleElement = {
  ...svgElement,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGStyleElement/media)
    */
  mutable media: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGStyleElement/title)
    */
  mutable title: domString,
}

/**
SVGTransform is the interface for one of the component transformations within an SVGTransformList; thus, an SVGTransform object corresponds to a single component (e.g., scale(…) or matrix(…)) within a transform attribute.
[See SVGTransform on MDN](https://developer.mozilla.org/docs/Web/API/SVGTransform)
*/
type svgTransform = {}

/**
The SVGTransformList defines a list of SVGTransform objects.
[See SVGTransformList on MDN](https://developer.mozilla.org/docs/Web/API/SVGTransformList)
*/
type svgTransformList = {}

/**
Used for attributes which take a list of numbers and which can be animated.
[See SVGAnimatedTransformList on MDN](https://developer.mozilla.org/docs/Web/API/SVGAnimatedTransformList)
*/
type svgAnimatedTransformList = {}

/**
Corresponds to the preserveAspectRatio attribute, which is available for some of SVG's elements.
[See SVGPreserveAspectRatio on MDN](https://developer.mozilla.org/docs/Web/API/SVGPreserveAspectRatio)
*/
type svgPreserveAspectRatio = {}

/**
Used for attributes of type SVGPreserveAspectRatio which can be animated.
[See SVGAnimatedPreserveAspectRatio on MDN](https://developer.mozilla.org/docs/Web/API/SVGAnimatedPreserveAspectRatio)
*/
type svgAnimatedPreserveAspectRatio = {}

/**
Corresponds to the <path> element.
[See SVGPathElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGPathElement)
*/
type svgPathElement = {
  ...svgGeometryElement,
}

/**
Provides access to the properties of <rect> elements, as well as methods to manipulate them.
[See SVGRectElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGRectElement)
*/
type svgRectElement = {
  ...svgGeometryElement,
}

/**
An interface for the <circle> element. The circle element is defined by the cx and cy attributes that denote the coordinates of the centre of the circle.
[See SVGCircleElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGCircleElement)
*/
type svgCircleElement = {
  ...svgGeometryElement,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGCircleElement/cx)
    */
  cx: svgAnimatedLength,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGCircleElement/cy)
    */
  cy: svgAnimatedLength,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGCircleElement/r)
    */
  r: svgAnimatedLength,
}

/**
Provides access to the properties of <ellipse> elements.
[See SVGEllipseElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGEllipseElement)
*/
type svgEllipseElement = {
  ...svgGeometryElement,
}

/**
Provides access to the properties of <line> elements, as well as methods to manipulate them.
[See SVGLineElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGLineElement)
*/
type svgLineElement = {
  ...svgGeometryElement,
}

/**
[See SVGPointList on MDN](https://developer.mozilla.org/docs/Web/API/SVGPointList)
*/
type svgPointList = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGPointList/length)
    */
  length: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGPointList/numberOfItems)
    */
  numberOfItems: any,
}

/**
Provides access to the properties of <polyline> elements, as well as methods to manipulate them.
[See SVGPolylineElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGPolylineElement)
*/
type svgPolylineElement = {
  ...svgGeometryElement,
}

/**
Provides access to the properties of <polygon> elements, as well as methods to manipulate them.
[See SVGPolygonElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGPolygonElement)
*/
type svgPolygonElement = {
  ...svgGeometryElement,
}

/**
Implemented by elements that support rendering child text content. It is inherited by various text-related interfaces, such as SVGTextElement, SVGTSpanElement, SVGTRefElement, SVGAltGlyphElement and SVGTextPathElement.
[See SVGTextContentElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGTextContentElement)
*/
type svgTextContentElement = {
  ...svgGraphicsElement,
}

/**
Implemented by elements that support attributes that position individual text glyphs. It is inherited by SVGTextElement, SVGTSpanElement, SVGTRefElement and SVGAltGlyphElement.
[See SVGTextPositioningElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGTextPositioningElement)
*/
type svgTextPositioningElement = {
  ...svgTextContentElement,
}

/**
Corresponds to the <text> elements.
[See SVGTextElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGTextElement)
*/
type svgTextElement = {
  ...svgTextPositioningElement,
}

/**
A <tspan> element.
[See SVGTSpanElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGTSpanElement)
*/
type svgtSpanElement = {
  ...svgTextPositioningElement,
}

/**
Corresponds to the <textPath> element.
[See SVGTextPathElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGTextPathElement)
*/
type svgTextPathElement = {
  ...svgTextContentElement,
}

/**
Corresponds to the <image> element.
[See SVGImageElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGImageElement)
*/
type svgImageElement = {
  ...svgGraphicsElement,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGImageElement/x)
    */
  x: svgAnimatedLength,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGImageElement/y)
    */
  y: svgAnimatedLength,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGImageElement/width)
    */
  width: svgAnimatedLength,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGImageElement/height)
    */
  height: svgAnimatedLength,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGImageElement/preserveAspectRatio)
    */
  preserveAspectRatio: svgAnimatedPreserveAspectRatio,
}

/**
Provides access to the properties of <foreignObject> elements, as well as methods to manipulate them.
[See SVGForeignObjectElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGForeignObjectElement)
*/
type svgForeignObjectElement = {
  ...svgGraphicsElement,
}

/**
[See SVGMarkerElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGMarkerElement)
*/
type svgMarkerElement = {
  ...svgElement,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGMarkerElement/refX)
    */
  refX: svgAnimatedLength,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGMarkerElement/refY)
    */
  refY: svgAnimatedLength,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGMarkerElement/markerUnits)
    */
  markerUnits: svgAnimatedEnumeration,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGMarkerElement/markerWidth)
    */
  markerWidth: svgAnimatedLength,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGMarkerElement/markerHeight)
    */
  markerHeight: svgAnimatedLength,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGMarkerElement/orientType)
    */
  orientType: svgAnimatedEnumeration,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGMarkerElement/orientAngle)
    */
  orientAngle: svgAnimatedAngle,
}

/**
The SVGGradient interface is a base interface used by SVGLinearGradientElement and SVGRadialGradientElement.
[See SVGGradientElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGGradientElement)
*/
type svgGradientElement = {
  ...svgElement,
}

/**
Corresponds to the <linearGradient> element.
[See SVGLinearGradientElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGLinearGradientElement)
*/
type svgLinearGradientElement = {
  ...svgGradientElement,
}

/**
Corresponds to the <RadialGradient> element.
[See SVGRadialGradientElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGRadialGradientElement)
*/
type svgRadialGradientElement = {
  ...svgGradientElement,
}

/**
Corresponds to the <stop> element.
[See SVGStopElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGStopElement)
*/
type svgStopElement = {
  ...svgElement,
}

/**
Corresponds to the <pattern> element.
[See SVGPatternElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGPatternElement)
*/
type svgPatternElement = {
  ...svgElement,
}

/**
Corresponds to the SVG <script> element.
[See SVGScriptElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGScriptElement)
*/
type svgScriptElement = {
  ...svgElement,
}

/**
Provides access to the properties of <a> element, as well as methods to manipulate them.
[See SVGAElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGAElement)
*/
type svgaElement = {
  ...svgGraphicsElement,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGAElement/target)
    */
  target: svgAnimatedString,
}

/**
Provides access to the properties of <view> elements, as well as methods to manipulate them.
[See SVGViewElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGViewElement)
*/
type svgViewElement = {
  ...svgElement,
}

/**
[See WEBGL_color_buffer_float on MDN](https://developer.mozilla.org/docs/Web/API/WEBGL_color_buffer_float)
*/
type webgl_color_buffer_float = {}

/**
[See WEBGL_compressed_texture_astc on MDN](https://developer.mozilla.org/docs/Web/API/WEBGL_compressed_texture_astc)
*/
type webgl_compressed_texture_astc = {}

/**
[See WEBGL_compressed_texture_etc on MDN](https://developer.mozilla.org/docs/Web/API/WEBGL_compressed_texture_etc)
*/
type webgl_compressed_texture_etc = {}

/**
[See WEBGL_compressed_texture_etc1 on MDN](https://developer.mozilla.org/docs/Web/API/WEBGL_compressed_texture_etc1)
*/
type webgl_compressed_texture_etc1 = {}

/**
[See WEBGL_compressed_texture_pvrtc on MDN](https://developer.mozilla.org/docs/Web/API/WEBGL_compressed_texture_pvrtc)
*/
type webgl_compressed_texture_pvrtc = {}

/**
The WEBGL_compressed_texture_s3tc extension is part of the WebGL API and exposes four S3TC compressed texture formats.
[See WEBGL_compressed_texture_s3tc on MDN](https://developer.mozilla.org/docs/Web/API/WEBGL_compressed_texture_s3tc)
*/
type webgl_compressed_texture_s3tc = {}

/**
[See WEBGL_compressed_texture_s3tc_srgb on MDN](https://developer.mozilla.org/docs/Web/API/WEBGL_compressed_texture_s3tc_srgb)
*/
type webgl_compressed_texture_s3tc_srgb = {}

/**
The WEBGL_debug_renderer_info extension is part of the WebGL API and exposes two constants with information about the graphics driver for debugging purposes.
[See WEBGL_debug_renderer_info on MDN](https://developer.mozilla.org/docs/Web/API/WEBGL_debug_renderer_info)
*/
type webgl_debug_renderer_info = {}

/**
[See WEBGL_debug_shaders on MDN](https://developer.mozilla.org/docs/Web/API/WEBGL_debug_shaders)
*/
type webgl_debug_shaders = {}

/**
The WEBGL_depth_texture extension is part of the WebGL API and defines 2D depth and depth-stencil textures.
[See WEBGL_depth_texture on MDN](https://developer.mozilla.org/docs/Web/API/WEBGL_depth_texture)
*/
type webgl_depth_texture = {}

/**
[See WEBGL_draw_buffers on MDN](https://developer.mozilla.org/docs/Web/API/WEBGL_draw_buffers)
*/
type webgl_draw_buffers = {}

/**
[See WEBGL_lose_context on MDN](https://developer.mozilla.org/docs/Web/API/WEBGL_lose_context)
*/
type webgl_lose_context = {}

/**
[See WEBGL_multi_draw on MDN](https://developer.mozilla.org/docs/Web/API/WEBGL_multi_draw)
*/
type webgl_multi_draw = {}

/**
Basic cryptography features available in the current context. It allows access to a cryptographically strong random number generator and to cryptographic primitives.
[See Crypto on MDN](https://developer.mozilla.org/docs/Web/API/Crypto)
*/
type crypto = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Crypto/subtle)
    */
  subtle: subtleCrypto,
}

/**
Events providing information related to modification of the clipboard, that is cut, copy, and paste events.
[See ClipboardEvent on MDN](https://developer.mozilla.org/docs/Web/API/ClipboardEvent)
*/
type clipboardEvent = {
  ...event,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ClipboardEvent/clipboardData)
    */
  clipboardData: Null.t<dataTransfer>,
}

/**
[See ClipboardItem on MDN](https://developer.mozilla.org/docs/Web/API/ClipboardItem)
*/
type clipboardItem = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ClipboardItem/presentationStyle)
    */
  presentationStyle: presentationStyle,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ClipboardItem/types)
    */
  types: array<domString>,
}

/**
[See CompressionStream on MDN](https://developer.mozilla.org/docs/Web/API/CompressionStream)
*/
type compressionStream = {}

/**
[See DecompressionStream on MDN](https://developer.mozilla.org/docs/Web/API/DecompressionStream)
*/
type decompressionStream = {}

/**
[See PaymentAddress on MDN](https://developer.mozilla.org/docs/Web/API/ContactAddress)
*/
type paymentAddress = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ContactAddress/city)
    */
  city: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ContactAddress/country)
    */
  country: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ContactAddress/dependentLocality)
    */
  dependentLocality: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ContactAddress/organization)
    */
  organization: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ContactAddress/phone)
    */
  phone: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ContactAddress/postalCode)
    */
  postalCode: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ContactAddress/recipient)
    */
  recipient: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ContactAddress/region)
    */
  region: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ContactAddress/sortingCode)
    */
  sortingCode: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ContactAddress/addressLine)
    */
  addressLine: array<domString>,
}

/**
[See Credential on MDN](https://developer.mozilla.org/docs/Web/API/Credential)
*/
type credential = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Credential/id)
    */
  id: usvString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Credential/type)
    */
  @as("type")
  type_: domString,
}

/**
[See CSSAnimation on MDN](https://developer.mozilla.org/docs/Web/API/CSSAnimation)
*/
type cssAnimation = {
  ...animation,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSAnimation/animationName)
    */
  animationName: string,
}

/**
Events providing information related to animations.
[See AnimationEvent on MDN](https://developer.mozilla.org/docs/Web/API/AnimationEvent)
*/
type animationEvent = {
  ...event,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnimationEvent/animationName)
    */
  animationName: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnimationEvent/elapsedTime)
    */
  elapsedTime: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnimationEvent/pseudoElement)
    */
  pseudoElement: string,
}

/**
An object representing a set of style for a given keyframe. It corresponds to the contains of a single keyframe of a @keyframes at-rule. It implements the CSSRule interface with a type value of 8 (CSSRule.KEYFRAME_RULE).
[See CSSKeyframeRule on MDN](https://developer.mozilla.org/docs/Web/API/CSSKeyframeRule)
*/
type cssKeyframeRule = {
  ...cssRule,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSKeyframeRule/keyText)
    */
  mutable keyText: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSKeyframeRule/style)
    */
  style: cssStyleDeclaration,
}

/**
An object representing a complete set of keyframes for a CSS animation. It corresponds to the contains of a whole @keyframes at-rule. It implements the CSSRule interface with a type value of 7 (CSSRule.KEYFRAMES_RULE).
[See CSSKeyframesRule on MDN](https://developer.mozilla.org/docs/Web/API/CSSKeyframesRule)
*/
type cssKeyframesRule = {
  ...cssRule,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSKeyframesRule/name)
    */
  mutable name: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSKeyframesRule/cssRules)
    */
  cssRules: cssRuleList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSKeyframesRule/length)
    */
  length: any,
}

/**
Any CSS at-rule that contains other rules nested within it.
[See CSSGroupingRule on MDN](https://developer.mozilla.org/docs/Web/API/CSSGroupingRule)
*/
type cssGroupingRule = {
  ...cssRule,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSGroupingRule/cssRules)
    */
  cssRules: cssRuleList,
}

/**
[See CSSScopeRule on MDN](https://developer.mozilla.org/docs/Web/API/CSSScopeRule)
*/
type cssScopeRule = {
  ...cssGroupingRule,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSScopeRule/start)
    */
  start: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSScopeRule/end)
    */
  end: Null.t<string>,
}

/**
[See CSSLayerBlockRule on MDN](https://developer.mozilla.org/docs/Web/API/CSSLayerBlockRule)
*/
type cssLayerBlockRule = {
  ...cssGroupingRule,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSLayerBlockRule/name)
    */
  name: string,
}

/**
[See CSSLayerStatementRule on MDN](https://developer.mozilla.org/docs/Web/API/CSSLayerStatementRule)
*/
type cssLayerStatementRule = {
  ...cssRule,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSLayerStatementRule/nameList)
    */
  nameList: array<string>,
}

/**
A single condition CSS at-rule, which consists of a condition and a statement block. It is a child of CSSGroupingRule.
[See CSSConditionRule on MDN](https://developer.mozilla.org/docs/Web/API/CSSConditionRule)
*/
type cssConditionRule = {
  ...cssGroupingRule,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSConditionRule/conditionText)
    */
  conditionText: string,
}

/**
[See CSSContainerRule on MDN](https://developer.mozilla.org/docs/Web/API/CSSContainerRule)
*/
type cssContainerRule = {
  ...cssConditionRule,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSContainerRule/containerName)
    */
  containerName: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSContainerRule/containerQuery)
    */
  containerQuery: string,
}

/**
A single CSS @media rule. It implements the CSSConditionRule interface, and therefore the CSSGroupingRule and the CSSRule interface with a type value of 4 (CSSRule.MEDIA_RULE).
[See CSSMediaRule on MDN](https://developer.mozilla.org/docs/Web/API/CSSMediaRule)
*/
type cssMediaRule = {
  ...cssConditionRule,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSMediaRule/media)
    */
  media: mediaList,
}

/**
An object representing a single CSS @supports at-rule. It implements the CSSConditionRule interface, and therefore the CSSRule and CSSGroupingRule interfaces with a type value of 12 (CSSRule.SUPPORTS_RULE).
[See CSSSupportsRule on MDN](https://developer.mozilla.org/docs/Web/API/CSSSupportsRule)
*/
type cssSupportsRule = {
  ...cssConditionRule,
}

/**
[See ContentVisibilityAutoStateChangeEvent on MDN](https://developer.mozilla.org/docs/Web/API/ContentVisibilityAutoStateChangeEvent)
*/
type contentVisibilityAutoStateChangeEvent = {
  ...event,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ContentVisibilityAutoStateChangeEvent/skipped)
    */
  skipped: bool,
}

/**
[See CSSCounterStyleRule on MDN](https://developer.mozilla.org/docs/Web/API/CSSCounterStyleRule)
*/
type cssCounterStyleRule = {
  ...cssRule,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSCounterStyleRule/name)
    */
  mutable name: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSCounterStyleRule/system)
    */
  mutable system: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSCounterStyleRule/symbols)
    */
  mutable symbols: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSCounterStyleRule/additiveSymbols)
    */
  mutable additiveSymbols: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSCounterStyleRule/negative)
    */
  mutable negative: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSCounterStyleRule/prefix)
    */
  mutable prefix: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSCounterStyleRule/suffix)
    */
  mutable suffix: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSCounterStyleRule/range)
    */
  mutable range: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSCounterStyleRule/pad)
    */
  mutable pad: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSCounterStyleRule/speakAs)
    */
  mutable speakAs: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSCounterStyleRule/fallback)
    */
  mutable fallback: string,
}

/**
[See FontFaceSetLoadEvent on MDN](https://developer.mozilla.org/docs/Web/API/FontFaceSetLoadEvent)
*/
type fontFaceSetLoadEvent = {
  ...event,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFaceSetLoadEvent/fontfaces)
    */
  fontfaces: array<fontFace>,
}

/**
[See CSSFontFaceRule on MDN](https://developer.mozilla.org/docs/Web/API/CSSFontFaceRule)
*/
type cssFontFaceRule = {
  ...cssRule,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSFontFaceRule/style)
    */
  style: cssStyleDeclaration,
}

/**
[See CSSFontFeatureValuesRule on MDN](https://developer.mozilla.org/docs/Web/API/CSSFontFeatureValuesRule)
*/
type cssFontFeatureValuesRule = {
  ...cssRule,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSFontFeatureValuesRule/fontFamily)
    */
  mutable fontFamily: string,
}

/**
[See CSSFontPaletteValuesRule on MDN](https://developer.mozilla.org/docs/Web/API/CSSFontPaletteValuesRule)
*/
type cssFontPaletteValuesRule = {
  ...cssRule,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSFontPaletteValuesRule/name)
    */
  name: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSFontPaletteValuesRule/fontFamily)
    */
  fontFamily: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSFontPaletteValuesRule/basePalette)
    */
  basePalette: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSFontPaletteValuesRule/overrideColors)
    */
  overrideColors: string,
}

/**
[See Highlight on MDN](https://developer.mozilla.org/docs/Web/API/Highlight)
*/
type highlight = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Highlight/priority)
    */
  mutable priority: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Highlight/type)
    */
  @as("type")
  mutable type_: highlightType,
}

/**
[See HighlightRegistry on MDN](https://developer.mozilla.org/docs/Web/API/HighlightRegistry)
*/
type highlightRegistry = {}

/**
Provides access to the properties of <clipPath> elements, as well as methods to manipulate them.
[See SVGClipPathElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGClipPathElement)
*/
type svgClipPathElement = {
  ...svgElement,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGClipPathElement/clipPathUnits)
    */
  clipPathUnits: svgAnimatedEnumeration,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGClipPathElement/transform)
    */
  transform: svgAnimatedTransformList,
}

/**
Provides access to the properties of <mask> elements, as well as methods to manipulate them.
[See SVGMaskElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGMaskElement)
*/
type svgMaskElement = {
  ...svgElement,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGMaskElement/maskUnits)
    */
  maskUnits: svgAnimatedEnumeration,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGMaskElement/maskContentUnits)
    */
  maskContentUnits: svgAnimatedEnumeration,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGMaskElement/x)
    */
  x: svgAnimatedLength,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGMaskElement/y)
    */
  y: svgAnimatedLength,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGMaskElement/width)
    */
  width: svgAnimatedLength,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGMaskElement/height)
    */
  height: svgAnimatedLength,
}

type cssNestedDeclarations = {
  ...cssRule,
}

/**
[See CSSPropertyRule on MDN](https://developer.mozilla.org/docs/Web/API/CSSPropertyRule)
*/
type cssPropertyRule = {
  ...cssRule,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSPropertyRule/name)
    */
  name: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSPropertyRule/syntax)
    */
  syntax: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSPropertyRule/inherits)
    */
  inherits: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSPropertyRule/initialValue)
    */
  initialValue: Null.t<string>,
}

/**
[See CSSStartingStyleRule on MDN](https://developer.mozilla.org/docs/Web/API/CSSStartingStyleRule)
*/
type cssStartingStyleRule = {
  ...cssGroupingRule,
}

/**
[See CSSTransition on MDN](https://developer.mozilla.org/docs/Web/API/CSSTransition)
*/
type cssTransition = {
  ...animation,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSTransition/transitionProperty)
    */
  transitionProperty: string,
}

/**
Events providing information related to transitions.
[See TransitionEvent on MDN](https://developer.mozilla.org/docs/Web/API/TransitionEvent)
*/
type transitionEvent = {
  ...event,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TransitionEvent/propertyName)
    */
  propertyName: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TransitionEvent/elapsedTime)
    */
  elapsedTime: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TransitionEvent/pseudoElement)
    */
  pseudoElement: string,
}

/**
[See StylePropertyMapReadOnly on MDN](https://developer.mozilla.org/docs/Web/API/StylePropertyMapReadOnly)
*/
type stylePropertyMapReadOnly = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StylePropertyMapReadOnly/size)
    */
  size: any,
}

/**
[See StylePropertyMap on MDN](https://developer.mozilla.org/docs/Web/API/StylePropertyMap)
*/
type stylePropertyMap = {
  ...stylePropertyMapReadOnly,
}

/**
[See CSSUnparsedValue on MDN](https://developer.mozilla.org/docs/Web/API/CSSUnparsedValue)
*/
type cssUnparsedValue = {
  ...cssStyleValue,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSUnparsedValue/length)
    */
  length: any,
}

/**
[See CSSVariableReferenceValue on MDN](https://developer.mozilla.org/docs/Web/API/CSSVariableReferenceValue)
*/
type cssVariableReferenceValue = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSVariableReferenceValue/variable)
    */
  mutable variable: usvString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSVariableReferenceValue/fallback)
    */
  fallback: Null.t<cssUnparsedValue>,
}

/**
[See CSSKeywordValue on MDN](https://developer.mozilla.org/docs/Web/API/CSSKeywordValue)
*/
type cssKeywordValue = {
  ...cssStyleValue,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSKeywordValue/value)
    */
  mutable value: usvString,
}

/**
[See CSSUnitValue on MDN](https://developer.mozilla.org/docs/Web/API/CSSUnitValue)
*/
type cssUnitValue = {
  ...cssNumericValue,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSUnitValue/value)
    */
  mutable value: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSUnitValue/unit)
    */
  unit: usvString,
}

/**
[See CSSMathValue on MDN](https://developer.mozilla.org/docs/Web/API/CSSMathValue)
*/
type cssMathValue = {
  ...cssNumericValue,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSMathValue/operator)
    */
  operator: cssMathOperator,
}

/**
[See CSSMathSum on MDN](https://developer.mozilla.org/docs/Web/API/CSSMathSum)
*/
type cssMathSum = {
  ...cssMathValue,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSMathSum/values)
    */
  values: cssNumericArray,
}

/**
[See CSSMathProduct on MDN](https://developer.mozilla.org/docs/Web/API/CSSMathProduct)
*/
type cssMathProduct = {
  ...cssMathValue,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSMathProduct/values)
    */
  values: cssNumericArray,
}

/**
[See CSSMathNegate on MDN](https://developer.mozilla.org/docs/Web/API/CSSMathNegate)
*/
type cssMathNegate = {
  ...cssMathValue,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSMathNegate/value)
    */
  value: cssNumericValue,
}

/**
[See CSSMathInvert on MDN](https://developer.mozilla.org/docs/Web/API/CSSMathInvert)
*/
type cssMathInvert = {
  ...cssMathValue,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSMathInvert/value)
    */
  value: cssNumericValue,
}

/**
[See CSSMathMin on MDN](https://developer.mozilla.org/docs/Web/API/CSSMathMin)
*/
type cssMathMin = {
  ...cssMathValue,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSMathMin/values)
    */
  values: cssNumericArray,
}

/**
[See CSSMathMax on MDN](https://developer.mozilla.org/docs/Web/API/CSSMathMax)
*/
type cssMathMax = {
  ...cssMathValue,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSMathMax/values)
    */
  values: cssNumericArray,
}

type cssMathClamp = {
  ...cssMathValue,
}

/**
[See CSSTransformValue on MDN](https://developer.mozilla.org/docs/Web/API/CSSTransformValue)
*/
type cssTransformValue = {
  ...cssStyleValue,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSTransformValue/length)
    */
  length: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSTransformValue/is2D)
    */
  is2D: bool,
}

/**
[See CSSTranslate on MDN](https://developer.mozilla.org/docs/Web/API/CSSTranslate)
*/
type cssTranslate = {
  ...cssTransformComponent,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSTranslate/x)
    */
  mutable x: cssNumericValue,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSTranslate/y)
    */
  mutable y: cssNumericValue,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSTranslate/z)
    */
  mutable z: cssNumericValue,
}

/**
[See CSSRotate on MDN](https://developer.mozilla.org/docs/Web/API/CSSRotate)
*/
type cssRotate = {
  ...cssTransformComponent,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSRotate/x)
    */
  mutable x: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSRotate/y)
    */
  mutable y: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSRotate/z)
    */
  mutable z: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSRotate/angle)
    */
  mutable angle: cssNumericValue,
}

/**
[See CSSScale on MDN](https://developer.mozilla.org/docs/Web/API/CSSScale)
*/
type cssScale = {
  ...cssTransformComponent,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSScale/x)
    */
  mutable x: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSScale/y)
    */
  mutable y: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSScale/z)
    */
  mutable z: float,
}

/**
[See CSSSkew on MDN](https://developer.mozilla.org/docs/Web/API/CSSSkew)
*/
type cssSkew = {
  ...cssTransformComponent,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSSkew/ax)
    */
  mutable ax: cssNumericValue,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSSkew/ay)
    */
  mutable ay: cssNumericValue,
}

/**
[See CSSSkewX on MDN](https://developer.mozilla.org/docs/Web/API/CSSSkewX)
*/
type cssSkewX = {
  ...cssTransformComponent,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSSkewX/ax)
    */
  mutable ax: cssNumericValue,
}

/**
[See CSSSkewY on MDN](https://developer.mozilla.org/docs/Web/API/CSSSkewY)
*/
type cssSkewY = {
  ...cssTransformComponent,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSSkewY/ay)
    */
  mutable ay: cssNumericValue,
}

/**
[See CSSImageValue on MDN](https://developer.mozilla.org/docs/Web/API/CSSImageValue)
*/
type cssImageValue = {
  ...cssStyleValue,
}

/**
[See ViewTransition on MDN](https://developer.mozilla.org/docs/Web/API/ViewTransition)
*/
type viewTransition = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ViewTransition/updateCallbackDone)
    */
  updateCallbackDone: Promise.t<undefined<unit>>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ViewTransition/ready)
    */
  ready: Promise.t<undefined<unit>>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ViewTransition/finished)
    */
  finished: Promise.t<undefined<unit>>,
}

/**
Stores information on a media query applied to a document, and handles sending notifications to listeners when the media query state change (i.e. when the media query test starts or stops evaluating to true).
[See MediaQueryList on MDN](https://developer.mozilla.org/docs/Web/API/MediaQueryList)
*/
type mediaQueryList = {
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
[See MediaQueryListEvent on MDN](https://developer.mozilla.org/docs/Web/API/MediaQueryListEvent)
*/
type mediaQueryListEvent = {
  ...event,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaQueryListEvent/media)
    */
  media: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaQueryListEvent/matches)
    */
  matches: bool,
}

/**
[See CaretPosition on MDN](https://developer.mozilla.org/docs/Web/API/CaretPosition)
*/
type caretPosition = {}

/**
A list of StyleSheet.
[See StyleSheetList on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheetList)
*/
type styleSheetList = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheetList/length)
    */
  length: any,
}

/**
CSSStyleRule represents a single CSS style rule. It implements the CSSRule interface with a type value of 1 (CSSRule.STYLE_RULE).
[See CSSStyleRule on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleRule)
*/
type cssStyleRule = {
  ...cssGroupingRule,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleRule/selectorText)
    */
  mutable selectorText: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleRule/style)
    */
  style: cssStyleDeclaration,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleRule/styleMap)
    */
  styleMap: stylePropertyMap,
}

/**
[See CSSImportRule on MDN](https://developer.mozilla.org/docs/Web/API/CSSImportRule)
*/
type cssImportRule = {
  ...cssRule,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSImportRule/href)
    */
  href: usvString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSImportRule/media)
    */
  media: mediaList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSImportRule/styleSheet)
    */
  styleSheet: Null.t<cssStyleSheet>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSImportRule/layerName)
    */
  layerName: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSImportRule/supportsText)
    */
  supportsText: Null.t<string>,
}

/**
CSSPageRule is an interface representing a single CSS @page rule. It implements the CSSRule interface with a type value of 6 (CSSRule.PAGE_RULE).
[See CSSPageRule on MDN](https://developer.mozilla.org/docs/Web/API/CSSPageRule)
*/
type cssPageRule = {
  ...cssGroupingRule,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSPageRule/selectorText)
    */
  mutable selectorText: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSPageRule/style)
    */
  style: cssStyleDeclaration,
}

/**
An object representing a single CSS @namespace at-rule. It implements the CSSRule interface, with a type value of 10 (CSSRule.NAMESPACE_RULE).
[See CSSNamespaceRule on MDN](https://developer.mozilla.org/docs/Web/API/CSSNamespaceRule)
*/
type cssNamespaceRule = {
  ...cssRule,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSNamespaceRule/namespaceURI)
    */
  namespaceURI: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSNamespaceRule/prefix)
    */
  prefix: string,
}

/**
[See CustomEvent on MDN](https://developer.mozilla.org/docs/Web/API/CustomEvent)
*/
type customEvent<'t> = {
  ...event,
  /**
    Returns any custom data event was created with. Typically used for synthetic events.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CustomEvent/detail)
    */
  detail: 't,
}

/**
Provides the ability to watch for changes being made to the DOM tree. It is designed as a replacement for the older Mutation Events feature which was part of the DOM3 Events specification.
[See MutationObserver on MDN](https://developer.mozilla.org/docs/Web/API/MutationObserver)
*/
type mutationObserver = {}

/**
An XML document. It inherits from the generic Document and does not add any specific methods or properties to it: nevertheless, several algorithms behave differently with the two types of documents.
[See XMLDocument on MDN](https://developer.mozilla.org/docs/Web/API/XMLDocument)
*/
type xmlDocument = {
  ...document,
}

/**
A minimal document object that has no parent. It is used as a lightweight version of Document that stores a segment of a document structure comprised of nodes just like a standard document. The key difference is that because the document fragment isn't part of the active document tree structure, changes made to the fragment don't affect the document, cause reflow, or incur any performance impact that can occur when changes are made.
[See DocumentFragment on MDN](https://developer.mozilla.org/docs/Web/API/DocumentFragment)
*/
type documentFragment = {
  ...node,
}

/**
A DOM element's attribute as an object. In most DOM methods, you will probably directly retrieve the attribute as a string (e.g., Element.getAttribute(), but certain functions (e.g., Element.getAttributeNode()) or means of iterating give Attr types.
[See Attr on MDN](https://developer.mozilla.org/docs/Web/API/Attr)
*/
type attr = {
  ...node,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Attr/namespaceURI)
    */
  namespaceURI: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Attr/prefix)
    */
  prefix: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Attr/localName)
    */
  localName: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Attr/name)
    */
  name: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Attr/value)
    */
  mutable value: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Attr/ownerElement)
    */
  ownerElement: Null.t<element>,
}

/**
The CharacterData abstract interface represents a Node object that contains characters. This is an abstract interface, meaning there aren't any object of type CharacterData: it is implemented by other interfaces, like Text, Comment, or ProcessingInstruction which aren't abstract.
[See CharacterData on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData)
*/
type characterData = {
  ...node,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/data)
    */
  mutable data: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/length)
    */
  length: any,
}

/**
The textual content of Element or Attr. If an element has no markup within its content, it has a single child implementing Text that contains the element's text. However, if the element contains markup, it is parsed into information items and Text nodes that form its children.
[See Text on MDN](https://developer.mozilla.org/docs/Web/API/Text)
*/
type text = {
  ...characterData,
  /**
    Returns the combined data of all direct Text node siblings.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Text/wholeText)
    */
  wholeText: domString,
}

/**
A CDATA section that can be used within XML to include extended portions of unescaped text. The symbols < and & don’t need escaping as they normally do when inside a CDATA section.
[See CDATASection on MDN](https://developer.mozilla.org/docs/Web/API/CDATASection)
*/
type cdataSection = {
  ...text,
}

/**
A processing instruction embeds application-specific instructions in XML which can be ignored by other applications that don't recognize them.
[See ProcessingInstruction on MDN](https://developer.mozilla.org/docs/Web/API/ProcessingInstruction)
*/
type processingInstruction = {
  ...characterData,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ProcessingInstruction/target)
    */
  target: domString,
}

/**
Textual notations within markup; although it is generally not visually shown, such comments are available to be read in the source view.
[See Comment on MDN](https://developer.mozilla.org/docs/Web/API/Comment)
*/
type comment = {
  ...characterData,
}

/**
[See AbstractRange on MDN](https://developer.mozilla.org/docs/Web/API/AbstractRange)
*/
type abstractRange = {
  /**
    Returns range's start node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbstractRange/startContainer)
    */
  startContainer: node,
  /**
    Returns range's start offset.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbstractRange/startOffset)
    */
  startOffset: any,
  /**
    Returns range's end node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbstractRange/endContainer)
    */
  endContainer: node,
  /**
    Returns range's end offset.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbstractRange/endOffset)
    */
  endOffset: any,
  /**
    Returns true if range is collapsed, and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AbstractRange/collapsed)
    */
  collapsed: bool,
}

/**
[See StaticRange on MDN](https://developer.mozilla.org/docs/Web/API/StaticRange)
*/
type staticRange = {
  ...abstractRange,
}

/**
A fragment of a document that can contain nodes and parts of text nodes.
[See Range on MDN](https://developer.mozilla.org/docs/Web/API/Range)
*/
type range = {
  ...abstractRange,
  /**
    Returns the node, furthest away from the document, that is an ancestor of both range's start node and end node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/commonAncestorContainer)
    */
  commonAncestorContainer: node,
}

/**
An iterator over the members of a list of the nodes in a subtree of the DOM. The nodes will be returned in document order.
[See NodeIterator on MDN](https://developer.mozilla.org/docs/Web/API/NodeIterator)
*/
type nodeIterator = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NodeIterator/root)
    */
  root: node,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NodeIterator/referenceNode)
    */
  referenceNode: node,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NodeIterator/pointerBeforeReferenceNode)
    */
  pointerBeforeReferenceNode: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NodeIterator/whatToShow)
    */
  whatToShow: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NodeIterator/filter)
    */
  filter: Null.t<nodeFilter>,
}

/**
The nodes of a document subtree and a position within them.
[See TreeWalker on MDN](https://developer.mozilla.org/docs/Web/API/TreeWalker)
*/
type treeWalker = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TreeWalker/root)
    */
  root: node,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TreeWalker/whatToShow)
    */
  whatToShow: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TreeWalker/filter)
    */
  filter: Null.t<nodeFilter>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TreeWalker/currentNode)
    */
  mutable currentNode: node,
}

/**
The results generated by evaluating an XPath expression within the context of a given node.
[See XPathResult on MDN](https://developer.mozilla.org/docs/Web/API/XPathResult)
*/
type xPathResult = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/XPathResult/resultType)
    */
  resultType: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/XPathResult/numberValue)
    */
  numberValue: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/XPathResult/stringValue)
    */
  stringValue: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/XPathResult/booleanValue)
    */
  booleanValue: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/XPathResult/singleNodeValue)
    */
  singleNodeValue: Null.t<node>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/XPathResult/invalidIteratorState)
    */
  invalidIteratorState: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/XPathResult/snapshotLength)
    */
  snapshotLength: any,
}

/**
This interface is a compiled XPath expression that can be evaluated on a document or specific node to return information its DOM tree.
[See XPathExpression on MDN](https://developer.mozilla.org/docs/Web/API/XPathExpression)
*/
type xPathExpression = {}

/**
The XPathEvaluator interface allows to compile and evaluate XPath expressions.
[See XPathEvaluator on MDN](https://developer.mozilla.org/docs/Web/API/XPathEvaluator)
*/
type xPathEvaluator = {}

/**
An XSLTProcessor applies an XSLT stylesheet transformation to an XML document to produce a new XML document as output. It has methods to load the XSLT stylesheet, to manipulate <xsl:param> parameter values, and to apply the transformation to documents.
[See XSLTProcessor on MDN](https://developer.mozilla.org/docs/Web/API/XSLTProcessor)
*/
type xsltProcessor = {}

/**
A decoder for a specific method, that is a specific character encoding, like utf-8, iso-8859-2, koi8, cp1261, gbk, etc. A decoder takes a stream of bytes as input and emits a stream of code points. For a more scalable, non-native library, see StringView – a C-like representation of strings based on typed arrays.
[See TextDecoder on MDN](https://developer.mozilla.org/docs/Web/API/TextDecoder)
*/
type textDecoder = {}

/**
TextEncoder takes a stream of code points as input and emits a stream of bytes. For a more scalable, non-native library, see StringView – a C-like representation of strings based on typed arrays.
[See TextEncoder on MDN](https://developer.mozilla.org/docs/Web/API/TextEncoder)
*/
type textEncoder = {}

/**
[See TextDecoderStream on MDN](https://developer.mozilla.org/docs/Web/API/TextDecoderStream)
*/
type textDecoderStream = {}

/**
[See TextEncoderStream on MDN](https://developer.mozilla.org/docs/Web/API/TextEncoderStream)
*/
type textEncoderStream = {}

/**
This EncryptedMediaExtensions API interface provides access to a Key System for decryption and/or a content protection provider. You can request an instance of this object using the Navigator.requestMediaKeySystemAccess method.
[See MediaKeySystemAccess on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySystemAccess)
*/
type mediaKeySystemAccess = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySystemAccess/keySystem)
    */
  keySystem: domString,
}

/**
This EncryptedMediaExtensions API interface the represents a set of keys that an associated HTMLMediaElement can use for decryption of media data during playback.
[See MediaKeys on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeys)
*/
type mediaKeys = {}

/**
This EncryptedMediaExtensions API interface contains the content and related data when the content decryption module generates a message for the session.
[See MediaKeyMessageEvent on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeyMessageEvent)
*/
type mediaKeyMessageEvent = {
  ...event,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeyMessageEvent/messageType)
    */
  messageType: mediaKeyMessageType,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeyMessageEvent/message)
    */
  message: arrayBuffer,
}

/**
[See MediaEncryptedEvent on MDN](https://developer.mozilla.org/docs/Web/API/MediaEncryptedEvent)
*/
type mediaEncryptedEvent = {
  ...event,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaEncryptedEvent/initDataType)
    */
  initDataType: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaEncryptedEvent/initData)
    */
  initData: Null.t<arrayBuffer>,
}

/**
[See FileSystemDirectoryReader on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryReader)
*/
type fileSystemDirectoryReader = {}

/**
[See FileSystemFileEntry on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemFileEntry)
*/
type fileSystemFileEntry = {
  ...fileSystemEntry,
}

/**
Encapsulates a single performance metric that is part of the performance timeline. A performance entry can be directly created by making a performance mark or measure (for example by calling the mark() method) at an explicit point in an application. Performance entries are also created in indirect ways such as loading a resource (such as an image).
[See PerformanceEntry on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceEntry)
*/
type performanceEntry = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceEntry/name)
    */
  name: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceEntry/entryType)
    */
  entryType: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceEntry/startTime)
    */
  startTime: domHighResTimeStamp,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceEntry/duration)
    */
  duration: domHighResTimeStamp,
}

/**
[See PerformanceEventTiming on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceEventTiming)
*/
type performanceEventTiming = {
  ...performanceEntry,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceEventTiming/processingStart)
    */
  processingStart: domHighResTimeStamp,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceEventTiming/processingEnd)
    */
  processingEnd: domHighResTimeStamp,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceEventTiming/cancelable)
    */
  cancelable: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceEventTiming/target)
    */
  target: Null.t<node>,
}

/**
[See EventCounts on MDN](https://developer.mozilla.org/docs/Web/API/EventCounts)
*/
type eventCounts = {}

/**
This Fetch API interface allows you to perform various actions on HTTP request and response headers. These actions include retrieving, setting, adding to, and removing. A Headers object has an associated header list, which is initially empty and consists of zero or more name and value pairs.  You can add to this using methods like append() (see Examples.) In all methods of this interface, header names are matched by case-insensitive byte sequence.
[See Headers on MDN](https://developer.mozilla.org/docs/Web/API/Headers)
*/
type headers = {}

/**
This Fetch API interface represents a resource request.
[See Request on MDN](https://developer.mozilla.org/docs/Web/API/Request)
*/
type request = {
  /**
    Returns request's HTTP method, which is "GET" by default.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/method)
    */
  method: string,
  /**
    Returns the URL of request as a string.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/url)
    */
  url: usvString,
  /**
    Returns a Headers object consisting of the headers associated with request. Note that headers added in the network layer by the user agent will not be accounted for in this object, e.g., the "Host" header.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/headers)
    */
  headers: headers,
  /**
    Returns the kind of resource requested by request, e.g., "document" or "script".
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/destination)
    */
  destination: requestDestination,
  /**
    Returns the referrer of request. Its value can be a same-origin URL if explicitly set in init, the empty string to indicate no referrer, and "about:client" when defaulting to the global's default. This is used during fetching to determine the value of the `Referer` header of the request being made.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/referrer)
    */
  referrer: usvString,
  /**
    Returns the referrer policy associated with request. This is used during fetching to compute the value of the request's referrer.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/referrerPolicy)
    */
  referrerPolicy: referrerPolicy,
  /**
    Returns the mode associated with request, which is a string indicating whether the request will use CORS, or will be restricted to same-origin URLs.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/mode)
    */
  mode: requestMode,
  /**
    Returns the credentials mode associated with request, which is a string indicating whether credentials will be sent with the request always, never, or only when sent to a same-origin URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/credentials)
    */
  credentials: requestCredentials,
  /**
    Returns the cache mode associated with request, which is a string indicating how the request will interact with the browser's cache when fetching.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/cache)
    */
  cache: requestCache,
  /**
    Returns the redirect mode associated with request, which is a string indicating how redirects for the request will be handled during fetching. A request will follow redirects by default.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/redirect)
    */
  redirect: requestRedirect,
  /**
    Returns request's subresource integrity metadata, which is a cryptographic hash of the resource being fetched. Its value consists of multiple hashes separated by whitespace. [SRI]
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/integrity)
    */
  integrity: domString,
  /**
    Returns a boolean indicating whether or not request can outlive the global in which it was created.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/keepalive)
    */
  keepalive: bool,
  /**
    Returns the signal associated with request, which is an AbortSignal object indicating whether or not request has been aborted, and its abort event handler.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/signal)
    */
  signal: abortSignal,
}

/**
This Fetch API interface represents the response to a request.
[See Response on MDN](https://developer.mozilla.org/docs/Web/API/Response)
*/
type response = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response/type)
    */
  @as("type")
  type_: responseType,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response/url)
    */
  url: usvString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response/redirected)
    */
  redirected: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response/status)
    */
  status: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response/ok)
    */
  ok: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response/statusText)
    */
  statusText: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response/headers)
    */
  headers: headers,
}

/**
Provides access to the properties of <filter> elements, as well as methods to manipulate them.
[See SVGFilterElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGFilterElement)
*/
type svgFilterElement = {
  ...svgElement,
}

/**
Corresponds to the <feBlend> element.
[See SVGFEBlendElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGFEBlendElement)
*/
type svgfeBlendElement = {
  ...svgElement,
}

/**
Corresponds to the <feColorMatrix> element.
[See SVGFEColorMatrixElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGFEColorMatrixElement)
*/
type svgfeColorMatrixElement = {
  ...svgElement,
}

/**
Corresponds to the <feComponentTransfer> element.
[See SVGFEComponentTransferElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGFEComponentTransferElement)
*/
type svgfeComponentTransferElement = {
  ...svgElement,
}

/**
A base interface used by the component transfer function interfaces.
[See SVGComponentTransferFunctionElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGComponentTransferFunctionElement)
*/
type svgComponentTransferFunctionElement = {
  ...svgElement,
}

/**
Corresponds to the <feFuncR> element.
[See SVGFEFuncRElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGFEFuncRElement)
*/
type svgfeFuncRElement = {
  ...svgComponentTransferFunctionElement,
}

/**
Corresponds to the <feFuncG> element.
[See SVGFEFuncGElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGFEFuncGElement)
*/
type svgfeFuncGElement = {
  ...svgComponentTransferFunctionElement,
}

/**
Corresponds to the <feFuncB> element.
[See SVGFEFuncBElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGFEFuncBElement)
*/
type svgfeFuncBElement = {
  ...svgComponentTransferFunctionElement,
}

/**
Corresponds to the <feFuncA> element.
[See SVGFEFuncAElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGFEFuncAElement)
*/
type svgfeFuncAElement = {
  ...svgComponentTransferFunctionElement,
}

/**
Corresponds to the <feComposite> element.
[See SVGFECompositeElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGFECompositeElement)
*/
type svgfeCompositeElement = {
  ...svgElement,
}

/**
Corresponds to the <feConvolveMatrix> element.
[See SVGFEConvolveMatrixElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGFEConvolveMatrixElement)
*/
type svgfeConvolveMatrixElement = {
  ...svgElement,
}

/**
Corresponds to the <feDiffuseLighting> element.
[See SVGFEDiffuseLightingElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGFEDiffuseLightingElement)
*/
type svgfeDiffuseLightingElement = {
  ...svgElement,
}

/**
Corresponds to the <feDistantLight> element.
[See SVGFEDistantLightElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGFEDistantLightElement)
*/
type svgfeDistantLightElement = {
  ...svgElement,
}

/**
Corresponds to the <fePointLight> element.
[See SVGFEPointLightElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGFEPointLightElement)
*/
type svgfePointLightElement = {
  ...svgElement,
}

/**
Corresponds to the <feSpotLight> element.
[See SVGFESpotLightElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGFESpotLightElement)
*/
type svgfeSpotLightElement = {
  ...svgElement,
}

/**
Corresponds to the <feDisplacementMap> element.
[See SVGFEDisplacementMapElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGFEDisplacementMapElement)
*/
type svgfeDisplacementMapElement = {
  ...svgElement,
}

/**
[See SVGFEDropShadowElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGFEDropShadowElement)
*/
type svgfeDropShadowElement = {
  ...svgElement,
}

/**
Corresponds to the <feFlood> element.
[See SVGFEFloodElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGFEFloodElement)
*/
type svgfeFloodElement = {
  ...svgElement,
}

/**
Corresponds to the <feGaussianBlur> element.
[See SVGFEGaussianBlurElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGFEGaussianBlurElement)
*/
type svgfeGaussianBlurElement = {
  ...svgElement,
}

/**
Corresponds to the <feImage> element.
[See SVGFEImageElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGFEImageElement)
*/
type svgfeImageElement = {
  ...svgElement,
}

/**
Corresponds to the <feMerge> element.
[See SVGFEMergeElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGFEMergeElement)
*/
type svgfeMergeElement = {
  ...svgElement,
}

/**
Corresponds to the <feMergeNode> element.
[See SVGFEMergeNodeElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGFEMergeNodeElement)
*/
type svgfeMergeNodeElement = {
  ...svgElement,
}

/**
Corresponds to the <feMorphology> element.
[See SVGFEMorphologyElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGFEMorphologyElement)
*/
type svgfeMorphologyElement = {
  ...svgElement,
}

/**
Corresponds to the <feOffset> element.
[See SVGFEOffsetElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGFEOffsetElement)
*/
type svgfeOffsetElement = {
  ...svgElement,
}

/**
Corresponds to the <feSpecularLighting> element.
[See SVGFESpecularLightingElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGFESpecularLightingElement)
*/
type svgfeSpecularLightingElement = {
  ...svgElement,
}

/**
Corresponds to the <feTile> element.
[See SVGFETileElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGFETileElement)
*/
type svgfeTileElement = {
  ...svgElement,
}

/**
Corresponds to the <feTurbulence> element.
[See SVGFETurbulenceElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGFETurbulenceElement)
*/
type svgfeTurbulenceElement = {
  ...svgElement,
}

/**
[See FileSystemHandle on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemHandle)
*/
type fileSystemHandle = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemHandle/kind)
    */
  kind: fileSystemHandleKind,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemHandle/name)
    */
  name: usvString,
}

/**
[See FileSystemFileHandle on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemFileHandle)
*/
type fileSystemFileHandle = {
  ...fileSystemHandle,
}

/**
[See FileSystemDirectoryHandle on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryHandle)
*/
type fileSystemDirectoryHandle = {
  ...fileSystemHandle,
}

/**
This Streams API interface provides a standard abstraction for writing streaming data to a destination, known as a sink. This object comes with built-in backpressure and queuing.
[See WritableStream on MDN](https://developer.mozilla.org/docs/Web/API/WritableStream)
*/
type writableStream<'w> = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WritableStream/locked)
    */
  locked: bool,
}

/**
[See FileSystemWritableFileStream on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemWritableFileStream)
*/
type fileSystemWritableFileStream = {
  ...writableStream<any>,
}

/**
This Gamepad API interface defines an individual gamepad or other controller, allowing access to information such as button presses, axis positions, and id.
[See Gamepad on MDN](https://developer.mozilla.org/docs/Web/API/Gamepad)
*/
type gamepad = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Gamepad/id)
    */
  id: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Gamepad/index)
    */
  index: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Gamepad/connected)
    */
  connected: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Gamepad/timestamp)
    */
  timestamp: domHighResTimeStamp,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Gamepad/mapping)
    */
  mapping: gamepadMappingType,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Gamepad/axes)
    */
  axes: array<float>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Gamepad/buttons)
    */
  buttons: array<gamepadButton>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Gamepad/vibrationActuator)
    */
  vibrationActuator: gamepadHapticActuator,
}

/**
This Gamepad API interface contains references to gamepads connected to the system, which is what the gamepad events Window.gamepadconnected and Window.gamepaddisconnected are fired in response to.
[See GamepadEvent on MDN](https://developer.mozilla.org/docs/Web/API/GamepadEvent)
*/
type gamepadEvent = {
  ...event,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/GamepadEvent/gamepad)
    */
  gamepad: gamepad,
}

/**
[See GeolocationPosition on MDN](https://developer.mozilla.org/docs/Web/API/GeolocationPosition)
*/
type geolocationPosition = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/GeolocationPosition/coords)
    */
  coords: geolocationCoordinates,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/GeolocationPosition/timestamp)
    */
  timestamp: int,
}

/**
[See GeolocationPositionError on MDN](https://developer.mozilla.org/docs/Web/API/GeolocationPositionError)
*/
type geolocationPositionError = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/GeolocationPositionError/code)
    */
  code: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/GeolocationPositionError/message)
    */
  message: domString,
}

/**
[See DOMPointReadOnly on MDN](https://developer.mozilla.org/docs/Web/API/DOMPointReadOnly)
*/
type domPointReadOnly = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMPointReadOnly/x)
    */
  x: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMPointReadOnly/y)
    */
  y: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMPointReadOnly/z)
    */
  z: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMPointReadOnly/w)
    */
  w: any,
}

/**
[See DOMPoint on MDN](https://developer.mozilla.org/docs/Web/API/DOMPoint)
*/
type domPoint = {
  ...domPointReadOnly,
}

/**
[See DOMRectReadOnly on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly)
*/
type domRectReadOnly = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly/x)
    */
  x: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly/y)
    */
  y: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly/width)
    */
  width: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly/height)
    */
  height: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly/top)
    */
  top: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly/right)
    */
  right: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly/bottom)
    */
  bottom: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly/left)
    */
  left: any,
}

/**
[See DOMRect on MDN](https://developer.mozilla.org/docs/Web/API/DOMRect)
*/
type domRect = {
  ...domRectReadOnly,
}

type domRectList = {}

/**
[See DOMQuad on MDN](https://developer.mozilla.org/docs/Web/API/DOMQuad)
*/
type domQuad = {}

/**
Provides access to performance-related information for the current page. It's part of the High Resolution Time API, but is enhanced by the Performance Timeline API, the Navigation Timing API, the User Timing API, and the Resource Timing API.
[See Performance on MDN](https://developer.mozilla.org/docs/Web/API/Performance)
*/
type performance = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/timeOrigin)
    */
  timeOrigin: domHighResTimeStamp,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Performance/eventCounts)
    */
  eventCounts: eventCounts,
}

/**
[See HTMLAllCollection on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAllCollection)
*/
type htmlAllCollection = {
  /**
    Returns the number of elements in the collection.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAllCollection/length)
    */
  length: any,
}

/**
[See RadioNodeList on MDN](https://developer.mozilla.org/docs/Web/API/RadioNodeList)
*/
type radioNodeList = {
  ...nodeList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RadioNodeList/value)
    */
  mutable value: domString,
}

/**
An invalid HTML element and derives from the HTMLElement interface, but without implementing any additional properties or methods.
[See HTMLUnknownElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLUnknownElement)
*/
type htmlUnknownElement = {
  ...htmlElement,
}

/**
Used by the dataset HTML attribute to represent data for custom attributes added to elements.
[See DOMStringMap on MDN](https://developer.mozilla.org/docs/Web/API/DOMStringMap)
*/
type domStringMap = {}

/**
Serves as the root node for a given HTML document. This object inherits the properties and methods described in the HTMLElement interface.
[See HTMLHtmlElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLHtmlElement)
*/
type htmlHtmlElement = {
  ...htmlElement,
}

/**
Contains the title for a document. This element inherits all of the properties and methods of the HTMLElement interface.
[See HTMLTitleElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTitleElement)
*/
type htmlTitleElement = {
  ...htmlElement,
  /**
    Retrieves or sets the text of the object as a string.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTitleElement/text)
    */
  mutable text: domString,
}

/**
Contains the base URI for a document. This object inherits all of the properties and methods as described in the HTMLElement interface.
[See HTMLBaseElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLBaseElement)
*/
type htmlBaseElement = {
  ...htmlElement,
  /**
    Gets or sets the baseline URL on which relative links are based.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLBaseElement/href)
    */
  mutable href: usvString,
  /**
    Sets or retrieves the window or frame at which to target content.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLBaseElement/target)
    */
  mutable target: domString,
}

/**
Reference information for external resources and the relationship of those resources to a document and vice-versa. This object inherits all of the properties and methods of the HTMLElement interface.
[See HTMLLinkElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLinkElement)
*/
type htmlLinkElement = {
  ...htmlElement,
  /**
    Sets or retrieves a destination URL or an anchor point.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLinkElement/href)
    */
  mutable href: usvString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLinkElement/crossOrigin)
    */
  mutable crossOrigin: Null.t<domString>,
  /**
    Sets or retrieves the relationship between the object and the destination of the link.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLinkElement/rel)
    */
  mutable rel: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLinkElement/as)
    */
  @as("as")
  mutable as_: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLinkElement/relList)
    */
  relList: domTokenList,
  /**
    Sets or retrieves the media type.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLinkElement/media)
    */
  mutable media: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLinkElement/integrity)
    */
  mutable integrity: domString,
  /**
    Sets or retrieves the language code of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLinkElement/hreflang)
    */
  mutable hreflang: domString,
  /**
    Sets or retrieves the MIME type of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLinkElement/type)
    */
  @as("type")
  mutable type_: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLinkElement/referrerPolicy)
    */
  mutable referrerPolicy: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLinkElement/disabled)
    */
  mutable disabled: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLinkElement/fetchPriority)
    */
  mutable fetchPriority: domString,
}

/**
Contains descriptive metadata about a document. It inherits all of the properties and methods described in the HTMLElement interface.
[See HTMLMetaElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMetaElement)
*/
type htmlMetaElement = {
  ...htmlElement,
  /**
    Sets or retrieves the value specified in the content attribute of the meta object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMetaElement/name)
    */
  mutable name: domString,
  /**
    Gets or sets information used to bind the value of a content attribute of a meta element to an HTTP response header.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMetaElement/httpEquiv)
    */
  mutable httpEquiv: domString,
  /**
    Gets or sets meta-information to associate with httpEquiv or name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMetaElement/content)
    */
  mutable content: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMetaElement/media)
    */
  mutable media: domString,
}

/**
A <style> element. It inherits properties and methods from its parent, HTMLElement, and from LinkStyle.
[See HTMLStyleElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLStyleElement)
*/
type htmlStyleElement = {
  ...htmlElement,
  /**
    Enables or disables the style sheet.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLStyleElement/disabled)
    */
  mutable disabled: bool,
  /**
    Sets or retrieves the media type.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLStyleElement/media)
    */
  mutable media: domString,
}

/**
Provides special properties (beyond those inherited from the regular HTMLElement interface) for manipulating <body> elements.
[See HTMLBodyElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLBodyElement)
*/
type htmlBodyElement = {
  ...htmlElement,
}

/**
The different heading elements. It inherits methods and properties from the HTMLElement interface.
[See HTMLHeadingElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLHeadingElement)
*/
type htmlHeadingElement = {
  ...htmlElement,
}

/**
Provides special properties (beyond those of the regular HTMLElement object interface it inherits) for manipulating <p> elements.
[See HTMLParagraphElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLParagraphElement)
*/
type htmlParagraphElement = {
  ...htmlElement,
}

/**
Provides special properties (beyond those of the HTMLElement interface it also has available to it by inheritance) for manipulating <hr> elements.
[See HTMLHRElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLHRElement)
*/
type htmlhrElement = {
  ...htmlElement,
}

/**
Exposes specific properties and methods (beyond those of the HTMLElement interface it also has available to it by inheritance) for manipulating a block of preformatted text (<pre>).
[See HTMLPreElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLPreElement)
*/
type htmlPreElement = {
  ...htmlElement,
}

/**
Provides special properties and methods (beyond the regular HTMLElement interface it also has available to it by inheritance) for manipulating quoting elements, like <blockquote> and <q>, but not the <cite> element.
[See HTMLQuoteElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLQuoteElement)
*/
type htmlQuoteElement = {
  ...htmlElement,
}

/**
Provides special properties (beyond those defined on the regular HTMLElement interface it also has available to it by inheritance) for manipulating ordered list elements.
[See HTMLOListElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOListElement)
*/
type htmloListElement = {
  ...htmlElement,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOListElement/reversed)
    */
  mutable reversed: bool,
  /**
    The starting number.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOListElement/start)
    */
  mutable start: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOListElement/type)
    */
  @as("type")
  mutable type_: domString,
}

/**
Provides special properties (beyond those defined on the regular HTMLElement interface it also has available to it by inheritance) for manipulating unordered list elements.
[See HTMLUListElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLUListElement)
*/
type htmluListElement = {
  ...htmlElement,
}

/**
[See HTMLMenuElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMenuElement)
*/
type htmlMenuElement = {
  ...htmlElement,
}

/**
Exposes specific properties and methods (beyond those defined by regular HTMLElement interface it also has available to it by inheritance) for manipulating list elements.
[See HTMLLIElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLIElement)
*/
type htmlliElement = {
  ...htmlElement,
}

/**
Provides special properties (beyond those of the regular HTMLElement interface it also has available to it by inheritance) for manipulating definition list (<dl>) elements.
[See HTMLDListElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLDListElement)
*/
type htmldListElement = {
  ...htmlElement,
}

/**
Provides special properties (beyond the regular HTMLElement interface it also has available to it by inheritance) for manipulating <div> elements.
[See HTMLDivElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLDivElement)
*/
type htmlDivElement = {
  ...htmlElement,
}

/**
Provides special properties (beyond the regular HTMLElement interface it also has available to it by inheritance) for manipulating <data> elements.
[See HTMLDataElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLDataElement)
*/
type htmlDataElement = {
  ...htmlElement,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLDataElement/value)
    */
  mutable value: domString,
}

/**
Provides special properties (beyond the regular HTMLElement interface it also has available to it by inheritance) for manipulating <time> elements.
[See HTMLTimeElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTimeElement)
*/
type htmlTimeElement = {
  ...htmlElement,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTimeElement/dateTime)
    */
  mutable dateTime: domString,
}

/**
A <span> element and derives from the HTMLElement interface, but without implementing any additional properties or methods.
[See HTMLSpanElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSpanElement)
*/
type htmlSpanElement = {
  ...htmlElement,
}

/**
A HTML line break element (<br>). It inherits from HTMLElement.
[See HTMLBRElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLBRElement)
*/
type htmlbrElement = {
  ...htmlElement,
}

/**
Provides special properties (beyond the regular methods and properties available through the HTMLElement interface they also have available to them by inheritance) for manipulating modification elements, that is <del> and <ins>.
[See HTMLModElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLModElement)
*/
type htmlModElement = {
  ...htmlElement,
}

/**
A <picture> HTML element. It doesn't implement specific properties or methods.
[See HTMLPictureElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLPictureElement)
*/
type htmlPictureElement = {
  ...htmlElement,
}

/**
Provides special properties (beyond the regular HTMLElement object interface it also has available to it by inheritance) for manipulating <source> elements.
[See HTMLSourceElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSourceElement)
*/
type htmlSourceElement = {
  ...htmlElement,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSourceElement/width)
    */
  mutable width: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSourceElement/height)
    */
  mutable height: any,
}

/**
Provides special properties and methods (beyond those of the HTMLElement interface it also has available to it by inheritance) for manipulating the layout and presentation of inline frame elements.
[See HTMLIFrameElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLIFrameElement)
*/
type htmliFrameElement = {
  ...htmlElement,
  /**
    Sets or retrieves a URL to be loaded by the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLIFrameElement/src)
    */
  mutable src: usvString,
  /**
    Sets or retrives the content of the page that is to contain.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLIFrameElement/srcdoc)
    */
  mutable srcdoc: unknown,
  /**
    Sets or retrieves the frame name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLIFrameElement/name)
    */
  mutable name: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLIFrameElement/sandbox)
    */
  sandbox: domTokenList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLIFrameElement/allow)
    */
  mutable allow: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLIFrameElement/allowFullscreen)
    */
  mutable allowFullscreen: bool,
  /**
    Sets or retrieves the width of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLIFrameElement/width)
    */
  mutable width: domString,
  /**
    Sets or retrieves the height of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLIFrameElement/height)
    */
  mutable height: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLIFrameElement/referrerPolicy)
    */
  mutable referrerPolicy: referrerPolicy,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLIFrameElement/loading)
    */
  mutable loading: domString,
  /**
    Retrieves the document object of the page or frame.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLIFrameElement/contentDocument)
    */
  contentDocument: Null.t<document>,
  /**
    Retrieves the object of the specified.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLIFrameElement/contentWindow)
    */
  contentWindow: Null.t<window>,
}

/**
Provides special properties and methods (beyond those on the HTMLElement interface it also has available to it by inheritance) for manipulating the layout and presentation of <object> element, representing external resources.
[See HTMLObjectElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLObjectElement)
*/
type htmlObjectElement = {
  ...htmlElement,
  /**
    Sets or retrieves the URL that references the data of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLObjectElement/data)
    */
  mutable data: usvString,
  /**
    Sets or retrieves the MIME type of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLObjectElement/type)
    */
  @as("type")
  mutable type_: domString,
  /**
    Sets or retrieves the name of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLObjectElement/name)
    */
  mutable name: domString,
  /**
    Retrieves a reference to the form that the object is embedded in.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLObjectElement/form)
    */
  form: Null.t<htmlFormElement>,
  /**
    Sets or retrieves the width of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLObjectElement/width)
    */
  mutable width: domString,
  /**
    Sets or retrieves the height of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLObjectElement/height)
    */
  mutable height: domString,
  /**
    Retrieves the document object of the page or frame.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLObjectElement/contentDocument)
    */
  contentDocument: Null.t<document>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLObjectElement/contentWindow)
    */
  contentWindow: Null.t<window>,
  /**
    Returns whether an element will successfully validate based on forms validation rules and constraints.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLObjectElement/willValidate)
    */
  willValidate: bool,
  /**
    Returns a  ValidityState object that represents the validity states of an element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLObjectElement/validity)
    */
  validity: validityState,
  /**
    Returns the error message that would be displayed if the user submits the form, or an empty string if no error message. It also triggers the standard error message, such as "this is a required field". The result is that the user sees validation messages without actually submitting.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLObjectElement/validationMessage)
    */
  validationMessage: domString,
}

/**
Adds to HTMLElement the properties and methods needed to support basic media-related capabilities that are common to audio and video.
[See HTMLMediaElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement)
*/
type htmlMediaElement = {
  ...htmlElement,
  /**
    Returns an object representing the current error state of the audio or video element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/error)
    */
  error: Null.t<mediaError>,
  /**
    The address or URL of the a media resource that is to be considered.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/src)
    */
  mutable src: usvString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/srcObject)
    */
  mutable srcObject: Null.t<mediaProvider>,
  /**
    Gets the address or URL of the current media resource that is selected by IHTMLMediaElement.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/currentSrc)
    */
  currentSrc: usvString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/crossOrigin)
    */
  mutable crossOrigin: Null.t<domString>,
  /**
    Gets the current network activity for the element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/networkState)
    */
  networkState: int,
  /**
    Gets or sets a value indicating what data should be preloaded, if any.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/preload)
    */
  mutable preload: string,
  /**
    Gets a collection of buffered time ranges.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/buffered)
    */
  buffered: timeRanges,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/readyState)
    */
  readyState: int,
  /**
    Gets or sets the current playback position, in seconds.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/currentTime)
    */
  mutable currentTime: float,
  /**
    Returns the duration in seconds of the current media resource. A NaN value is returned if duration is not available, or Infinity if the media resource is streaming.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/duration)
    */
  duration: any,
  /**
    Gets a flag that specifies whether playback is paused.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/paused)
    */
  paused: bool,
  /**
    Gets or sets the default playback rate when the user is not using fast forward or reverse for a video or audio resource.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/defaultPlaybackRate)
    */
  mutable defaultPlaybackRate: float,
  /**
    Gets or sets the current rate of speed for the media resource to play. This speed is expressed as a multiple of the normal speed of the media resource.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/playbackRate)
    */
  mutable playbackRate: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/preservesPitch)
    */
  mutable preservesPitch: bool,
  /**
    Returns a TimeRanges object that represents the ranges of the current media resource that can be seeked.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/seekable)
    */
  seekable: timeRanges,
  /**
    Gets information about whether the playback has ended or not.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/ended)
    */
  ended: bool,
  /**
    Gets or sets a value that indicates whether to start playing the media automatically.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/autoplay)
    */
  mutable autoplay: bool,
  /**
    Gets or sets a flag to specify whether playback should restart after it completes.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/loop)
    */
  mutable loop: bool,
  /**
    Gets or sets a flag that indicates whether the client provides a set of controls for the media (in case the developer does not include controls for the player).
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/controls)
    */
  mutable controls: bool,
  /**
    Gets or sets the volume level for audio portions of the media element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/volume)
    */
  mutable volume: float,
  /**
    Gets or sets a flag that indicates whether the audio (either audio or the audio track on video media) is muted.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/muted)
    */
  mutable muted: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/defaultMuted)
    */
  mutable defaultMuted: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/textTracks)
    */
  textTracks: textTrackList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/sinkId)
    */
  sinkId: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/mediaKeys)
    */
  mediaKeys: Null.t<mediaKeys>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/remote)
    */
  remote: remotePlayback,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/disableRemotePlayback)
    */
  mutable disableRemotePlayback: bool,
}

/**
Provides special properties and methods for manipulating video objects. It also inherits properties and methods of HTMLMediaElement and HTMLElement.
[See HTMLVideoElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLVideoElement)
*/
type htmlVideoElement = {
  ...htmlMediaElement,
  /**
    Gets or sets the width of the video element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLVideoElement/width)
    */
  mutable width: any,
  /**
    Gets or sets the height of the video element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLVideoElement/height)
    */
  mutable height: any,
  /**
    Gets the intrinsic width of a video in CSS pixels, or zero if the dimensions are not known.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLVideoElement/videoWidth)
    */
  videoWidth: any,
  /**
    Gets the intrinsic height of a video in CSS pixels, or zero if the dimensions are not known.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLVideoElement/videoHeight)
    */
  videoHeight: any,
  /**
    Gets or sets a URL of an image to display, for example, like a movie poster. This can be a still frame from the video, or another image if no video data is available.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLVideoElement/poster)
    */
  mutable poster: usvString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLVideoElement/disablePictureInPicture)
    */
  mutable disablePictureInPicture: bool,
}

/**
Provides access to the properties of <audio> elements, as well as methods to manipulate them. It derives from the HTMLMediaElement interface.
[See HTMLAudioElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAudioElement)
*/
type htmlAudioElement = {
  ...htmlMediaElement,
}

/**
The HTMLTrackElement
[See HTMLTrackElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTrackElement)
*/
type htmlTrackElement = {
  ...htmlElement,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTrackElement/src)
    */
  mutable src: usvString,
}

/**
This interface also inherits properties from EventTarget.
[See TextTrack on MDN](https://developer.mozilla.org/docs/Web/API/TextTrack)
*/
type textTrack = {
  ...eventTarget,
  /**
    Returns the text track kind string.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextTrack/kind)
    */
  kind: textTrackKind,
  /**
    Returns the text track label, if there is one, or the empty string otherwise (indicating that a custom label probably needs to be generated from the other attributes of the object if the object is exposed to the user).
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextTrack/label)
    */
  label: domString,
  /**
    Returns the text track language string.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextTrack/language)
    */
  language: domString,
  /**
    Returns the ID of the given track.

For in-band tracks, this is the ID that can be used with a fragment if the format supports media fragment syntax, and that can be used with the getTrackById() method.

For TextTrack objects corresponding to track elements, this is the ID of the track element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextTrack/id)
    */
  id: domString,
  /**
    Returns the text track in-band metadata track dispatch type string.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextTrack/inBandMetadataTrackDispatchType)
    */
  inBandMetadataTrackDispatchType: domString,
  /**
    Returns the text track mode, represented by a string from the following list:

Can be set, to change the mode.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextTrack/mode)
    */
  mutable mode: textTrackMode,
  /**
    Returns the text track list of cues, as a TextTrackCueList object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextTrack/cues)
    */
  cues: Null.t<textTrackCueList>,
  /**
    Returns the text track cues from the text track list of cues that are currently active (i.e. that start before the current playback position and end after it), as a TextTrackCueList object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextTrack/activeCues)
    */
  activeCues: Null.t<textTrackCueList>,
}

/**
TextTrackCues represent a string of text that will be displayed for some duration of time on a TextTrack. This includes the start and end times that the cue will be displayed. A TextTrackCue cannot be used directly, instead one of the derived types (e.g. VTTCue) must be used.
[See TextTrackCue on MDN](https://developer.mozilla.org/docs/Web/API/TextTrackCue)
*/
type textTrackCue = {
  ...eventTarget,
  /**
    Returns the TextTrack object to which this text track cue belongs, if any, or null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextTrackCue/track)
    */
  track: Null.t<textTrack>,
  /**
    Returns the text track cue identifier.

Can be set.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextTrackCue/id)
    */
  mutable id: domString,
  /**
    Returns the text track cue start time, in seconds.

Can be set.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextTrackCue/startTime)
    */
  mutable startTime: float,
  /**
    Returns the text track cue end time, in seconds.

Can be set.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextTrackCue/endTime)
    */
  mutable endTime: any,
  /**
    Returns true if the text track cue pause-on-exit flag is set, false otherwise.

Can be set.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextTrackCue/pauseOnExit)
    */
  mutable pauseOnExit: bool,
}

/**
The TrackEvent interface, part of the HTML DOM specification, is used for events which represent changes to the set of available tracks on an HTML media element; these events are addtrack and removetrack.
[See TrackEvent on MDN](https://developer.mozilla.org/docs/Web/API/TrackEvent)
*/
type trackEvent = {
  ...event,
  /**
    Returns the track object (TextTrack, AudioTrack, or VideoTrack) to which the event relates.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TrackEvent/track)
    */
  track: Null.t<unknown>,
}

/**
Provides special properties and methods (beyond those of the regular object HTMLElement interface it also has available to it by inheritance) for manipulating the layout and presentation of map elements.
[See HTMLMapElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMapElement)
*/
type htmlMapElement = {
  ...htmlElement,
  /**
    Sets or retrieves the name of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMapElement/name)
    */
  mutable name: domString,
  /**
    Retrieves a collection of the area objects defined for the given map object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMapElement/areas)
    */
  areas: htmlCollection,
}

/**
Provides special properties (beyond the HTMLElement interface it also has available to it inheritance) for manipulating single or grouped table column elements.
[See HTMLTableColElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableColElement)
*/
type htmlTableColElement = {
  ...htmlElement,
  /**
    Sets or retrieves the number of columns in the group.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableColElement/span)
    */
  mutable span: any,
}

/**
Provides special properties and methods (beyond the regular HTMLElement object interface they also have available to them by inheritance) for manipulating the layout and presentation of <optgroup> elements.
[See HTMLOptGroupElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOptGroupElement)
*/
type htmlOptGroupElement = {
  ...htmlElement,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOptGroupElement/disabled)
    */
  mutable disabled: bool,
  /**
    Sets or retrieves a value that you can use to implement your own label functionality for the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOptGroupElement/label)
    */
  mutable label: domString,
}

/**
Provides special properties and methods (beyond the regular HTMLElement interface it also has available to it by inheritance) for manipulating the layout and presentation of <progress> elements.
[See HTMLProgressElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLProgressElement)
*/
type htmlProgressElement = {
  ...htmlElement,
  /**
    Sets or gets the current value of a progress element. The value must be a non-negative number between 0 and the max value.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLProgressElement/value)
    */
  mutable value: float,
  /**
    Defines the maximum, or "done" value for a progress element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLProgressElement/max)
    */
  mutable max: float,
  /**
    Returns the quotient of value/max when the value attribute is set (determinate progress bar), or -1 when the value attribute is missing (indeterminate progress bar).
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLProgressElement/position)
    */
  position: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLProgressElement/labels)
    */
  labels: nodeListOf<htmlLabelElement>,
}

/**
The HTML <meter> elements expose the HTMLMeterElement interface, which provides special properties and methods (beyond the HTMLElement object interface they also have available to them by inheritance) for manipulating the layout and presentation of <meter> elements.
[See HTMLMeterElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMeterElement)
*/
type htmlMeterElement = {
  ...htmlElement,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMeterElement/value)
    */
  mutable value: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMeterElement/min)
    */
  mutable min: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMeterElement/max)
    */
  mutable max: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMeterElement/low)
    */
  mutable low: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMeterElement/high)
    */
  mutable high: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMeterElement/optimum)
    */
  mutable optimum: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMeterElement/labels)
    */
  labels: nodeListOf<htmlLabelElement>,
}

/**
Provides special properties and methods (beyond the regular HTMLElement interface it also has available to it by inheritance) for manipulating the layout and presentation of <fieldset> elements.
[See HTMLFieldSetElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFieldSetElement)
*/
type htmlFieldSetElement = {
  ...htmlElement,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFieldSetElement/disabled)
    */
  mutable disabled: bool,
  /**
    Retrieves a reference to the form that the object is embedded in.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFieldSetElement/form)
    */
  form: Null.t<htmlFormElement>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFieldSetElement/name)
    */
  mutable name: domString,
  /**
    Returns the string "fieldset".
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFieldSetElement/type)
    */
  @as("type")
  type_: domString,
  /**
    Returns an HTMLCollection of the form controls in the element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFieldSetElement/elements)
    */
  elements: htmlCollection,
  /**
    Returns whether an element will successfully validate based on forms validation rules and constraints.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFieldSetElement/willValidate)
    */
  willValidate: bool,
  /**
    Returns a  ValidityState object that represents the validity states of an element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFieldSetElement/validity)
    */
  validity: validityState,
  /**
    Returns the error message that would be displayed if the user submits the form, or an empty string if no error message. It also triggers the standard error message, such as "this is a required field". The result is that the user sees validation messages without actually submitting.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFieldSetElement/validationMessage)
    */
  validationMessage: domString,
}

/**
The HTMLLegendElement is an interface allowing to access properties of the <legend> elements. It inherits properties and methods from the HTMLElement interface.
[See HTMLLegendElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLegendElement)
*/
type htmlLegendElement = {
  ...htmlElement,
  /**
    Retrieves a reference to the form that the object is embedded in.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLegendElement/form)
    */
  form: Null.t<htmlFormElement>,
}

/**
[See SubmitEvent on MDN](https://developer.mozilla.org/docs/Web/API/SubmitEvent)
*/
type submitEvent = {
  ...event,
  /**
    Returns the element representing the submit button that triggered the form submission, or null if the submission was not triggered by a button.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubmitEvent/submitter)
    */
  submitter: Null.t<htmlElement>,
}

/**
[See FormDataEvent on MDN](https://developer.mozilla.org/docs/Web/API/FormDataEvent)
*/
type formDataEvent = {
  ...event,
  /**
    Returns a FormData object representing names and values of elements associated to the target form. Operations on the FormData object will affect form data to be submitted.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FormDataEvent/formData)
    */
  formData: formData,
}

/**
[See HTMLDetailsElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLDetailsElement)
*/
type htmlDetailsElement = {
  ...htmlElement,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLDetailsElement/open)
    */
  mutable name: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLDetailsElement/open)
    */
  @as("open")
  mutable open_: bool,
}

/**
[See HTMLDialogElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLDialogElement)
*/
type htmlDialogElement = {
  ...htmlElement,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLDialogElement/open)
    */
  @as("open")
  mutable open_: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLDialogElement/returnValue)
    */
  mutable returnValue: domString,
}

/**
Enables access to the contents of an HTML <template> element.
[See HTMLTemplateElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTemplateElement)
*/
type htmlTemplateElement = {
  ...htmlElement,
  /**
    Returns the template contents (a DocumentFragment).
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTemplateElement/content)
    */
  content: documentFragment,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTemplateElement/shadowRootMode)
    */
  mutable shadowRootMode: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTemplateElement/shadowRootDelegatesFocus)
    */
  mutable shadowRootDelegatesFocus: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTemplateElement/shadowRootClonable)
    */
  mutable shadowRootClonable: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTemplateElement/shadowRootSerializable)
    */
  mutable shadowRootSerializable: bool,
}

/**
[See HTMLSlotElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSlotElement)
*/
type htmlSlotElement = {
  ...htmlElement,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSlotElement/name)
    */
  mutable name: domString,
}

/**
Provides properties and methods for manipulating the layout and presentation of <canvas> elements. The HTMLCanvasElement interface also inherits the properties and methods of the HTMLElement interface.
[See HTMLCanvasElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLCanvasElement)
*/
type htmlCanvasElement = {
  ...htmlElement,
  /**
    Gets or sets the width of a canvas element on a document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLCanvasElement/width)
    */
  mutable width: any,
  /**
    Gets or sets the height of a canvas element on a document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLCanvasElement/height)
    */
  mutable height: any,
}

/**
The CanvasRenderingContext2D interface, part of the Canvas API, provides the 2D rendering context for the drawing surface of a <canvas> element. It is used for drawing shapes, text, images, and other objects.
[See CanvasRenderingContext2D on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D)
*/
type canvasRenderingContext2D = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/canvas)
    */
  canvas: htmlCanvasElement,
}

/**
An opaque object describing a gradient. It is returned by the methods CanvasRenderingContext2D.createLinearGradient() or CanvasRenderingContext2D.createRadialGradient().
[See CanvasGradient on MDN](https://developer.mozilla.org/docs/Web/API/CanvasGradient)
*/
type canvasGradient = {}

/**
An opaque object describing a pattern, based on an image, a canvas, or a video, created by the CanvasRenderingContext2D.createPattern() method.
[See CanvasPattern on MDN](https://developer.mozilla.org/docs/Web/API/CanvasPattern)
*/
type canvasPattern = {}

/**
The dimensions of a piece of text in the canvas, as created by the CanvasRenderingContext2D.measureText() method.
[See TextMetrics on MDN](https://developer.mozilla.org/docs/Web/API/TextMetrics)
*/
type textMetrics = {
  /**
    Returns the measurement described below.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextMetrics/width)
    */
  width: float,
  /**
    Returns the measurement described below.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextMetrics/actualBoundingBoxLeft)
    */
  actualBoundingBoxLeft: float,
  /**
    Returns the measurement described below.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextMetrics/actualBoundingBoxRight)
    */
  actualBoundingBoxRight: float,
  /**
    Returns the measurement described below.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextMetrics/fontBoundingBoxAscent)
    */
  fontBoundingBoxAscent: float,
  /**
    Returns the measurement described below.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextMetrics/fontBoundingBoxDescent)
    */
  fontBoundingBoxDescent: float,
  /**
    Returns the measurement described below.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextMetrics/actualBoundingBoxAscent)
    */
  actualBoundingBoxAscent: float,
  /**
    Returns the measurement described below.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextMetrics/actualBoundingBoxDescent)
    */
  actualBoundingBoxDescent: float,
  /**
    Returns the measurement described below.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextMetrics/emHeightAscent)
    */
  emHeightAscent: float,
  /**
    Returns the measurement described below.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextMetrics/emHeightDescent)
    */
  emHeightDescent: float,
  /**
    Returns the measurement described below.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextMetrics/hangingBaseline)
    */
  hangingBaseline: float,
  /**
    Returns the measurement described below.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextMetrics/alphabeticBaseline)
    */
  alphabeticBaseline: float,
  /**
    Returns the measurement described below.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextMetrics/ideographicBaseline)
    */
  ideographicBaseline: float,
}

/**
The underlying pixel data of an area of a <canvas> element. It is created using the ImageData() constructor or creator methods on the CanvasRenderingContext2D object associated with a canvas: createImageData() and getImageData(). It can also be used to set a part of the canvas by using putImageData().
[See ImageData on MDN](https://developer.mozilla.org/docs/Web/API/ImageData)
*/
type imageData = {
  /**
    Returns the actual dimensions of the data in the ImageData object, in pixels.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ImageData/width)
    */
  width: any,
  /**
    Returns the actual dimensions of the data in the ImageData object, in pixels.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ImageData/height)
    */
  height: any,
  /**
    Returns the one-dimensional array containing the data in RGBA order, as integers in the range 0 to 255.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ImageData/data)
    */
  data: array<int>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ImageData/colorSpace)
    */
  colorSpace: predefinedColorSpace,
}

/**
This Canvas 2D API interface is used to declare a path that can then be used on a CanvasRenderingContext2D object. The path methods of the CanvasRenderingContext2D interface are also present on this interface, which gives you the convenience of being able to retain and replay your path whenever desired.
[See Path2D on MDN](https://developer.mozilla.org/docs/Web/API/Path2D)
*/
type path2D = {}

/**
[See ImageBitmapRenderingContext on MDN](https://developer.mozilla.org/docs/Web/API/ImageBitmapRenderingContext)
*/
type imageBitmapRenderingContext = {
  /**
    Returns the canvas element that the context is bound to.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ImageBitmapRenderingContext/canvas)
    */
  canvas: unknown,
}

/**
[See OffscreenCanvas on MDN](https://developer.mozilla.org/docs/Web/API/OffscreenCanvas)
*/
type offscreenCanvas = {
  ...eventTarget,
  /**
    These attributes return the dimensions of the OffscreenCanvas object's bitmap.

They can be set, to replace the bitmap with a new, transparent black bitmap of the specified dimensions (effectively resizing it).
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/OffscreenCanvas/width)
    */
  mutable width: int,
  /**
    These attributes return the dimensions of the OffscreenCanvas object's bitmap.

They can be set, to replace the bitmap with a new, transparent black bitmap of the specified dimensions (effectively resizing it).
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/OffscreenCanvas/height)
    */
  mutable height: int,
}

/**
[See OffscreenCanvasRenderingContext2D on MDN](https://developer.mozilla.org/docs/Web/API/OffscreenCanvasRenderingContext2D)
*/
type offscreenCanvasRenderingContext2D = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/canvas)
    */
  canvas: offscreenCanvas,
}

/**
[See ElementInternals on MDN](https://developer.mozilla.org/docs/Web/API/ElementInternals)
*/
type elementInternals = {
  /**
    Returns the ShadowRoot for internals's target element, if the target element is a shadow host, or null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ElementInternals/shadowRoot)
    */
  shadowRoot: Null.t<shadowRoot>,
  /**
    Returns the form owner of internals's target element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ElementInternals/form)
    */
  form: Null.t<htmlFormElement>,
  /**
    Returns true if internals's target element will be validated when the form is submitted; false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ElementInternals/willValidate)
    */
  willValidate: bool,
  /**
    Returns the ValidityState object for internals's target element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ElementInternals/validity)
    */
  validity: validityState,
  /**
    Returns the error message that would be shown to the user if internals's target element was to be checked for validity.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ElementInternals/validationMessage)
    */
  validationMessage: domString,
  /**
    Returns a NodeList of all the label elements that internals's target element is associated with.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ElementInternals/labels)
    */
  labels: nodeList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ElementInternals/states)
    */
  states: customStateSet,
}

/**
[See ToggleEvent on MDN](https://developer.mozilla.org/docs/Web/API/ToggleEvent)
*/
type toggleEvent = {
  ...event,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ToggleEvent/oldState)
    */
  oldState: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ToggleEvent/newState)
    */
  newState: domString,
}

/**
One drag data item. During a drag operation, each drag event has a dataTransfer property which contains a list of drag data items. Each item in the list is a DataTransferItem object.
[See DataTransferItem on MDN](https://developer.mozilla.org/docs/Web/API/DataTransferItem)
*/
type dataTransferItem = {
  /**
    Returns the drag data item kind, one of: "string", "file".
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DataTransferItem/kind)
    */
  kind: domString,
  /**
    Returns the drag data item type string.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DataTransferItem/type)
    */
  @as("type")
  type_: domString,
}

/**
Simple user interface events.
[See UIEvent on MDN](https://developer.mozilla.org/docs/Web/API/UIEvent)
*/
type uiEvent = {
  ...event,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/UIEvent/view)
    */
  view: Null.t<window>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/UIEvent/detail)
    */
  detail: int,
}

/**
Events that occur due to the user interacting with a pointing device (such as a mouse). Common events using this interface include click, dblclick, mouseup, mousedown.
[See MouseEvent on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent)
*/
type mouseEvent = {
  ...uiEvent,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/screenX)
    */
  screenX: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/screenY)
    */
  screenY: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/clientX)
    */
  clientX: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/clientY)
    */
  clientY: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/layerX)
    */
  layerX: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/layerY)
    */
  layerY: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/ctrlKey)
    */
  ctrlKey: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/shiftKey)
    */
  shiftKey: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/altKey)
    */
  altKey: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/metaKey)
    */
  metaKey: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/button)
    */
  button: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/buttons)
    */
  buttons: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/relatedTarget)
    */
  relatedTarget: Null.t<eventTarget>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/pageX)
    */
  pageX: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/pageY)
    */
  pageY: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/x)
    */
  x: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/y)
    */
  y: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/offsetX)
    */
  offsetX: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/offsetY)
    */
  offsetY: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/movementX)
    */
  movementX: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/movementY)
    */
  movementY: float,
}

/**
A DOM event that represents a drag and drop interaction. The user initiates a drag by placing a pointer device (such as a mouse) on the touch surface and then dragging the pointer to a new location (such as another DOM element). Applications are free to interpret a drag and drop interaction in an application-specific way.
[See DragEvent on MDN](https://developer.mozilla.org/docs/Web/API/DragEvent)
*/
type dragEvent = {
  ...mouseEvent,
  /**
    Returns the DataTransfer object for the event.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DragEvent/dataTransfer)
    */
  dataTransfer: Null.t<dataTransfer>,
}

/**
PopStateEvent is an event handler for the popstate event on the window.
[See PopStateEvent on MDN](https://developer.mozilla.org/docs/Web/API/PopStateEvent)
*/
type popStateEvent = {
  ...event,
  /**
    Returns a copy of the information that was provided to pushState() or replaceState().
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PopStateEvent/state)
    */
  state: any,
}

/**
Events that fire when the fragment identifier of the URL has changed.
[See HashChangeEvent on MDN](https://developer.mozilla.org/docs/Web/API/HashChangeEvent)
*/
type hashChangeEvent = {
  ...event,
  /**
    Returns the URL of the session history entry that was previously current.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HashChangeEvent/oldURL)
    */
  oldURL: usvString,
  /**
    Returns the URL of the session history entry that is now current.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HashChangeEvent/newURL)
    */
  newURL: usvString,
}

/**
The PageTransitionEvent is fired when a document is being loaded or unloaded.
[See PageTransitionEvent on MDN](https://developer.mozilla.org/docs/Web/API/PageTransitionEvent)
*/
type pageTransitionEvent = {
  ...event,
  /**
    For the pageshow event, returns false if the page is newly being loaded (and the load event will fire). Otherwise, returns true.

For the pagehide event, returns false if the page is going away for the last time. Otherwise, returns true, meaning that (if nothing conspires to make the page unsalvageable) the page might be reused if the user navigates back to this page.

Things that can cause the page to be unsalvageable include:

The user agent decided to not keep the Document alive in a session history entry after unload
Having iframes that are not salvageable
Active WebSocket objects
Aborting a Document
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PageTransitionEvent/persisted)
    */
  persisted: bool,
}

/**
The beforeunload event is fired when the window, the document and its resources are about to be unloaded.
[See BeforeUnloadEvent on MDN](https://developer.mozilla.org/docs/Web/API/BeforeUnloadEvent)
*/
type beforeUnloadEvent = {
  ...event,
}

/**
Events providing information related to errors in scripts or in files.
[See ErrorEvent on MDN](https://developer.mozilla.org/docs/Web/API/ErrorEvent)
*/
type errorEvent = {
  ...event,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ErrorEvent/message)
    */
  message: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ErrorEvent/filename)
    */
  filename: usvString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ErrorEvent/lineno)
    */
  lineno: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ErrorEvent/colno)
    */
  colno: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ErrorEvent/error)
    */
  error: any,
}

/**
[See PromiseRejectionEvent on MDN](https://developer.mozilla.org/docs/Web/API/PromiseRejectionEvent)
*/
type promiseRejectionEvent = {
  ...event,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PromiseRejectionEvent/promise)
    */
  promise: Promise.t<any>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PromiseRejectionEvent/reason)
    */
  reason: any,
}

/**
Provides the ability to parse XML or HTML source code from a string into a DOM Document.
[See DOMParser on MDN](https://developer.mozilla.org/docs/Web/API/DOMParser)
*/
type domParser = {}

/**
Used to store a list of Plugin objects describing the available plugins; it's returned by the window.navigator.plugins property. The PluginArray is not a JavaScript array, but has the length property and supports accessing individual items using bracket notation (plugins[2]), as well as via item(index) and namedItem("name") methods.
[See PluginArray on MDN](https://developer.mozilla.org/docs/Web/API/PluginArray)
*/
type pluginArray = {}

/**
Returns an array of MimeType instances, each of which contains information about a supported browser plugins. This object is returned by NavigatorPlugins.mimeTypes.
[See MimeTypeArray on MDN](https://developer.mozilla.org/docs/Web/API/MimeTypeArray)
*/
type mimeTypeArray = {}

/**
Provides information about a browser plugin.
[See Plugin on MDN](https://developer.mozilla.org/docs/Web/API/Plugin)
*/
type plugin = {}

/**
Provides contains information about a MIME type associated with a particular plugin. NavigatorPlugins.mimeTypes returns an array of this object.
[See MimeType on MDN](https://developer.mozilla.org/docs/Web/API/MimeType)
*/
type mimeType = {}

/**
[See ImageBitmap on MDN](https://developer.mozilla.org/docs/Web/API/ImageBitmap)
*/
type imageBitmap = {
  /**
    Returns the intrinsic width of the image, in CSS pixels.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ImageBitmap/width)
    */
  width: any,
  /**
    Returns the intrinsic height of the image, in CSS pixels.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ImageBitmap/height)
    */
  height: any,
}

/**
A message received by a target object.
[See MessageEvent on MDN](https://developer.mozilla.org/docs/Web/API/MessageEvent)
*/
type messageEvent<'t> = {
  ...event,
  /**
    Returns the data of the message.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MessageEvent/data)
    */
  data: 't,
  /**
    Returns the origin of the message, for server-sent events and cross-document messaging.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MessageEvent/origin)
    */
  origin: usvString,
  /**
    Returns the last event ID string, for server-sent events.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MessageEvent/lastEventId)
    */
  lastEventId: domString,
  /**
    Returns the WindowProxy of the source window, for cross-document messaging, and the MessagePort being attached, in the connect event fired at SharedWorkerGlobalScope objects.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MessageEvent/source)
    */
  source: Null.t<messageEventSource>,
  /**
    Returns the MessagePort array sent with the message, for cross-document messaging and channel messaging.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MessageEvent/ports)
    */
  ports: array<messagePort>,
}

/**
[See EventSource on MDN](https://developer.mozilla.org/docs/Web/API/EventSource)
*/
type eventSource = {
  ...eventTarget,
  /**
    Returns the URL providing the event stream.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/EventSource/url)
    */
  url: usvString,
  /**
    Returns true if the credentials mode for connection requests to the URL providing the event stream is set to "include", and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/EventSource/withCredentials)
    */
  withCredentials: bool,
  /**
    Returns the state of this EventSource object's connection. It can have the values described below.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/EventSource/readyState)
    */
  readyState: int,
}

/**
This Channel Messaging API interface allows us to create a new message channel and send data through it via its two MessagePort properties.
[See MessageChannel on MDN](https://developer.mozilla.org/docs/Web/API/MessageChannel)
*/
type messageChannel = {
  /**
    Returns the first MessagePort object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MessageChannel/port1)
    */
  port1: messagePort,
  /**
    Returns the second MessagePort object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MessageChannel/port2)
    */
  port2: messagePort,
}

/**
[See BroadcastChannel on MDN](https://developer.mozilla.org/docs/Web/API/BroadcastChannel)
*/
type broadcastChannel = {
  ...eventTarget,
  /**
    Returns the channel name (as passed to the constructor).
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/BroadcastChannel/name)
    */
  name: domString,
}

/**
This Web Workers API interface represents a background task that can be easily created and can send messages back to its creator. Creating a worker is as simple as calling the Worker() constructor and specifying a script to be run in the worker thread.
[See Worker on MDN](https://developer.mozilla.org/docs/Web/API/Worker)
*/
type worker = {
  ...eventTarget,
}

/**
[See SharedWorker on MDN](https://developer.mozilla.org/docs/Web/API/SharedWorker)
*/
type sharedWorker = {
  ...eventTarget,
  /**
    Returns sharedWorker's MessagePort object which can be used to communicate with the global environment.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SharedWorker/port)
    */
  port: messagePort,
}

/**
[See Worklet on MDN](https://developer.mozilla.org/docs/Web/API/Worklet)
*/
type worklet = {}

/**
This Web Storage API interface provides access to a particular domain's session or local storage. It allows, for example, the addition, modification, or deletion of stored data items.
[See Storage on MDN](https://developer.mozilla.org/docs/Web/API/Storage)
*/
type storage = {
  /**
    Returns the number of key/value pairs.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Storage/length)
    */
  length: any,
}

/**
A StorageEvent is sent to a window when a storage area it has access to is changed within the context of another document.
[See StorageEvent on MDN](https://developer.mozilla.org/docs/Web/API/StorageEvent)
*/
type storageEvent = {
  ...event,
  /**
    Returns the key of the storage item being changed.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StorageEvent/key)
    */
  key: Null.t<domString>,
  /**
    Returns the old value of the key of the storage item whose value is being changed.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StorageEvent/oldValue)
    */
  oldValue: Null.t<domString>,
  /**
    Returns the new value of the key of the storage item whose value is being changed.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StorageEvent/newValue)
    */
  newValue: Null.t<domString>,
  /**
    Returns the URL of the document whose storage item changed.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StorageEvent/url)
    */
  url: usvString,
  /**
    Returns the Storage object that was affected.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StorageEvent/storageArea)
    */
  storageArea: Null.t<storage>,
}

/**
Provides methods to manipulate <marquee> elements.
[See HTMLMarqueeElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMarqueeElement)
*/
type htmlMarqueeElement = {
  ...htmlElement,
}

/**
Provides special properties (beyond those of the regular HTMLElement interface they also inherit) for manipulating <frameset> elements.
[See HTMLFrameSetElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFrameSetElement)
*/
type htmlFrameSetElement = {
  ...htmlElement,
}

type htmlFrameElement = {
  ...htmlElement,
}

type htmlDirectoryElement = {
  ...htmlElement,
}

/**
Implements the document object model (DOM) representation of the font element. The HTML Font Element <font> defines the font size, font face and color of text.
[See HTMLFontElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFontElement)
*/
type htmlFontElement = {
  ...htmlElement,
}

/**
Provides special properties (beyond those of the regular HTMLElement object interface it inherits) for manipulating <param> elements, representing a pair of a key and a value that acts as a parameter for an <object> element.
[See HTMLParamElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLParamElement)
*/
type htmlParamElement = {
  ...htmlElement,
}

type external_ = {}

/**
provides a way to asynchronously observe changes in the intersection of a target element with an ancestor element or with a top-level document's viewport.
[See IntersectionObserver on MDN](https://developer.mozilla.org/docs/Web/API/IntersectionObserver)
*/
type intersectionObserver = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IntersectionObserver/root)
    */
  root: Null.t<unknown>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IntersectionObserver/rootMargin)
    */
  rootMargin: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IntersectionObserver/thresholds)
    */
  thresholds: array<float>,
}

/**
This Intersection Observer API interface describes the intersection between the target element and its root container at a specific moment of transition.
[See IntersectionObserverEntry on MDN](https://developer.mozilla.org/docs/Web/API/IntersectionObserverEntry)
*/
type intersectionObserverEntry = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IntersectionObserverEntry/time)
    */
  time: domHighResTimeStamp,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IntersectionObserverEntry/rootBounds)
    */
  rootBounds: Null.t<domRectReadOnly>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IntersectionObserverEntry/boundingClientRect)
    */
  boundingClientRect: domRectReadOnly,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IntersectionObserverEntry/intersectionRect)
    */
  intersectionRect: domRectReadOnly,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IntersectionObserverEntry/isIntersecting)
    */
  isIntersecting: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IntersectionObserverEntry/intersectionRatio)
    */
  intersectionRatio: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IntersectionObserverEntry/target)
    */
  target: element,
}

/**
[See LargestContentfulPaint on MDN](https://developer.mozilla.org/docs/Web/API/LargestContentfulPaint)
*/
type largestContentfulPaint = {
  ...performanceEntry,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/LargestContentfulPaint/renderTime)
    */
  renderTime: domHighResTimeStamp,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/LargestContentfulPaint/loadTime)
    */
  loadTime: domHighResTimeStamp,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/LargestContentfulPaint/size)
    */
  size: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/LargestContentfulPaint/id)
    */
  id: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/LargestContentfulPaint/url)
    */
  url: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/LargestContentfulPaint/element)
    */
  element: Null.t<element>,
}

/**
[See MathMLElement on MDN](https://developer.mozilla.org/docs/Web/API/MathMLElement)
*/
type mathMLElement = {
  ...element,
}

/**
Returned by the HTMLVideoElement.getVideoPlaybackQuality() method and contains metrics that can be used to determine the playback quality of a video.
[See VideoPlaybackQuality on MDN](https://developer.mozilla.org/docs/Web/API/VideoPlaybackQuality)
*/
type videoPlaybackQuality = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoPlaybackQuality/creationTime)
    */
  creationTime: domHighResTimeStamp,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoPlaybackQuality/droppedVideoFrames)
    */
  droppedVideoFrames: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoPlaybackQuality/totalVideoFrames)
    */
  totalVideoFrames: any,
}

/**
This Media Source Extensions API interface represents a source of media data for an HTMLMediaElement object. A MediaSource object can be attached to a HTMLMediaElement to be played in the user agent.
[See MediaSource on MDN](https://developer.mozilla.org/docs/Web/API/MediaSource)
*/
type mediaSource = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaSource/sourceBuffers)
    */
  sourceBuffers: sourceBufferList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaSource/activeSourceBuffers)
    */
  activeSourceBuffers: sourceBufferList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaSource/readyState)
    */
  readyState: readyState,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaSource/duration)
    */
  mutable duration: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaSource/canConstructInDedicatedWorker_static)
    */
  canConstructInDedicatedWorker: bool,
}

/**
[See MediaSourceHandle on MDN](https://developer.mozilla.org/docs/Web/API/MediaSourceHandle)
*/
type mediaSourceHandle = {}

/**
A chunk of media to be passed into an HTMLMediaElement and played, via a MediaSource object. This can be made up of one or several media segments.
[See SourceBuffer on MDN](https://developer.mozilla.org/docs/Web/API/SourceBuffer)
*/
type sourceBuffer = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SourceBuffer/mode)
    */
  mutable mode: appendMode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SourceBuffer/updating)
    */
  updating: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SourceBuffer/buffered)
    */
  buffered: timeRanges,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SourceBuffer/timestampOffset)
    */
  mutable timestampOffset: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SourceBuffer/appendWindowStart)
    */
  mutable appendWindowStart: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SourceBuffer/appendWindowEnd)
    */
  mutable appendWindowEnd: any,
}

/**
A single media track within a stream; typically, these are audio or video tracks, but other track types may exist as well.
[See MediaStreamTrack on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamTrack)
*/
type mediaStreamTrack = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamTrack/kind)
    */
  kind: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamTrack/id)
    */
  id: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamTrack/label)
    */
  label: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamTrack/enabled)
    */
  mutable enabled: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamTrack/muted)
    */
  muted: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamTrack/readyState)
    */
  readyState: mediaStreamTrackState,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamTrack/contentHint)
    */
  mutable contentHint: domString,
}

/**
[See CanvasCaptureMediaStreamTrack on MDN](https://developer.mozilla.org/docs/Web/API/CanvasCaptureMediaStreamTrack)
*/
type canvasCaptureMediaStreamTrack = {
  ...mediaStreamTrack,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasCaptureMediaStreamTrack/canvas)
    */
  canvas: htmlCanvasElement,
}

/**
A stream of media content. A stream consists of several tracks such as video or audio tracks. Each track is specified as an instance of MediaStreamTrack.
[See MediaStream on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream)
*/
type mediaStream = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream/id)
    */
  id: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream/active)
    */
  active: bool,
}

/**
Events which indicate that a MediaStream has had tracks added to or removed from the stream through calls to Media Stream API methods. These events are sent to the stream when these changes occur.
[See MediaStreamTrackEvent on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamTrackEvent)
*/
type mediaStreamTrackEvent = {
  ...event,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamTrackEvent/track)
    */
  track: mediaStreamTrack,
}

/**
[See OverconstrainedError on MDN](https://developer.mozilla.org/docs/Web/API/OverconstrainedError)
*/
type overconstrainedError = {
  ...domException,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/OverconstrainedError/constraint)
    */
  @as("constraint")
  constraint_: domString,
}

/**
The MediaDevicesInfo interface contains information that describes a single media input or output device.
[See MediaDeviceInfo on MDN](https://developer.mozilla.org/docs/Web/API/MediaDeviceInfo)
*/
type mediaDeviceInfo = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaDeviceInfo/deviceId)
    */
  deviceId: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaDeviceInfo/kind)
    */
  kind: mediaDeviceKind,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaDeviceInfo/label)
    */
  label: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaDeviceInfo/groupId)
    */
  groupId: domString,
}

/**
[See InputDeviceInfo on MDN](https://developer.mozilla.org/docs/Web/API/InputDeviceInfo)
*/
type inputDeviceInfo = {
  ...mediaDeviceInfo,
}

/**
[See MediaRecorder on MDN](https://developer.mozilla.org/docs/Web/API/MediaRecorder)
*/
type mediaRecorder = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaRecorder/stream)
    */
  stream: mediaStream,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaRecorder/mimeType)
    */
  mimeType: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaRecorder/state)
    */
  state: recordingState,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaRecorder/videoBitsPerSecond)
    */
  videoBitsPerSecond: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaRecorder/audioBitsPerSecond)
    */
  audioBitsPerSecond: any,
}

/**
[See BlobEvent on MDN](https://developer.mozilla.org/docs/Web/API/BlobEvent)
*/
type blobEvent = {
  ...event,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/BlobEvent/data)
    */
  data: blob,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/BlobEvent/timecode)
    */
  timecode: domHighResTimeStamp,
}

/**
Enables retrieval and analysis of detailed network timing data regarding the loading of an application's resources. An application can use the timing metrics to determine, for example, the length of time it takes to fetch a specific resource, such as an XMLHttpRequest, <SVG>, image, or script.
[See PerformanceResourceTiming on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceResourceTiming)
*/
type performanceResourceTiming = {
  ...performanceEntry,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceResourceTiming/initiatorType)
    */
  initiatorType: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceResourceTiming/nextHopProtocol)
    */
  nextHopProtocol: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceResourceTiming/workerStart)
    */
  workerStart: domHighResTimeStamp,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceResourceTiming/redirectStart)
    */
  redirectStart: domHighResTimeStamp,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceResourceTiming/redirectEnd)
    */
  redirectEnd: domHighResTimeStamp,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceResourceTiming/fetchStart)
    */
  fetchStart: domHighResTimeStamp,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceResourceTiming/domainLookupStart)
    */
  domainLookupStart: domHighResTimeStamp,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceResourceTiming/domainLookupEnd)
    */
  domainLookupEnd: domHighResTimeStamp,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceResourceTiming/connectStart)
    */
  connectStart: domHighResTimeStamp,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceResourceTiming/connectEnd)
    */
  connectEnd: domHighResTimeStamp,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceResourceTiming/secureConnectionStart)
    */
  secureConnectionStart: domHighResTimeStamp,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceResourceTiming/requestStart)
    */
  requestStart: domHighResTimeStamp,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceResourceTiming/responseStart)
    */
  responseStart: domHighResTimeStamp,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceResourceTiming/responseEnd)
    */
  responseEnd: domHighResTimeStamp,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceResourceTiming/transferSize)
    */
  transferSize: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceResourceTiming/encodedBodySize)
    */
  encodedBodySize: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceResourceTiming/decodedBodySize)
    */
  decodedBodySize: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceResourceTiming/responseStatus)
    */
  responseStatus: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceResourceTiming/serverTiming)
    */
  serverTiming: array<performanceServerTiming>,
}

/**
Provides methods and properties to store and retrieve metrics regarding the browser's document navigation events. For example, this interface can be used to determine how much time it takes to load or unload a document.
[See PerformanceNavigationTiming on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceNavigationTiming)
*/
type performanceNavigationTiming = {
  ...performanceResourceTiming,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceNavigationTiming/unloadEventStart)
    */
  unloadEventStart: domHighResTimeStamp,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceNavigationTiming/unloadEventEnd)
    */
  unloadEventEnd: domHighResTimeStamp,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceNavigationTiming/domInteractive)
    */
  domInteractive: domHighResTimeStamp,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceNavigationTiming/domContentLoadedEventStart)
    */
  domContentLoadedEventStart: domHighResTimeStamp,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceNavigationTiming/domContentLoadedEventEnd)
    */
  domContentLoadedEventEnd: domHighResTimeStamp,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceNavigationTiming/domComplete)
    */
  domComplete: domHighResTimeStamp,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceNavigationTiming/loadEventStart)
    */
  loadEventStart: domHighResTimeStamp,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceNavigationTiming/loadEventEnd)
    */
  loadEventEnd: domHighResTimeStamp,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceNavigationTiming/type)
    */
  @as("type")
  type_: navigationTimingType,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceNavigationTiming/redirectCount)
    */
  redirectCount: int,
}

/**
A legacy interface kept for backwards compatibility and contains properties that offer performance timing information for various events which occur during the loading and use of the current page. You get a PerformanceTiming object describing your page using the window.performance.timing property.
[See PerformanceTiming on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceTiming)
*/
type performanceTiming = {}

/**
The legacy PerformanceNavigation interface represents information about how the navigation to the current document was done.
[See PerformanceNavigation on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceNavigation)
*/
type performanceNavigation = {}

/**
This Notifications API interface is used to configure and display desktop notifications to the user.
[See Notification on MDN](https://developer.mozilla.org/docs/Web/API/Notification)
*/
type notification = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Notification/permission_static)
    */
  permission: notificationPermission,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Notification/title)
    */
  title: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Notification/dir)
    */
  dir: notificationDirection,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Notification/lang)
    */
  lang: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Notification/body)
    */
  body: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Notification/tag)
    */
  tag: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Notification/icon)
    */
  icon: usvString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Notification/badge)
    */
  badge: usvString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Notification/silent)
    */
  silent: Null.t<bool>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Notification/requireInteraction)
    */
  requireInteraction: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Notification/data)
    */
  data: any,
}

/**
The DeviceOrientationEvent provides web developers with information from the physical orientation of the device running the web page.
[See DeviceOrientationEvent on MDN](https://developer.mozilla.org/docs/Web/API/DeviceOrientationEvent)
*/
type deviceOrientationEvent = {
  ...event,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DeviceOrientationEvent/alpha)
    */
  alpha: Null.t<float>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DeviceOrientationEvent/beta)
    */
  beta: Null.t<float>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DeviceOrientationEvent/gamma)
    */
  gamma: Null.t<float>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DeviceOrientationEvent/absolute)
    */
  absolute: bool,
}

/**
[See DeviceMotionEventAcceleration on MDN](https://developer.mozilla.org/docs/Web/API/DeviceMotionEventAcceleration)
*/
type deviceMotionEventAcceleration = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DeviceMotionEventAcceleration/x)
    */
  x: Null.t<float>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DeviceMotionEventAcceleration/y)
    */
  y: Null.t<float>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DeviceMotionEventAcceleration/z)
    */
  z: Null.t<float>,
}

/**
[See DeviceMotionEventRotationRate on MDN](https://developer.mozilla.org/docs/Web/API/DeviceMotionEventRotationRate)
*/
type deviceMotionEventRotationRate = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DeviceMotionEventRotationRate/alpha)
    */
  alpha: Null.t<float>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DeviceMotionEventRotationRate/beta)
    */
  beta: Null.t<float>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DeviceMotionEventRotationRate/gamma)
    */
  gamma: Null.t<float>,
}

/**
The DeviceMotionEvent provides web developers with information about the speed of changes for the device's position and orientation.
[See DeviceMotionEvent on MDN](https://developer.mozilla.org/docs/Web/API/DeviceMotionEvent)
*/
type deviceMotionEvent = {
  ...event,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DeviceMotionEvent/acceleration)
    */
  acceleration: Null.t<deviceMotionEventAcceleration>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DeviceMotionEvent/accelerationIncludingGravity)
    */
  accelerationIncludingGravity: Null.t<deviceMotionEventAcceleration>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DeviceMotionEvent/rotationRate)
    */
  rotationRate: Null.t<deviceMotionEventRotationRate>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DeviceMotionEvent/interval)
    */
  interval: float,
}

/**
[See PerformancePaintTiming on MDN](https://developer.mozilla.org/docs/Web/API/PerformancePaintTiming)
*/
type performancePaintTiming = {
  ...performanceEntry,
}

/**
This Payment Request API interface is the primary access point into the API, and lets web content and apps accept payments from the end user.
[See PaymentRequest on MDN](https://developer.mozilla.org/docs/Web/API/PaymentRequest)
*/
type paymentRequest = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PaymentRequest/id)
    */
  id: domString,
}

/**
This Payment Request API interface is returned after a user selects a payment method and approves a payment request.
[See PaymentResponse on MDN](https://developer.mozilla.org/docs/Web/API/PaymentResponse)
*/
type paymentResponse = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PaymentResponse/requestId)
    */
  requestId: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PaymentResponse/methodName)
    */
  methodName: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PaymentResponse/details)
    */
  details: Dict.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PaymentResponse/shippingAddress)
    */
  shippingAddress: Null.t<paymentAddress>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PaymentResponse/shippingOption)
    */
  shippingOption: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PaymentResponse/payerName)
    */
  payerName: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PaymentResponse/payerEmail)
    */
  payerEmail: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PaymentResponse/payerPhone)
    */
  payerPhone: Null.t<domString>,
}

/**
This Payment Request API interface enables a web page to update the details of a PaymentRequest in response to a user action.
[See PaymentRequestUpdateEvent on MDN](https://developer.mozilla.org/docs/Web/API/PaymentRequestUpdateEvent)
*/
type paymentRequestUpdateEvent = {
  ...event,
}

/**
[See PaymentMethodChangeEvent on MDN](https://developer.mozilla.org/docs/Web/API/PaymentMethodChangeEvent)
*/
type paymentMethodChangeEvent = {
  ...paymentRequestUpdateEvent,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PaymentMethodChangeEvent/methodName)
    */
  methodName: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PaymentMethodChangeEvent/methodDetails)
    */
  methodDetails: Null.t<Dict.t<string>>,
}

/**
[See PerformanceObserver on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceObserver)
*/
type performanceObserver = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceObserver/supportedEntryTypes_static)
    */
  supportedEntryTypes: array<domString>,
}

/**
[See PerformanceObserverEntryList on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceObserverEntryList)
*/
type performanceObserverEntryList = {}

/**
[See PermissionStatus on MDN](https://developer.mozilla.org/docs/Web/API/PermissionStatus)
*/
type permissionStatus = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PermissionStatus/state)
    */
  state: permissionState,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PermissionStatus/name)
    */
  name: domString,
}

/**
[See PictureInPictureWindow on MDN](https://developer.mozilla.org/docs/Web/API/PictureInPictureWindow)
*/
type pictureInPictureWindow = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PictureInPictureWindow/width)
    */
  width: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PictureInPictureWindow/height)
    */
  height: int,
}

/**
[See PictureInPictureEvent on MDN](https://developer.mozilla.org/docs/Web/API/PictureInPictureEvent)
*/
type pictureInPictureEvent = {
  ...event,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PictureInPictureEvent/pictureInPictureWindow)
    */
  pictureInPictureWindow: pictureInPictureWindow,
}

/**
The state of a DOM event produced by a pointer such as the geometry of the contact point, the device type that generated the event, the amount of pressure that was applied on the contact surface, etc.
[See PointerEvent on MDN](https://developer.mozilla.org/docs/Web/API/PointerEvent)
*/
type pointerEvent = {
  ...mouseEvent,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PointerEvent/pointerId)
    */
  pointerId: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PointerEvent/width)
    */
  width: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PointerEvent/height)
    */
  height: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PointerEvent/pressure)
    */
  pressure: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PointerEvent/tangentialPressure)
    */
  tangentialPressure: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PointerEvent/tiltX)
    */
  tiltX: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PointerEvent/tiltY)
    */
  tiltY: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PointerEvent/twist)
    */
  twist: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PointerEvent/altitudeAngle)
    */
  altitudeAngle: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PointerEvent/azimuthAngle)
    */
  azimuthAngle: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PointerEvent/pointerType)
    */
  pointerType: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PointerEvent/isPrimary)
    */
  isPrimary: bool,
}

/**
[See PushSubscriptionOptions on MDN](https://developer.mozilla.org/docs/Web/API/PushSubscriptionOptions)
*/
type pushSubscriptionOptions = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PushSubscriptionOptions/userVisibleOnly)
    */
  userVisibleOnly: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PushSubscriptionOptions/applicationServerKey)
    */
  applicationServerKey: Null.t<arrayBuffer>,
}

/**
This Push API interface provides a subcription's URL endpoint and allows unsubscription from a push service.
[See PushSubscription on MDN](https://developer.mozilla.org/docs/Web/API/PushSubscription)
*/
type pushSubscription = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PushSubscription/endpoint)
    */
  endpoint: usvString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PushSubscription/expirationTime)
    */
  expirationTime: Null.t<int>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PushSubscription/options)
    */
  options: pushSubscriptionOptions,
}

/**
[See ReportBody on MDN](https://developer.mozilla.org/docs/Web/API/ReportBody)
*/
type reportBody = {}

/**
[See Report on MDN](https://developer.mozilla.org/docs/Web/API/Report)
*/
type report = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Report/type)
    */
  @as("type")
  type_: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Report/url)
    */
  url: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Report/body)
    */
  body: Null.t<reportBody>,
}

/**
[See ReportingObserver on MDN](https://developer.mozilla.org/docs/Web/API/ReportingObserver)
*/
type reportingObserver = {}

/**
[See IdleDeadline on MDN](https://developer.mozilla.org/docs/Web/API/IdleDeadline)
*/
type idleDeadline = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IdleDeadline/didTimeout)
    */
  didTimeout: bool,
}

/**
[See ResizeObserver on MDN](https://developer.mozilla.org/docs/Web/API/ResizeObserver)
*/
type resizeObserver = {}

/**
[See ResizeObserverEntry on MDN](https://developer.mozilla.org/docs/Web/API/ResizeObserverEntry)
*/
type resizeObserverEntry = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ResizeObserverEntry/target)
    */
  target: element,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ResizeObserverEntry/contentRect)
    */
  contentRect: domRectReadOnly,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ResizeObserverEntry/borderBoxSize)
    */
  borderBoxSize: array<resizeObserverSize>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ResizeObserverEntry/contentBoxSize)
    */
  contentBoxSize: array<resizeObserverSize>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ResizeObserverEntry/devicePixelContentBoxSize)
    */
  devicePixelContentBoxSize: array<resizeObserverSize>,
}

/**
[See WakeLockSentinel on MDN](https://developer.mozilla.org/docs/Web/API/WakeLockSentinel)
*/
type wakeLockSentinel = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WakeLockSentinel/released)
    */
  released: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WakeLockSentinel/type)
    */
  @as("type")
  type_: wakeLockType,
}

/**
A Selection object represents the range of text selected by the user or the current position of the caret. To obtain a Selection object for examination or modification, call Window.getSelection().
[See Selection on MDN](https://developer.mozilla.org/docs/Web/API/Selection)
*/
type selection = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/anchorNode)
    */
  anchorNode: Null.t<node>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/anchorOffset)
    */
  anchorOffset: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/focusNode)
    */
  focusNode: Null.t<node>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/focusOffset)
    */
  focusOffset: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/isCollapsed)
    */
  isCollapsed: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/rangeCount)
    */
  rangeCount: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/type)
    */
  @as("type")
  type_: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/direction)
    */
  direction: domString,
}

/**
Provides a storage mechanism for Request / Response object pairs that are cached, for example as part of the ServiceWorker life cycle. Note that the Cache interface is exposed to windowed scopes as well as workers. You don't have to use it in conjunction with service workers, even though it is defined in the service worker spec.
[See Cache on MDN](https://developer.mozilla.org/docs/Web/API/Cache)
*/
type cache = {}

/**
The storage for Cache objects.
[See CacheStorage on MDN](https://developer.mozilla.org/docs/Web/API/CacheStorage)
*/
type cacheStorage = {}

/**
[See SpeechRecognitionAlternative on MDN](https://developer.mozilla.org/docs/Web/API/SpeechRecognitionAlternative)
*/
type speechRecognitionAlternative = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechRecognitionAlternative/transcript)
    */
  transcript: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechRecognitionAlternative/confidence)
    */
  confidence: float,
}

/**
[See SpeechRecognitionResult on MDN](https://developer.mozilla.org/docs/Web/API/SpeechRecognitionResult)
*/
type speechRecognitionResult = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechRecognitionResult/length)
    */
  length: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechRecognitionResult/isFinal)
    */
  isFinal: bool,
}

/**
[See SpeechRecognitionResultList on MDN](https://developer.mozilla.org/docs/Web/API/SpeechRecognitionResultList)
*/
type speechRecognitionResultList = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechRecognitionResultList/length)
    */
  length: any,
}

/**
This Web Speech API interface represents a speech request. It contains the content the speech service should read and information about how to read it (e.g. language, pitch and volume.)
[See SpeechSynthesisUtterance on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisUtterance)
*/
type speechSynthesisUtterance = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisUtterance/text)
    */
  mutable text: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisUtterance/lang)
    */
  mutable lang: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisUtterance/voice)
    */
  mutable voice: Null.t<speechSynthesisVoice>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisUtterance/volume)
    */
  mutable volume: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisUtterance/rate)
    */
  mutable rate: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisUtterance/pitch)
    */
  mutable pitch: float,
}

/**
This Web Speech API interface contains information about the current state of SpeechSynthesisUtterance objects that have been processed in the speech service.
[See SpeechSynthesisEvent on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisEvent)
*/
type speechSynthesisEvent = {
  ...event,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisEvent/utterance)
    */
  utterance: speechSynthesisUtterance,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisEvent/charIndex)
    */
  charIndex: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisEvent/charLength)
    */
  charLength: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisEvent/elapsedTime)
    */
  elapsedTime: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisEvent/name)
    */
  name: domString,
}

/**
[See SpeechSynthesisErrorEvent on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisErrorEvent)
*/
type speechSynthesisErrorEvent = {
  ...speechSynthesisEvent,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisErrorEvent/error)
    */
  error: speechSynthesisErrorCode,
}

/**
[See StorageManager on MDN](https://developer.mozilla.org/docs/Web/API/StorageManager)
*/
type storageManager = {}

/**
This Streams API interface represents a readable stream of byte data. The Fetch API offers a concrete instance of a ReadableStream through the body property of a Response object.
[See ReadableStream on MDN](https://developer.mozilla.org/docs/Web/API/ReadableStream)
*/
type readableStream<'r> = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ReadableStream/locked)
    */
  locked: bool,
}

/**
[See ReadableStreamDefaultReader on MDN](https://developer.mozilla.org/docs/Web/API/ReadableStreamDefaultReader)
*/
type readableStreamDefaultReader<'r> = {}

/**
[See ReadableStreamBYOBReader on MDN](https://developer.mozilla.org/docs/Web/API/ReadableStreamBYOBReader)
*/
type readableStreamBYOBReader = {}

/**
[See ReadableStreamDefaultController on MDN](https://developer.mozilla.org/docs/Web/API/ReadableStreamDefaultController)
*/
type readableStreamDefaultController<'r> = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ReadableStreamDefaultController/desiredSize)
    */
  desiredSize: Null.t<any>,
}

/**
This Streams API interface is the object returned by WritableStream.getWriter() and once created locks the < writer to the WritableStream ensuring that no other streams can write to the underlying sink.
[See WritableStreamDefaultWriter on MDN](https://developer.mozilla.org/docs/Web/API/WritableStreamDefaultWriter)
*/
type writableStreamDefaultWriter<'w> = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WritableStreamDefaultWriter/closed)
    */
  closed: Promise.t<undefined<unit>>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WritableStreamDefaultWriter/desiredSize)
    */
  desiredSize: Null.t<any>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WritableStreamDefaultWriter/ready)
    */
  ready: Promise.t<undefined<unit>>,
}

/**
This Streams API interface represents a controller allowing control of a WritableStream's state. When constructing a WritableStream, the underlying sink is given a corresponding WritableStreamDefaultController instance to manipulate.
[See WritableStreamDefaultController on MDN](https://developer.mozilla.org/docs/Web/API/WritableStreamDefaultController)
*/
type writableStreamDefaultController = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WritableStreamDefaultController/signal)
    */
  signal: abortSignal,
}

/**
[See TransformStream on MDN](https://developer.mozilla.org/docs/Web/API/TransformStream)
*/
type transformStream<'i, 'o> = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TransformStream/readable)
    */
  readable: readableStream<'o>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TransformStream/writable)
    */
  writable: writableStream<'i>,
}

/**
[See TransformStreamDefaultController on MDN](https://developer.mozilla.org/docs/Web/API/TransformStreamDefaultController)
*/
type transformStreamDefaultController<'o> = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TransformStreamDefaultController/desiredSize)
    */
  desiredSize: Null.t<any>,
}

/**
This Streams API interface provides a built-in byte length queuing strategy that can be used when constructing streams.
[See ByteLengthQueuingStrategy on MDN](https://developer.mozilla.org/docs/Web/API/ByteLengthQueuingStrategy)
*/
type byteLengthQueuingStrategy = {
  ...queuingStrategy<arrayBufferView>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ByteLengthQueuingStrategy/highWaterMark)
    */
  highWaterMark: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ByteLengthQueuingStrategy/size)
    */
  size: int,
}

/**
This Streams API interface provides a built-in byte length queuing strategy that can be used when constructing streams.
[See CountQueuingStrategy on MDN](https://developer.mozilla.org/docs/Web/API/CountQueuingStrategy)
*/
type countQueuingStrategy = {
  ...queuingStrategy<unit>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CountQueuingStrategy/highWaterMark)
    */
  highWaterMark: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CountQueuingStrategy/size)
    */
  size: int,
}

/**
[See SVGAnimationElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGAnimationElement)
*/
type svgAnimationElement = {
  ...svgElement,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGAnimationElement/targetElement)
    */
  targetElement: Null.t<svgElement>,
}

/**
[See SVGAnimateElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGAnimateElement)
*/
type svgAnimateElement = {
  ...svgAnimationElement,
}

/**
[See SVGSetElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGSetElement)
*/
type svgSetElement = {
  ...svgAnimationElement,
}

/**
[See SVGAnimateMotionElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGAnimateMotionElement)
*/
type svgAnimateMotionElement = {
  ...svgAnimationElement,
}

/**
[See SVGMPathElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGMPathElement)
*/
type svgmPathElement = {
  ...svgElement,
}

/**
[See SVGAnimateTransformElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGAnimateTransformElement)
*/
type svgAnimateTransformElement = {
  ...svgAnimationElement,
}

/**
A single contact point on a touch-sensitive device. The contact point is commonly a finger or stylus and the device may be a touchscreen or trackpad.
[See Touch on MDN](https://developer.mozilla.org/docs/Web/API/Touch)
*/
type touch = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Touch/identifier)
    */
  identifier: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Touch/target)
    */
  target: eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Touch/screenX)
    */
  screenX: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Touch/screenY)
    */
  screenY: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Touch/clientX)
    */
  clientX: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Touch/clientY)
    */
  clientY: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Touch/pageX)
    */
  pageX: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Touch/pageY)
    */
  pageY: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Touch/radiusX)
    */
  radiusX: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Touch/radiusY)
    */
  radiusY: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Touch/rotationAngle)
    */
  rotationAngle: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Touch/force)
    */
  force: float,
}

/**
A list of contact points on a touch surface. For example, if the user has three fingers on the touch surface (such as a screen or trackpad), the corresponding TouchList object would have one Touch object for each finger, for a total of three entries.
[See TouchList on MDN](https://developer.mozilla.org/docs/Web/API/TouchList)
*/
type touchList = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TouchList/length)
    */
  length: any,
}

/**
An event sent when the state of contacts with a touch-sensitive surface changes. This surface can be a touch screen or trackpad, for example. The event can describe one or more points of contact with the screen and includes support for detecting movement, addition and removal of contact points, and so forth.
[See TouchEvent on MDN](https://developer.mozilla.org/docs/Web/API/TouchEvent)
*/
type touchEvent = {
  ...uiEvent,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TouchEvent/touches)
    */
  touches: touchList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TouchEvent/targetTouches)
    */
  targetTouches: touchList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TouchEvent/changedTouches)
    */
  changedTouches: touchList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TouchEvent/altKey)
    */
  altKey: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TouchEvent/metaKey)
    */
  metaKey: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TouchEvent/ctrlKey)
    */
  ctrlKey: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TouchEvent/shiftKey)
    */
  shiftKey: bool,
}

/**
Focus-related events like focus, blur, focusin, or focusout.
[See FocusEvent on MDN](https://developer.mozilla.org/docs/Web/API/FocusEvent)
*/
type focusEvent = {
  ...uiEvent,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FocusEvent/relatedTarget)
    */
  relatedTarget: Null.t<eventTarget>,
}

/**
Events that occur due to the user moving a mouse wheel or similar input device.
[See WheelEvent on MDN](https://developer.mozilla.org/docs/Web/API/WheelEvent)
*/
type wheelEvent = {
  ...mouseEvent,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WheelEvent/deltaX)
    */
  deltaX: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WheelEvent/deltaY)
    */
  deltaY: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WheelEvent/deltaZ)
    */
  deltaZ: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WheelEvent/deltaMode)
    */
  deltaMode: any,
}

/**
[See InputEvent on MDN](https://developer.mozilla.org/docs/Web/API/InputEvent)
*/
type inputEvent = {
  ...uiEvent,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/InputEvent/data)
    */
  data: Null.t<usvString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/InputEvent/isComposing)
    */
  isComposing: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/InputEvent/inputType)
    */
  inputType: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/InputEvent/dataTransfer)
    */
  dataTransfer: Null.t<dataTransfer>,
}

/**
KeyboardEvent objects describe a user interaction with the keyboard; each event describes a single interaction between the user and a key (or combination of a key with modifier keys) on the keyboard.
[See KeyboardEvent on MDN](https://developer.mozilla.org/docs/Web/API/KeyboardEvent)
*/
type keyboardEvent = {
  ...uiEvent,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/KeyboardEvent/key)
    */
  key: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/KeyboardEvent/code)
    */
  code: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/KeyboardEvent/location)
    */
  location: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/KeyboardEvent/ctrlKey)
    */
  ctrlKey: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/KeyboardEvent/shiftKey)
    */
  shiftKey: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/KeyboardEvent/altKey)
    */
  altKey: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/KeyboardEvent/metaKey)
    */
  metaKey: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/KeyboardEvent/repeat)
    */
  repeat: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/KeyboardEvent/isComposing)
    */
  isComposing: bool,
}

/**
The DOM CompositionEvent represents events that occur due to the user indirectly entering text.
[See CompositionEvent on MDN](https://developer.mozilla.org/docs/Web/API/CompositionEvent)
*/
type compositionEvent = {
  ...uiEvent,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CompositionEvent/data)
    */
  data: usvString,
}

/**
[See TextEvent on MDN](https://developer.mozilla.org/docs/Web/API/TextEvent)
*/
type textEvent = {
  ...uiEvent,
}

/**
The URL interface represents an object providing static methods used for creating object URLs.
[See URL on MDN](https://developer.mozilla.org/docs/Web/API/URL)
*/
type urL = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/href)
    */
  mutable href: usvString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/origin)
    */
  origin: usvString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/protocol)
    */
  mutable protocol: usvString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/username)
    */
  mutable username: usvString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/password)
    */
  mutable password: usvString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/host)
    */
  mutable host: usvString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/hostname)
    */
  mutable hostname: usvString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/port)
    */
  mutable port: usvString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/pathname)
    */
  mutable pathname: usvString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/search)
    */
  mutable search: usvString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/searchParams)
    */
  searchParams: urlSearchParams,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/URL/hash)
    */
  mutable hash: usvString,
}

/**
PerformanceMark is an abstract interface for PerformanceEntry objects with an entryType of "mark". Entries of this type are created by calling performance.mark() to add a named DOMHighResTimeStamp (the mark) to the browser's performance timeline.
[See PerformanceMark on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceMark)
*/
type performanceMark = {
  ...performanceEntry,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceMark/detail)
    */
  detail: any,
}

/**
PerformanceMeasure is an abstract interface for PerformanceEntry objects with an entryType of "measure". Entries of this type are created by calling performance.measure() to add a named DOMHighResTimeStamp (the measure) between two marks to the browser's performance timeline.
[See PerformanceMeasure on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceMeasure)
*/
type performanceMeasure = {
  ...performanceEntry,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceMeasure/detail)
    */
  detail: any,
}

/**
[See Module on MDN](https://developer.mozilla.org/docs/WebAssembly/JavaScript_interface/Module)
*/
type module_ = {}

/**
[See Instance on MDN](https://developer.mozilla.org/docs/WebAssembly/JavaScript_interface/Instance)
*/
type instance = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/WebAssembly/JavaScript_interface/Instance/exports)
    */
  exports: Dict.t<string>,
}

/**
[See Memory on MDN](https://developer.mozilla.org/docs/WebAssembly/JavaScript_interface/Memory)
*/
type memory = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/WebAssembly/JavaScript_interface/Memory/buffer)
    */
  buffer: arrayBuffer,
}

/**
[See Table on MDN](https://developer.mozilla.org/docs/WebAssembly/JavaScript_interface/Table)
*/
type table = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/WebAssembly/JavaScript_interface/Table/length)
    */
  length: any,
}

/**
[See Global on MDN](https://developer.mozilla.org/docs/WebAssembly/JavaScript_interface/Global)
*/
type global<'t> = {}

/**
[See AnimationPlaybackEvent on MDN](https://developer.mozilla.org/docs/Web/API/AnimationPlaybackEvent)
*/
type animationPlaybackEvent = {
  ...event,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnimationPlaybackEvent/currentTime)
    */
  currentTime: Null.t<float>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnimationPlaybackEvent/timelineTime)
    */
  timelineTime: Null.t<float>,
}

/**
[See KeyframeEffect on MDN](https://developer.mozilla.org/docs/Web/API/KeyframeEffect)
*/
type keyframeEffect = {
  ...animationEffect,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/KeyframeEffect/target)
    */
  mutable target: Null.t<element>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/KeyframeEffect/pseudoElement)
    */
  mutable pseudoElement: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/KeyframeEffect/composite)
    */
  mutable composite: compositeOperation,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/KeyframeEffect/iterationComposite)
    */
  mutable iterationComposite: iterationCompositeOperation,
}

/**
[See LockManager on MDN](https://developer.mozilla.org/docs/Web/API/LockManager)
*/
type lockManager = {}

/**
[See Lock on MDN](https://developer.mozilla.org/docs/Web/API/Lock)
*/
type lock = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Lock/name)
    */
  name: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Lock/mode)
    */
  mode: lockMode,
}

/**
An audio-processing graph built from audio modules linked together, each represented by an AudioNode.
[See AudioContext on MDN](https://developer.mozilla.org/docs/Web/API/AudioContext)
*/
type audioContext = {
  ...baseAudioContext,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioContext/baseLatency)
    */
  baseLatency: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioContext/outputLatency)
    */
  outputLatency: float,
}

/**
An AudioContext interface representing an audio-processing graph built from linked together AudioNodes. In contrast with a standard AudioContext, an OfflineAudioContext doesn't render the audio to the device hardware; instead, it generates it, as fast as it can, and outputs the result to an AudioBuffer.
[See OfflineAudioContext on MDN](https://developer.mozilla.org/docs/Web/API/OfflineAudioContext)
*/
type offlineAudioContext = {
  ...baseAudioContext,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/OfflineAudioContext/length)
    */
  length: any,
}

/**
The Web Audio API OfflineAudioCompletionEvent interface represents events that occur when the processing of an OfflineAudioContext is terminated. The complete event implements this interface.
[See OfflineAudioCompletionEvent on MDN](https://developer.mozilla.org/docs/Web/API/OfflineAudioCompletionEvent)
*/
type offlineAudioCompletionEvent = {
  ...event,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/OfflineAudioCompletionEvent/renderedBuffer)
    */
  renderedBuffer: audioBuffer,
}

/**
[See AudioScheduledSourceNode on MDN](https://developer.mozilla.org/docs/Web/API/AudioScheduledSourceNode)
*/
type audioScheduledSourceNode = {
  ...audioNode,
}

/**
A node able to provide real-time frequency and time-domain analysis information. It is an AudioNode that passes the audio stream unchanged from the input to the output, but allows you to take the generated data, process it, and create audio visualizations.
[See AnalyserNode on MDN](https://developer.mozilla.org/docs/Web/API/AnalyserNode)
*/
type analyserNode = {
  ...audioNode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnalyserNode/fftSize)
    */
  mutable fftSize: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnalyserNode/frequencyBinCount)
    */
  frequencyBinCount: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnalyserNode/minDecibels)
    */
  mutable minDecibels: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnalyserNode/maxDecibels)
    */
  mutable maxDecibels: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnalyserNode/smoothingTimeConstant)
    */
  mutable smoothingTimeConstant: float,
}

/**
An AudioScheduledSourceNode which represents an audio source consisting of in-memory audio data, stored in an AudioBuffer. It's especially useful for playing back audio which has particularly stringent timing accuracy requirements, such as for sounds that must match a specific rhythm and can be kept in memory rather than being played from disk or the network.
[See AudioBufferSourceNode on MDN](https://developer.mozilla.org/docs/Web/API/AudioBufferSourceNode)
*/
type audioBufferSourceNode = {
  ...audioScheduledSourceNode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBufferSourceNode/buffer)
    */
  mutable buffer: Null.t<audioBuffer>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBufferSourceNode/playbackRate)
    */
  playbackRate: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBufferSourceNode/detune)
    */
  detune: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBufferSourceNode/loop)
    */
  mutable loop: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBufferSourceNode/loopStart)
    */
  mutable loopStart: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBufferSourceNode/loopEnd)
    */
  mutable loopEnd: float,
}

/**
The Web Audio API events that occur when a ScriptProcessorNode input buffer is ready to be processed.
[See AudioProcessingEvent on MDN](https://developer.mozilla.org/docs/Web/API/AudioProcessingEvent)
*/
type audioProcessingEvent = {
  ...event,
}

/**
A simple low-order filter, and is created using the AudioContext.createBiquadFilter() method. It is an AudioNode that can represent different kinds of filters, tone control devices, and graphic equalizers.
[See BiquadFilterNode on MDN](https://developer.mozilla.org/docs/Web/API/BiquadFilterNode)
*/
type biquadFilterNode = {
  ...audioNode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/BiquadFilterNode/type)
    */
  @as("type")
  mutable type_: biquadFilterType,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/BiquadFilterNode/frequency)
    */
  frequency: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/BiquadFilterNode/detune)
    */
  detune: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/BiquadFilterNode/Q)
    */
  @as("Q")
  q: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/BiquadFilterNode/gain)
    */
  gain: audioParam,
}

/**
The ChannelMergerNode interface, often used in conjunction with its opposite, ChannelSplitterNode, reunites different mono inputs into a single output. Each input is used to fill a channel of the output. This is useful for accessing each channels separately, e.g. for performing channel mixing where gain must be separately controlled on each channel.
[See ChannelMergerNode on MDN](https://developer.mozilla.org/docs/Web/API/ChannelMergerNode)
*/
type channelMergerNode = {
  ...audioNode,
}

/**
The ChannelSplitterNode interface, often used in conjunction with its opposite, ChannelMergerNode, separates the different channels of an audio source into a set of mono outputs. This is useful for accessing each channel separately, e.g. for performing channel mixing where gain must be separately controlled on each channel.
[See ChannelSplitterNode on MDN](https://developer.mozilla.org/docs/Web/API/ChannelSplitterNode)
*/
type channelSplitterNode = {
  ...audioNode,
}

/**
[See ConstantSourceNode on MDN](https://developer.mozilla.org/docs/Web/API/ConstantSourceNode)
*/
type constantSourceNode = {
  ...audioScheduledSourceNode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ConstantSourceNode/offset)
    */
  offset: audioParam,
}

/**
An AudioNode that performs a Linear Convolution on a given AudioBuffer, often used to achieve a reverb effect. A ConvolverNode always has exactly one input and one output.
[See ConvolverNode on MDN](https://developer.mozilla.org/docs/Web/API/ConvolverNode)
*/
type convolverNode = {
  ...audioNode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ConvolverNode/buffer)
    */
  mutable buffer: Null.t<audioBuffer>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ConvolverNode/normalize)
    */
  mutable normalize: bool,
}

/**
A delay-line; an AudioNode audio-processing module that causes a delay between the arrival of an input data and its propagation to the output.
[See DelayNode on MDN](https://developer.mozilla.org/docs/Web/API/DelayNode)
*/
type delayNode = {
  ...audioNode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DelayNode/delayTime)
    */
  delayTime: audioParam,
}

/**
Inherits properties from its parent, AudioNode.
[See DynamicsCompressorNode on MDN](https://developer.mozilla.org/docs/Web/API/DynamicsCompressorNode)
*/
type dynamicsCompressorNode = {
  ...audioNode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DynamicsCompressorNode/threshold)
    */
  threshold: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DynamicsCompressorNode/knee)
    */
  knee: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DynamicsCompressorNode/ratio)
    */
  ratio: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DynamicsCompressorNode/reduction)
    */
  reduction: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DynamicsCompressorNode/attack)
    */
  attack: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DynamicsCompressorNode/release)
    */
  release: audioParam,
}

/**
A change in volume. It is an AudioNode audio-processing module that causes a given gain to be applied to the input data before its propagation to the output. A GainNode always has exactly one input and one output, both with the same number of channels.
[See GainNode on MDN](https://developer.mozilla.org/docs/Web/API/GainNode)
*/
type gainNode = {
  ...audioNode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/GainNode/gain)
    */
  gain: audioParam,
}

/**
The IIRFilterNode interface of the Web Audio API is a AudioNode processor which implements a general infinite impulse response (IIR)  filter; this type of filter can be used to implement tone control devices and graphic equalizers as well. It lets the parameters of the filter response be specified, so that it can be tuned as needed.
[See IIRFilterNode on MDN](https://developer.mozilla.org/docs/Web/API/IIRFilterNode)
*/
type iirFilterNode = {
  ...audioNode,
}

/**
A MediaElementSourceNode has no inputs and exactly one output, and is created using the AudioContext.createMediaElementSource method. The amount of channels in the output equals the number of channels of the audio referenced by the HTMLMediaElement used in the creation of the node, or is 1 if the HTMLMediaElement has no audio.
[See MediaElementAudioSourceNode on MDN](https://developer.mozilla.org/docs/Web/API/MediaElementAudioSourceNode)
*/
type mediaElementAudioSourceNode = {
  ...audioNode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaElementAudioSourceNode/mediaElement)
    */
  mediaElement: htmlMediaElement,
}

/**
[See MediaStreamAudioDestinationNode on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamAudioDestinationNode)
*/
type mediaStreamAudioDestinationNode = {
  ...audioNode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamAudioDestinationNode/stream)
    */
  stream: mediaStream,
}

/**
A type of AudioNode which operates as an audio source whose media is received from a MediaStream obtained using the WebRTC or Media Capture and Streams APIs.
[See MediaStreamAudioSourceNode on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamAudioSourceNode)
*/
type mediaStreamAudioSourceNode = {
  ...audioNode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamAudioSourceNode/mediaStream)
    */
  mediaStream: mediaStream,
}

/**
The OscillatorNode interface represents a periodic waveform, such as a sine wave. It is an AudioScheduledSourceNode audio-processing module that causes a specified frequency of a given wave to be created—in effect, a constant tone.
[See OscillatorNode on MDN](https://developer.mozilla.org/docs/Web/API/OscillatorNode)
*/
type oscillatorNode = {
  ...audioScheduledSourceNode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/OscillatorNode/type)
    */
  @as("type")
  mutable type_: oscillatorType,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/OscillatorNode/frequency)
    */
  frequency: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/OscillatorNode/detune)
    */
  detune: audioParam,
}

/**
A PannerNode always has exactly one input and one output: the input can be mono or stereo but the output is always stereo (2 channels); you can't have panning effects without at least two audio channels!
[See PannerNode on MDN](https://developer.mozilla.org/docs/Web/API/PannerNode)
*/
type pannerNode = {
  ...audioNode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PannerNode/panningModel)
    */
  mutable panningModel: panningModelType,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PannerNode/positionX)
    */
  positionX: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PannerNode/positionY)
    */
  positionY: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PannerNode/positionZ)
    */
  positionZ: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PannerNode/orientationX)
    */
  orientationX: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PannerNode/orientationY)
    */
  orientationY: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PannerNode/orientationZ)
    */
  orientationZ: audioParam,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PannerNode/distanceModel)
    */
  mutable distanceModel: distanceModelType,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PannerNode/refDistance)
    */
  mutable refDistance: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PannerNode/maxDistance)
    */
  mutable maxDistance: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PannerNode/rolloffFactor)
    */
  mutable rolloffFactor: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PannerNode/coneInnerAngle)
    */
  mutable coneInnerAngle: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PannerNode/coneOuterAngle)
    */
  mutable coneOuterAngle: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PannerNode/coneOuterGain)
    */
  mutable coneOuterGain: float,
}

/**
PeriodicWave has no inputs or outputs; it is used to define custom oscillators when calling OscillatorNode.setPeriodicWave(). The PeriodicWave itself is created/returned by AudioContext.createPeriodicWave().
[See PeriodicWave on MDN](https://developer.mozilla.org/docs/Web/API/PeriodicWave)
*/
type periodicWave = {}

/**
Allows the generation, processing, or analyzing of audio using JavaScript.
[See ScriptProcessorNode on MDN](https://developer.mozilla.org/docs/Web/API/ScriptProcessorNode)
*/
type scriptProcessorNode = {
  ...audioNode,
}

/**
The pan property takes a unitless value between -1 (full left pan) and 1 (full right pan). This interface was introduced as a much simpler way to apply a simple panning effect than having to use a full PannerNode.
[See StereoPannerNode on MDN](https://developer.mozilla.org/docs/Web/API/StereoPannerNode)
*/
type stereoPannerNode = {
  ...audioNode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StereoPannerNode/pan)
    */
  pan: audioParam,
}

/**
A WaveShaperNode always has exactly one input and one output.
[See WaveShaperNode on MDN](https://developer.mozilla.org/docs/Web/API/WaveShaperNode)
*/
type waveShaperNode = {
  ...audioNode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WaveShaperNode/curve)
    */
  mutable curve: Null.t<array<float>>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WaveShaperNode/oversample)
    */
  mutable oversample: overSampleType,
}

/**
[See AudioParamMap on MDN](https://developer.mozilla.org/docs/Web/API/AudioParamMap)
*/
type audioParamMap = {}

/**
[See AudioWorkletNode on MDN](https://developer.mozilla.org/docs/Web/API/AudioWorkletNode)
*/
type audioWorkletNode = {
  ...audioNode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioWorkletNode/parameters)
    */
  parameters: audioParamMap,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioWorkletNode/port)
    */
  port: messagePort,
}

/**
[See PublicKeyCredential on MDN](https://developer.mozilla.org/docs/Web/API/PublicKeyCredential)
*/
type publicKeyCredential = {
  ...credential,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PublicKeyCredential/rawId)
    */
  rawId: arrayBuffer,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PublicKeyCredential/response)
    */
  response: authenticatorResponse,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PublicKeyCredential/authenticatorAttachment)
    */
  authenticatorAttachment: Null.t<domString>,
}

/**
[See AuthenticatorAttestationResponse on MDN](https://developer.mozilla.org/docs/Web/API/AuthenticatorAttestationResponse)
*/
type authenticatorAttestationResponse = {
  ...authenticatorResponse,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AuthenticatorAttestationResponse/attestationObject)
    */
  attestationObject: arrayBuffer,
}

/**
[See AuthenticatorAssertionResponse on MDN](https://developer.mozilla.org/docs/Web/API/AuthenticatorAssertionResponse)
*/
type authenticatorAssertionResponse = {
  ...authenticatorResponse,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AuthenticatorAssertionResponse/authenticatorData)
    */
  authenticatorData: arrayBuffer,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AuthenticatorAssertionResponse/signature)
    */
  signature: arrayBuffer,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AuthenticatorAssertionResponse/userHandle)
    */
  userHandle: Null.t<arrayBuffer>,
}

/**
[See AudioDecoder on MDN](https://developer.mozilla.org/docs/Web/API/AudioDecoder)
*/
type audioDecoder = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioDecoder/state)
    */
  state: codecState,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioDecoder/decodeQueueSize)
    */
  decodeQueueSize: any,
}

/**
[See VideoDecoder on MDN](https://developer.mozilla.org/docs/Web/API/VideoDecoder)
*/
type videoDecoder = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoDecoder/state)
    */
  state: codecState,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoDecoder/decodeQueueSize)
    */
  decodeQueueSize: any,
}

/**
[See AudioEncoder on MDN](https://developer.mozilla.org/docs/Web/API/AudioEncoder)
*/
type audioEncoder = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioEncoder/state)
    */
  state: codecState,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioEncoder/encodeQueueSize)
    */
  encodeQueueSize: any,
}

/**
[See VideoEncoder on MDN](https://developer.mozilla.org/docs/Web/API/VideoEncoder)
*/
type videoEncoder = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoEncoder/state)
    */
  state: codecState,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoEncoder/encodeQueueSize)
    */
  encodeQueueSize: any,
}

/**
[See EncodedAudioChunk on MDN](https://developer.mozilla.org/docs/Web/API/EncodedAudioChunk)
*/
type encodedAudioChunk = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/EncodedAudioChunk/type)
    */
  @as("type")
  type_: encodedAudioChunkType,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/EncodedAudioChunk/timestamp)
    */
  timestamp: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/EncodedAudioChunk/duration)
    */
  duration: Null.t<int>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/EncodedAudioChunk/byteLength)
    */
  byteLength: any,
}

/**
[See EncodedVideoChunk on MDN](https://developer.mozilla.org/docs/Web/API/EncodedVideoChunk)
*/
type encodedVideoChunk = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/EncodedVideoChunk/type)
    */
  @as("type")
  type_: encodedVideoChunkType,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/EncodedVideoChunk/timestamp)
    */
  timestamp: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/EncodedVideoChunk/duration)
    */
  duration: Null.t<int>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/EncodedVideoChunk/byteLength)
    */
  byteLength: any,
}

/**
[See AudioData on MDN](https://developer.mozilla.org/docs/Web/API/AudioData)
*/
type audioData = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioData/format)
    */
  format: Null.t<audioSampleFormat>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioData/sampleRate)
    */
  sampleRate: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioData/numberOfFrames)
    */
  numberOfFrames: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioData/numberOfChannels)
    */
  numberOfChannels: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioData/duration)
    */
  duration: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioData/timestamp)
    */
  timestamp: int,
}

/**
[See VideoFrame on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
type videoFrame = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/format)
    */
  format: Null.t<videoPixelFormat>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/codedWidth)
    */
  codedWidth: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/codedHeight)
    */
  codedHeight: any,
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
  displayWidth: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/displayHeight)
    */
  displayHeight: any,
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
Part of the WebGL API and represents an opaque buffer object storing data such as vertices or colors.
[See WebGLBuffer on MDN](https://developer.mozilla.org/docs/Web/API/WebGLBuffer)
*/
type webGLBuffer = {}

/**
Part of the WebGL API and represents a collection of buffers that serve as a rendering destination.
[See WebGLFramebuffer on MDN](https://developer.mozilla.org/docs/Web/API/WebGLFramebuffer)
*/
type webGLFramebuffer = {}

/**
The WebGLProgram is part of the WebGL API and is a combination of two compiled WebGLShaders consisting of a vertex shader and a fragment shader (both written in GLSL).
[See WebGLProgram on MDN](https://developer.mozilla.org/docs/Web/API/WebGLProgram)
*/
type webGLProgram = {}

/**
Part of the WebGL API and represents a buffer that can contain an image, or can be source or target of an rendering operation.
[See WebGLRenderbuffer on MDN](https://developer.mozilla.org/docs/Web/API/WebGLRenderbuffer)
*/
type webGLRenderbuffer = {}

/**
The WebGLShader is part of the WebGL API and can either be a vertex or a fragment shader. A WebGLProgram requires both types of shaders.
[See WebGLShader on MDN](https://developer.mozilla.org/docs/Web/API/WebGLShader)
*/
type webGLShader = {}

/**
Part of the WebGL API and represents an opaque texture object providing storage and state for texturing operations.
[See WebGLTexture on MDN](https://developer.mozilla.org/docs/Web/API/WebGLTexture)
*/
type webGLTexture = {}

/**
Part of the WebGL API and represents the location of a uniform variable in a shader program.
[See WebGLUniformLocation on MDN](https://developer.mozilla.org/docs/Web/API/WebGLUniformLocation)
*/
type webGLUniformLocation = {}

/**
Part of the WebGL API and represents the information returned by calling the WebGLRenderingContext.getActiveAttrib() and WebGLRenderingContext.getActiveUniform() methods.
[See WebGLActiveInfo on MDN](https://developer.mozilla.org/docs/Web/API/WebGLActiveInfo)
*/
type webGLActiveInfo = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebGLActiveInfo/size)
    */
  size: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebGLActiveInfo/type)
    */
  @as("type")
  type_: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebGLActiveInfo/name)
    */
  name: domString,
}

/**
Part of the WebGL API and represents the information returned by calling the WebGLRenderingContext.getShaderPrecisionFormat() method.
[See WebGLShaderPrecisionFormat on MDN](https://developer.mozilla.org/docs/Web/API/WebGLShaderPrecisionFormat)
*/
type webGLShaderPrecisionFormat = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebGLShaderPrecisionFormat/rangeMin)
    */
  rangeMin: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebGLShaderPrecisionFormat/rangeMax)
    */
  rangeMax: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebGLShaderPrecisionFormat/precision)
    */
  precision: float,
}

/**
Provides an interface to the OpenGL ES 2.0 graphics rendering context for the drawing surface of an HTML <canvas> element.
[See WebGLRenderingContext on MDN](https://developer.mozilla.org/docs/Web/API/WebGLRenderingContext)
*/
type webGLRenderingContext = {}

/**
The WebContextEvent interface is part of the WebGL API and is an interface for an event that is generated in response to a status change to the WebGL rendering context.
[See WebGLContextEvent on MDN](https://developer.mozilla.org/docs/Web/API/WebGLContextEvent)
*/
type webGLContextEvent = {
  ...event,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebGLContextEvent/statusMessage)
    */
  statusMessage: domString,
}

/**
[See WebGLQuery on MDN](https://developer.mozilla.org/docs/Web/API/WebGLQuery)
*/
type webGLQuery = {}

/**
[See WebGLSampler on MDN](https://developer.mozilla.org/docs/Web/API/WebGLSampler)
*/
type webGLSampler = {}

/**
[See WebGLSync on MDN](https://developer.mozilla.org/docs/Web/API/WebGLSync)
*/
type webGLSync = {}

/**
[See WebGLTransformFeedback on MDN](https://developer.mozilla.org/docs/Web/API/WebGLTransformFeedback)
*/
type webGLTransformFeedback = {}

/**
[See WebGLVertexArrayObject on MDN](https://developer.mozilla.org/docs/Web/API/WebGLVertexArrayObject)
*/
type webGLVertexArrayObject = {}

/**
[See WebGL2RenderingContext on MDN](https://developer.mozilla.org/docs/Web/API/WebGL2RenderingContext)
*/
type webGL2RenderingContext = {}

/**
[See MIDIInputMap on MDN](https://developer.mozilla.org/docs/Web/API/MIDIInputMap)
*/
type midiInputMap = {}

/**
[See MIDIOutputMap on MDN](https://developer.mozilla.org/docs/Web/API/MIDIOutputMap)
*/
type midiOutputMap = {}

/**
[See MIDIAccess on MDN](https://developer.mozilla.org/docs/Web/API/MIDIAccess)
*/
type midiAccess = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MIDIAccess/inputs)
    */
  inputs: midiInputMap,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MIDIAccess/outputs)
    */
  outputs: midiOutputMap,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MIDIAccess/sysexEnabled)
    */
  sysexEnabled: bool,
}

/**
[See MIDIPort on MDN](https://developer.mozilla.org/docs/Web/API/MIDIPort)
*/
type midiPort = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MIDIPort/id)
    */
  id: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MIDIPort/manufacturer)
    */
  manufacturer: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MIDIPort/name)
    */
  name: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MIDIPort/type)
    */
  @as("type")
  type_: midiPortType,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MIDIPort/version)
    */
  version: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MIDIPort/state)
    */
  state: midiPortDeviceState,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MIDIPort/connection)
    */
  connection: midiPortConnectionState,
}

/**
[See MIDIInput on MDN](https://developer.mozilla.org/docs/Web/API/MIDIInput)
*/
type midiInput = {
  ...midiPort,
}

/**
[See MIDIOutput on MDN](https://developer.mozilla.org/docs/Web/API/MIDIOutput)
*/
type midiOutput = {
  ...midiPort,
}

/**
[See MIDIMessageEvent on MDN](https://developer.mozilla.org/docs/Web/API/MIDIMessageEvent)
*/
type midiMessageEvent = {
  ...event,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MIDIMessageEvent/data)
    */
  data: Null.t<array<int>>,
}

/**
[See MIDIConnectionEvent on MDN](https://developer.mozilla.org/docs/Web/API/MIDIConnectionEvent)
*/
type midiConnectionEvent = {
  ...event,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MIDIConnectionEvent/port)
    */
  port: Null.t<midiPort>,
}

/**
[See RTCEncodedVideoFrame on MDN](https://developer.mozilla.org/docs/Web/API/RTCEncodedVideoFrame)
*/
type rtcEncodedVideoFrame = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCEncodedVideoFrame/type)
    */
  @as("type")
  type_: rtcEncodedVideoFrameType,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCEncodedVideoFrame/data)
    */
  mutable data: arrayBuffer,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCEncodedVideoFrame/timestamp)
    */
  timestamp: int,
}

/**
[See RTCEncodedAudioFrame on MDN](https://developer.mozilla.org/docs/Web/API/RTCEncodedAudioFrame)
*/
type rtcEncodedAudioFrame = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCEncodedAudioFrame/data)
    */
  mutable data: arrayBuffer,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCEncodedAudioFrame/timestamp)
    */
  timestamp: int,
}

/**
A WebRTC connection between the local computer and a remote peer. It provides methods to connect to a remote peer, maintain and monitor the connection, and close the connection once it's no longer needed.
[See RTCPeerConnection on MDN](https://developer.mozilla.org/docs/Web/API/RTCPeerConnection)
*/
type rtcPeerConnection = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCPeerConnection/localDescription)
    */
  localDescription: Null.t<rtcSessionDescription>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCPeerConnection/currentLocalDescription)
    */
  currentLocalDescription: Null.t<rtcSessionDescription>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCPeerConnection/pendingLocalDescription)
    */
  pendingLocalDescription: Null.t<rtcSessionDescription>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCPeerConnection/remoteDescription)
    */
  remoteDescription: Null.t<rtcSessionDescription>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCPeerConnection/currentRemoteDescription)
    */
  currentRemoteDescription: Null.t<rtcSessionDescription>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCPeerConnection/pendingRemoteDescription)
    */
  pendingRemoteDescription: Null.t<rtcSessionDescription>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCPeerConnection/signalingState)
    */
  signalingState: rtcSignalingState,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCPeerConnection/iceGatheringState)
    */
  iceGatheringState: rtcIceGatheringState,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCPeerConnection/iceConnectionState)
    */
  iceConnectionState: rtcIceConnectionState,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCPeerConnection/connectionState)
    */
  connectionState: rtcPeerConnectionState,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCPeerConnection/canTrickleIceCandidates)
    */
  canTrickleIceCandidates: Null.t<bool>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCPeerConnection/sctp)
    */
  sctp: Null.t<rtcSctpTransport>,
}

/**
The RTCIceCandidate interface—part of the WebRTC API—represents a candidate Internet Connectivity Establishment (ICE) configuration which may be used to establish an RTCPeerConnection.
[See RTCIceCandidate on MDN](https://developer.mozilla.org/docs/Web/API/RTCIceCandidate)
*/
type rtcIceCandidate = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCIceCandidate/candidate)
    */
  candidate: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCIceCandidate/sdpMid)
    */
  sdpMid: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCIceCandidate/sdpMLineIndex)
    */
  sdpMLineIndex: Null.t<int>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCIceCandidate/foundation)
    */
  foundation: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCIceCandidate/component)
    */
  component: Null.t<rtcIceComponent>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCIceCandidate/priority)
    */
  priority: Null.t<any>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCIceCandidate/address)
    */
  address: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCIceCandidate/protocol)
    */
  protocol: Null.t<rtcIceProtocol>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCIceCandidate/port)
    */
  port: Null.t<int>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCIceCandidate/type)
    */
  @as("type")
  type_: Null.t<rtcIceCandidateType>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCIceCandidate/tcpType)
    */
  tcpType: Null.t<rtcIceTcpCandidateType>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCIceCandidate/relatedAddress)
    */
  relatedAddress: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCIceCandidate/relatedPort)
    */
  relatedPort: Null.t<int>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCIceCandidate/usernameFragment)
    */
  usernameFragment: Null.t<domString>,
}

/**
Events that occurs in relation to ICE candidates with the target, usually an RTCPeerConnection. Only one event is of this type: icecandidate.
[See RTCPeerConnectionIceEvent on MDN](https://developer.mozilla.org/docs/Web/API/RTCPeerConnectionIceEvent)
*/
type rtcPeerConnectionIceEvent = {
  ...event,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCPeerConnectionIceEvent/candidate)
    */
  candidate: Null.t<rtcIceCandidate>,
}

/**
[See RTCPeerConnectionIceErrorEvent on MDN](https://developer.mozilla.org/docs/Web/API/RTCPeerConnectionIceErrorEvent)
*/
type rtcPeerConnectionIceErrorEvent = {
  ...event,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCPeerConnectionIceErrorEvent/address)
    */
  address: Null.t<domString>,
}

/**
[See RTCCertificate on MDN](https://developer.mozilla.org/docs/Web/API/RTCCertificate)
*/
type rtcCertificate = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCCertificate/expires)
    */
  expires: int,
}

/**
Provides the ability to control and obtain details about how a particular MediaStreamTrack is encoded and sent to a remote peer.
[See RTCRtpSender on MDN](https://developer.mozilla.org/docs/Web/API/RTCRtpSender)
*/
type rtcRtpSender = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCRtpSender/track)
    */
  track: Null.t<mediaStreamTrack>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCRtpSender/transport)
    */
  transport: Null.t<rtcDtlsTransport>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCRtpSender/transform)
    */
  mutable transform: Null.t<rtcRtpScriptTransform>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCRtpSender/dtmf)
    */
  dtmf: Null.t<rtcdtmfSender>,
}

/**
This WebRTC API interface manages the reception and decoding of data for a MediaStreamTrack on an RTCPeerConnection.
[See RTCRtpReceiver on MDN](https://developer.mozilla.org/docs/Web/API/RTCRtpReceiver)
*/
type rtcRtpReceiver = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCRtpReceiver/track)
    */
  track: mediaStreamTrack,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCRtpReceiver/transport)
    */
  transport: Null.t<rtcDtlsTransport>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCRtpReceiver/jitterBufferTarget)
    */
  mutable jitterBufferTarget: Null.t<domHighResTimeStamp>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCRtpReceiver/transform)
    */
  mutable transform: Null.t<rtcRtpScriptTransform>,
}

/**
[See RTCRtpTransceiver on MDN](https://developer.mozilla.org/docs/Web/API/RTCRtpTransceiver)
*/
type rtcRtpTransceiver = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCRtpTransceiver/mid)
    */
  mid: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCRtpTransceiver/sender)
    */
  sender: rtcRtpSender,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCRtpTransceiver/receiver)
    */
  receiver: rtcRtpReceiver,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCRtpTransceiver/direction)
    */
  mutable direction: rtcRtpTransceiverDirection,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCRtpTransceiver/currentDirection)
    */
  currentDirection: Null.t<rtcRtpTransceiverDirection>,
}

type rtcIceCandidatePair = {}

/**
[See RTCTrackEvent on MDN](https://developer.mozilla.org/docs/Web/API/RTCTrackEvent)
*/
type rtcTrackEvent = {
  ...event,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCTrackEvent/receiver)
    */
  receiver: rtcRtpReceiver,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCTrackEvent/track)
    */
  track: mediaStreamTrack,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCTrackEvent/streams)
    */
  streams: array<mediaStream>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCTrackEvent/transceiver)
    */
  transceiver: rtcRtpTransceiver,
}

/**
[See RTCDataChannel on MDN](https://developer.mozilla.org/docs/Web/API/RTCDataChannel)
*/
type rtcDataChannel = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCDataChannel/label)
    */
  label: usvString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCDataChannel/ordered)
    */
  ordered: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCDataChannel/maxPacketLifeTime)
    */
  maxPacketLifeTime: Null.t<int>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCDataChannel/maxRetransmits)
    */
  maxRetransmits: Null.t<int>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCDataChannel/protocol)
    */
  protocol: usvString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCDataChannel/negotiated)
    */
  negotiated: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCDataChannel/id)
    */
  id: Null.t<int>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCDataChannel/readyState)
    */
  readyState: rtcDataChannelState,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCDataChannel/bufferedAmount)
    */
  bufferedAmount: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCDataChannel/bufferedAmountLowThreshold)
    */
  mutable bufferedAmountLowThreshold: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCDataChannel/binaryType)
    */
  mutable binaryType: binaryType,
}

/**
[See RTCDataChannelEvent on MDN](https://developer.mozilla.org/docs/Web/API/RTCDataChannelEvent)
*/
type rtcDataChannelEvent = {
  ...event,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCDataChannelEvent/channel)
    */
  channel: rtcDataChannel,
}

/**
Events sent to indicate that DTMF tones have started or finished playing. This interface is used by the tonechange event.
[See RTCDTMFToneChangeEvent on MDN](https://developer.mozilla.org/docs/Web/API/RTCDTMFToneChangeEvent)
*/
type rtcdtmfToneChangeEvent = {
  ...event,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCDTMFToneChangeEvent/tone)
    */
  tone: domString,
}

/**
[See RTCStatsReport on MDN](https://developer.mozilla.org/docs/Web/API/RTCStatsReport)
*/
type rtcStatsReport = {}

/**
[See RTCError on MDN](https://developer.mozilla.org/docs/Web/API/RTCError)
*/
type rtcError = {
  ...domException,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCError/errorDetail)
    */
  errorDetail: rtcErrorDetailType,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCError/sdpLineNumber)
    */
  sdpLineNumber: Null.t<int>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCError/sctpCauseCode)
    */
  sctpCauseCode: Null.t<int>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCError/receivedAlert)
    */
  receivedAlert: Null.t<any>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCError/sentAlert)
    */
  sentAlert: Null.t<any>,
}

/**
[See RTCErrorEvent on MDN](https://developer.mozilla.org/docs/Web/API/RTCErrorEvent)
*/
type rtcErrorEvent = {
  ...event,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RTCErrorEvent/error)
    */
  error: rtcError,
}

/**
Provides the API for creating and managing a WebSocket connection to a server, as well as for sending and receiving data on the connection.
[See WebSocket on MDN](https://developer.mozilla.org/docs/Web/API/WebSocket)
*/
type webSocket = {
  ...eventTarget,
  /**
    Returns the URL that was used to establish the WebSocket connection.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebSocket/url)
    */
  url: usvString,
  /**
    Returns the state of the WebSocket object's connection. It can have the values described below.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebSocket/readyState)
    */
  readyState: int,
  /**
    Returns the number of bytes of application data (UTF-8 text and binary data) that have been queued using send() but not yet been transmitted to the network.

If the WebSocket connection is closed, this attribute's value will only increase with each call to the send() method. (The number does not reset to zero once the connection closes.)
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebSocket/bufferedAmount)
    */
  bufferedAmount: int,
  /**
    Returns the extensions selected by the server, if any.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebSocket/extensions)
    */
  extensions: domString,
  /**
    Returns the subprotocol selected by the server, if any. It can be used in conjunction with the array form of the constructor's second argument to perform subprotocol negotiation.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebSocket/protocol)
    */
  protocol: domString,
  /**
    Returns a string that indicates how binary data from the WebSocket object is exposed to scripts:

Can be set, to change how binary data is returned. The default is "blob".
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebSocket/binaryType)
    */
  mutable binaryType: binaryType,
}

/**
A CloseEvent is sent to clients using WebSockets when the connection is closed. This is delivered to the listener indicated by the WebSocket object's onclose attribute.
[See CloseEvent on MDN](https://developer.mozilla.org/docs/Web/API/CloseEvent)
*/
type closeEvent = {
  ...event,
  /**
    Returns true if the connection closed cleanly; false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CloseEvent/wasClean)
    */
  wasClean: bool,
  /**
    Returns the WebSocket connection close code provided by the server.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CloseEvent/code)
    */
  code: int,
  /**
    Returns the WebSocket connection close reason provided by the server.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CloseEvent/reason)
    */
  reason: usvString,
}

/**
[See WebTransportDatagramDuplexStream on MDN](https://developer.mozilla.org/docs/Web/API/WebTransportDatagramDuplexStream)
*/
type webTransportDatagramDuplexStream = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebTransportDatagramDuplexStream/readable)
    */
  readable: readableStream<unit>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebTransportDatagramDuplexStream/writable)
    */
  writable: writableStream<unit>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebTransportDatagramDuplexStream/maxDatagramSize)
    */
  maxDatagramSize: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebTransportDatagramDuplexStream/incomingMaxAge)
    */
  mutable incomingMaxAge: Null.t<any>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebTransportDatagramDuplexStream/outgoingMaxAge)
    */
  mutable outgoingMaxAge: Null.t<any>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebTransportDatagramDuplexStream/incomingHighWaterMark)
    */
  mutable incomingHighWaterMark: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebTransportDatagramDuplexStream/outgoingHighWaterMark)
    */
  mutable outgoingHighWaterMark: any,
}

/**
[See WebTransport on MDN](https://developer.mozilla.org/docs/Web/API/WebTransport)
*/
type webTransport = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebTransport/ready)
    */
  ready: Promise.t<undefined<unit>>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebTransport/closed)
    */
  closed: Promise.t<webTransportCloseInfo>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebTransport/datagrams)
    */
  datagrams: webTransportDatagramDuplexStream,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebTransport/incomingBidirectionalStreams)
    */
  incomingBidirectionalStreams: readableStream<unit>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebTransport/incomingUnidirectionalStreams)
    */
  incomingUnidirectionalStreams: readableStream<unit>,
}

/**
[See WebTransportBidirectionalStream on MDN](https://developer.mozilla.org/docs/Web/API/WebTransportBidirectionalStream)
*/
type webTransportBidirectionalStream = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebTransportBidirectionalStream/readable)
    */
  readable: readableStream<unit>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebTransportBidirectionalStream/writable)
    */
  writable: writableStream<unit>,
}

/**
[See WebTransportError on MDN](https://developer.mozilla.org/docs/Web/API/WebTransportError)
*/
type webTransportError = {
  ...domException,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebTransportError/source)
    */
  source: webTransportErrorSource,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebTransportError/streamErrorCode)
    */
  streamErrorCode: Null.t<any>,
}

/**
[See VTTCue on MDN](https://developer.mozilla.org/docs/Web/API/VTTCue)
*/
type vttCue = {
  ...textTrackCue,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VTTCue/region)
    */
  mutable region: Null.t<vttRegion>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VTTCue/vertical)
    */
  mutable vertical: directionSetting,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VTTCue/snapToLines)
    */
  mutable snapToLines: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VTTCue/line)
    */
  mutable line: lineAndPositionSetting,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VTTCue/lineAlign)
    */
  mutable lineAlign: lineAlignSetting,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VTTCue/position)
    */
  mutable position: lineAndPositionSetting,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VTTCue/positionAlign)
    */
  mutable positionAlign: positionAlignSetting,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VTTCue/size)
    */
  mutable size: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VTTCue/align)
    */
  mutable align: alignSetting,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VTTCue/text)
    */
  mutable text: domString,
}

/**
[See XMLHttpRequestEventTarget on MDN](https://developer.mozilla.org/docs/Web/API/XMLHttpRequestEventTarget)
*/
type xmlHttpRequestEventTarget = {
  ...eventTarget,
}

/**
[See XMLHttpRequestUpload on MDN](https://developer.mozilla.org/docs/Web/API/XMLHttpRequestUpload)
*/
type xmlHttpRequestUpload = {
  ...xmlHttpRequestEventTarget,
}

/**
Use XMLHttpRequest (XHR) objects to interact with servers. You can retrieve data from a URL without having to do a full page refresh. This enables a Web page to update just part of a page without disrupting what the user is doing.
[See XMLHttpRequest on MDN](https://developer.mozilla.org/docs/Web/API/XMLHttpRequest)
*/
type xmlHttpRequest = {
  ...xmlHttpRequestEventTarget,
  /**
    Returns client's state.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/XMLHttpRequest/readyState)
    */
  readyState: int,
  /**
    Can be set to a time in milliseconds. When set to a non-zero value will cause fetching to terminate after the given time has passed. When the time has passed, the request has not yet completed, and this's synchronous flag is unset, a timeout event will then be dispatched, or a "TimeoutError" DOMException will be thrown otherwise (for the send() method).

When set: throws an "InvalidAccessError" DOMException if the synchronous flag is set and current global object is a Window object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/XMLHttpRequest/timeout)
    */
  mutable timeout: any,
  /**
    True when credentials are to be included in a cross-origin request. False when they are to be excluded in a cross-origin request and when cookies are to be ignored in its response. Initially false.

When set: throws an "InvalidStateError" DOMException if state is not unsent or opened, or if the send() flag is set.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/XMLHttpRequest/withCredentials)
    */
  mutable withCredentials: bool,
  /**
    Returns the associated XMLHttpRequestUpload object. It can be used to gather transmission information when data is transferred to a server.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/XMLHttpRequest/upload)
    */
  upload: xmlHttpRequestUpload,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/XMLHttpRequest/responseURL)
    */
  responseURL: usvString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/XMLHttpRequest/status)
    */
  status: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/XMLHttpRequest/statusText)
    */
  statusText: string,
  /**
    Returns the response type.

Can be set to change the response type. Values are: the empty string (default), "arraybuffer", "blob", "document", "json", and "text".

When set: setting to "document" is ignored if current global object is not a Window object.

When set: throws an "InvalidStateError" DOMException if state is loading or done.

When set: throws an "InvalidAccessError" DOMException if the synchronous flag is set and current global object is a Window object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/XMLHttpRequest/responseType)
    */
  mutable responseType: xmlHttpRequestResponseType,
  /**
    Returns the response body.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/XMLHttpRequest/response)
    */
  response: any,
  /**
    Returns response as text.

Throws an "InvalidStateError" DOMException if responseType is not the empty string or "text".
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/XMLHttpRequest/responseText)
    */
  responseText: usvString,
  /**
    Returns the response as document.

Throws an "InvalidStateError" DOMException if responseType is not the empty string or "document".
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/XMLHttpRequest/responseXML)
    */
  responseXML: Null.t<document>,
}

/**
Events measuring progress of an underlying process, like an HTTP request (for an XMLHttpRequest, or the loading of the underlying resource of an <img>, <audio>, <video>, <style> or <link>).
[See ProgressEvent on MDN](https://developer.mozilla.org/docs/Web/API/ProgressEvent)
*/
type progressEvent<'t> = {
  ...event,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ProgressEvent/lengthComputable)
    */
  lengthComputable: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ProgressEvent/loaded)
    */
  loaded: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ProgressEvent/total)
    */
  total: int,
}

type importMeta = {}

type compileError = {
  ...error,
}

type htmlTableDataCellElement = {
  ...htmlTableCellElement,
}

type htmlTableHeaderCellElement = {
  ...htmlTableCellElement,
}

type htmlDocument = {
  ...document,
}

type clientRect = {
  ...domRect,
}

type eventListener = {}

type eventListenerObject = {}

type styleMedia = {}

type runtimeError = {
  ...error,
}

type linkError = {
  ...error,
}

type xPathNSResolver = {}

type svgTests = {}

type svgFitToViewBox = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGMarkerElement/viewBox)
    */
  viewBox: svgAnimatedRect,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGMarkerElement/preserveAspectRatio)
    */
  preserveAspectRatio: svgAnimatedPreserveAspectRatio,
}

type svguriReference = {}

type svgAnimatedPoints = {}

type navigatorBadge = {}

type fontFaceSource = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/fonts)
    */
  fonts: fontFaceSet,
}

type linkStyle = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLinkElement/sheet)
    */
  sheet: Null.t<cssStyleSheet>,
}

type elementCSSInlineStyle = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/style)
    */
  style: cssStyleDeclaration,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/attributeStyleMap)
    */
  attributeStyleMap: stylePropertyMap,
}

type nonElementParentNode = {}

type documentOrShadowRoot = {
  /**
    Retrieves a collection of styleSheet objects representing the style sheets that correspond to each instance of a link or style object in the document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/styleSheets)
    */
  styleSheets: styleSheetList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/adoptedStyleSheets)
    */
  mutable adoptedStyleSheets: array<cssStyleSheet>,
  /**
    Returns document's fullscreen element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/fullscreenElement)
    */
  fullscreenElement: Null.t<element>,
  /**
    Returns the deepest element in the document through which or to which key events are being routed. This is, roughly speaking, the focused element in the document.

For the purposes of this API, when a child browsing context is focused, its container is focused in the parent browsing context. For example, if the user moves the focus to a text control in an iframe, the iframe is the element returned by the activeElement API in the iframe's node document.

Similarly, when the focused element is in a different node tree than documentOrShadowRoot, the element returned will be the host that's located in the same node tree as documentOrShadowRoot if documentOrShadowRoot is a shadow-including inclusive ancestor of the focused element, and null if not.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/activeElement)
    */
  activeElement: Null.t<element>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/pictureInPictureElement)
    */
  pictureInPictureElement: Null.t<element>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/pointerLockElement)
    */
  pointerLockElement: Null.t<element>,
}

type parentNode = {
  ...node,
  /**
    Returns the child elements.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/children)
    */
  children: htmlCollection,
  /**
    Returns the first child that is an element, and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/firstElementChild)
    */
  firstElementChild: Null.t<element>,
  /**
    Returns the last child that is an element, and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/lastElementChild)
    */
  lastElementChild: Null.t<element>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/childElementCount)
    */
  childElementCount: any,
}

type nonDocumentTypeChildNode = {
  /**
    Returns the first preceding sibling that is an element, and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/previousElementSibling)
    */
  previousElementSibling: Null.t<element>,
  /**
    Returns the first following sibling that is an element, and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/nextElementSibling)
    */
  nextElementSibling: Null.t<element>,
}

type childNode = {
  ...node,
}

type slottable = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/assignedSlot)
    */
  assignedSlot: Null.t<htmlSlotElement>,
}

type xPathEvaluatorBase = {}

type textDecoderCommon = {
  /**
    Returns encoding's name, lowercased.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextDecoder/encoding)
    */
  encoding: domString,
  /**
    Returns true if error mode is "fatal", otherwise false.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextDecoder/fatal)
    */
  fatal: bool,
  /**
    Returns the value of ignore BOM.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextDecoder/ignoreBOM)
    */
  ignoreBOM: bool,
}

type textEncoderCommon = {
  /**
    Returns "utf-8".
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TextEncoder/encoding)
    */
  encoding: domString,
}

type body = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/body)
    */
  body: Null.t<readableStream<array<int>>>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/bodyUsed)
    */
  bodyUsed: bool,
}

type svgFilterPrimitiveStandardAttributes = {}

type htmlOrSVGElement = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/dataset)
    */
  dataset: domStringMap,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/nonce)
    */
  mutable nonce?: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/autofocus)
    */
  mutable autofocus: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/tabIndex)
    */
  mutable tabIndex: int,
}

type htmlHyperlinkElementUtils = {
  /**
    Returns the hyperlink's URL.

Can be set, to change the URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAnchorElement/href)
    */
  mutable href: usvString,
  /**
    Returns the hyperlink's URL's origin.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAnchorElement/origin)
    */
  origin: usvString,
  /**
    Returns the hyperlink's URL's scheme.

Can be set, to change the URL's scheme.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAnchorElement/protocol)
    */
  mutable protocol: usvString,
  /**
    Returns the hyperlink's URL's username.

Can be set, to change the URL's username.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAnchorElement/username)
    */
  mutable username: usvString,
  /**
    Returns the hyperlink's URL's password.

Can be set, to change the URL's password.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAnchorElement/password)
    */
  mutable password: usvString,
  /**
    Returns the hyperlink's URL's host and port (if different from the default port for the scheme).

Can be set, to change the URL's host and port.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAnchorElement/host)
    */
  mutable host: usvString,
  /**
    Returns the hyperlink's URL's host.

Can be set, to change the URL's host.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAnchorElement/hostname)
    */
  mutable hostname: usvString,
  /**
    Returns the hyperlink's URL's port.

Can be set, to change the URL's port.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAnchorElement/port)
    */
  mutable port: usvString,
  /**
    Returns the hyperlink's URL's path.

Can be set, to change the URL's path.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAnchorElement/pathname)
    */
  mutable pathname: usvString,
  /**
    Returns the hyperlink's URL's query (includes leading "?" if non-empty).

Can be set, to change the URL's query (ignores leading "?").
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAnchorElement/search)
    */
  mutable search: usvString,
  /**
    Returns the hyperlink's URL's fragment (includes leading "#" if non-empty).

Can be set, to change the URL's fragment (ignores leading "#").
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAnchorElement/hash)
    */
  mutable hash: usvString,
}

type canvasState = {}

type canvasTransform = {}

type canvasCompositing = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/globalAlpha)
    */
  mutable globalAlpha: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/globalCompositeOperation)
    */
  mutable globalCompositeOperation: globalCompositeOperation,
}

type canvasImageSmoothing = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/imageSmoothingEnabled)
    */
  mutable imageSmoothingEnabled: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/imageSmoothingQuality)
    */
  mutable imageSmoothingQuality: imageSmoothingQuality,
}

type canvasFillStrokeStyles = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/strokeStyle)
    */
  mutable strokeStyle: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/fillStyle)
    */
  mutable fillStyle: unknown,
}

type canvasShadowStyles = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/shadowOffsetX)
    */
  mutable shadowOffsetX: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/shadowOffsetY)
    */
  mutable shadowOffsetY: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/shadowBlur)
    */
  mutable shadowBlur: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/shadowColor)
    */
  mutable shadowColor: domString,
}

type canvasFilters = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/filter)
    */
  mutable filter: domString,
}

type canvasRect = {}

type canvasDrawPath = {}

type canvasUserInterface = {}

type canvasText = {}

type canvasDrawImage = {}

type canvasImageData = {}

type canvasPathDrawingStyles = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/lineWidth)
    */
  mutable lineWidth: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/lineCap)
    */
  mutable lineCap: canvasLineCap,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/lineJoin)
    */
  mutable lineJoin: canvasLineJoin,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/miterLimit)
    */
  mutable miterLimit: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/lineDashOffset)
    */
  mutable lineDashOffset: any,
}

type canvasTextDrawingStyles = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/font)
    */
  mutable font: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/textAlign)
    */
  mutable textAlign: canvasTextAlign,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/textBaseline)
    */
  mutable textBaseline: canvasTextBaseline,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/direction)
    */
  mutable direction: canvasDirection,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/letterSpacing)
    */
  mutable letterSpacing: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/fontKerning)
    */
  mutable fontKerning: canvasFontKerning,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/fontStretch)
    */
  mutable fontStretch: canvasFontStretch,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/fontVariantCaps)
    */
  mutable fontVariantCaps: canvasFontVariantCaps,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/textRendering)
    */
  mutable textRendering: canvasTextRendering,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/wordSpacing)
    */
  mutable wordSpacing: domString,
}

type canvasPath = {}

type elementContentEditable = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/contentEditable)
    */
  mutable contentEditable: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/enterKeyHint)
    */
  mutable enterKeyHint: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/isContentEditable)
    */
  isContentEditable: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/inputMode)
    */
  mutable inputMode: domString,
}

type popoverInvokerElement = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLButtonElement/popoverTargetElement)
    */
  mutable popoverTargetElement: Null.t<element>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLButtonElement/popoverTargetAction)
    */
  mutable popoverTargetAction: domString,
}

type globalEventHandlers = {}

type windowEventHandlers = {}

type windowOrWorkerGlobalScope = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/origin)
    */
  origin: usvString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/isSecureContext)
    */
  isSecureContext: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/crossOriginIsolated)
    */
  crossOriginIsolated: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/indexedDB)
    */
  indexedDB: idbFactory,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/crypto)
    */
  crypto: crypto,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/performance)
    */
  performance: performance,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/caches)
    */
  caches: cacheStorage,
}

type navigatorID = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/userAgent)
    */
  userAgent: domString,
}

type navigatorLanguage = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/language)
    */
  language: domString,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/languages)
    */
  languages: array<domString>,
}

type navigatorOnLine = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/onLine)
    */
  onLine: bool,
}

type navigatorContentUtils = {}

type navigatorCookies = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/cookieEnabled)
    */
  cookieEnabled: bool,
}

type navigatorPlugins = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/pdfViewerEnabled)
    */
  pdfViewerEnabled: bool,
}

type animationFrameProvider = {}

type abstractWorker = {}

type navigatorConcurrentHardware = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/hardwareConcurrency)
    */
  hardwareConcurrency: int,
}

type windowSessionStorage = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/sessionStorage)
    */
  sessionStorage: storage,
}

type windowLocalStorage = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/localStorage)
    */
  localStorage: storage,
}

type navigatorStorage = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/storage)
    */
  storage: storageManager,
}

type readableStreamGenericReader = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ReadableStreamBYOBReader/closed)
    */
  closed: Promise.t<undefined<unit>>,
}

type genericTransformStream = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CompressionStream/readable)
    */
  readable: readableStream<unit>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CompressionStream/writable)
    */
  writable: writableStream<unit>,
}

type ariaMixin = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaAtomic)
    */
  mutable ariaAtomic: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaAutoComplete)
    */
  mutable ariaAutoComplete: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaBrailleLabel)
    */
  mutable ariaBrailleLabel: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaBrailleRoleDescription)
    */
  mutable ariaBrailleRoleDescription: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaBusy)
    */
  mutable ariaBusy: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaChecked)
    */
  mutable ariaChecked: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaColCount)
    */
  mutable ariaColCount: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaColIndex)
    */
  mutable ariaColIndex: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaColIndexText)
    */
  mutable ariaColIndexText: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaColSpan)
    */
  mutable ariaColSpan: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaCurrent)
    */
  mutable ariaCurrent: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaDescription)
    */
  mutable ariaDescription: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaDisabled)
    */
  mutable ariaDisabled: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaExpanded)
    */
  mutable ariaExpanded: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaHasPopup)
    */
  mutable ariaHasPopup: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaHidden)
    */
  mutable ariaHidden: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaKeyShortcuts)
    */
  mutable ariaKeyShortcuts: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaLabel)
    */
  mutable ariaLabel: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaLevel)
    */
  mutable ariaLevel: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaLive)
    */
  mutable ariaLive: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaModal)
    */
  mutable ariaModal: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaMultiLine)
    */
  mutable ariaMultiLine: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaMultiSelectable)
    */
  mutable ariaMultiSelectable: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaOrientation)
    */
  mutable ariaOrientation: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaPlaceholder)
    */
  mutable ariaPlaceholder: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaPosInSet)
    */
  mutable ariaPosInSet: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaPressed)
    */
  mutable ariaPressed: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaReadOnly)
    */
  mutable ariaReadOnly: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaRequired)
    */
  mutable ariaRequired: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaRoleDescription)
    */
  mutable ariaRoleDescription: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaRowCount)
    */
  mutable ariaRowCount: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaRowIndex)
    */
  mutable ariaRowIndex: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaRowIndexText)
    */
  mutable ariaRowIndexText: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaRowSpan)
    */
  mutable ariaRowSpan: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaSelected)
    */
  mutable ariaSelected: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaSetSize)
    */
  mutable ariaSetSize: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaSort)
    */
  mutable ariaSort: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaValueMax)
    */
  mutable ariaValueMax: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaValueMin)
    */
  mutable ariaValueMin: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaValueNow)
    */
  mutable ariaValueNow: Null.t<domString>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaValueText)
    */
  mutable ariaValueText: Null.t<domString>,
}

type animatable = {}

type navigatorLocks = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/locks)
    */
  locks: lockManager,
}

type navigatorAutomationInformation = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/webdriver)
    */
  webdriver: bool,
}

type webGLRenderingContextBase = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebGLRenderingContext/canvas)
    */
  canvas: unknown,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebGLRenderingContext/drawingBufferWidth)
    */
  drawingBufferWidth: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebGLRenderingContext/drawingBufferHeight)
    */
  drawingBufferHeight: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebGLRenderingContext/drawingBufferColorSpace)
    */
  mutable drawingBufferColorSpace: predefinedColorSpace,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebGL2RenderingContext/unpackColorSpace)
    */
  mutable unpackColorSpace: predefinedColorSpace,
}

type webGLRenderingContextOverloads = {}

type webGL2RenderingContextBase = {}

type webGL2RenderingContextOverloads = {}
