/** Temporary, to be fixed */
type error = {}
type any
type arrayBufferView = {}
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

type autoFillCredentialField =
  | @as("webauthn") Webauthn

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

type autoKeyword =
  | @as("auto") Auto

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

type publicKeyCredentialType =
  | @as("public-key") PublicKey

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

type rtcRtcpMuxPolicy =
  | @as("require") Require

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

type readableStreamReaderMode =
  | @as("byob") Byob

type readableStreamType =
  | @as("bytes") Bytes

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

type scrollSetting =
  | @as("up") Up

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

type wakeLockType =
  | @as("screen") Screen

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
    | @as("selectstart") Selectstart
    | @as("selectionchange") Selectionchange
    | @as("animationstart") Animationstart
    | @as("animationiteration") Animationiteration
    | @as("animationend") Animationend
    | @as("animationcancel") Animationcancel
    | @as("transitionrun") Transitionrun
    | @as("transitionstart") Transitionstart
    | @as("transitionend") Transitionend
    | @as("transitioncancel") Transitioncancel
    | @as("touchstart") Touchstart
    | @as("touchend") Touchend
    | @as("touchmove") Touchmove
    | @as("touchcancel") Touchcancel
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
/**
EventTarget is a DOM interface implemented by objects that can receive events and may have listeners for them.
[See EventTarget on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget)
*/
type eventTarget = {
}
/**
An event which takes place in the DOM.
[See Event on MDN](https://developer.mozilla.org/docs/Web/API/Event)
*/
type event = {
    /**
    Returns the type of event, e.g. "click", "hashchange", or "submit".
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/type)
    */
    @as("type") type_: domString,
    /**
    Returns the object to which event is dispatched (its target).
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/target)
    */
    target: Null.t<eventTarget>,
    /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/srcElement)
    */
    srcElement: Null.t<eventTarget>,
    /**
    Returns the object whose event listener's callback is currently being invoked.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/currentTarget)
    */
    currentTarget: Null.t<eventTarget>,
    /**
    Returns the event's phase, which is one of NONE, CAPTURING_PHASE, AT_TARGET, and BUBBLING_PHASE.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/eventPhase)
    */
    eventPhase: unsigned short,
    /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/cancelBubble)
    */
    cancelBubble: boolean,
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
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Event/returnValue)
    */
    returnValue: boolean,
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
    detail: long,
    /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/UIEvent/which)
    */
    which: unsigned long,
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
    screenX: long,
    /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/screenY)
    */
    screenY: long,
    /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/clientX)
    */
    clientX: long,
    /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/clientY)
    */
    clientY: long,
    /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/layerX)
    */
    layerX: long,
    /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/layerY)
    */
    layerY: long,
    /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/ctrlKey)
    */
    ctrlKey: boolean,
    /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/shiftKey)
    */
    shiftKey: boolean,
    /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/altKey)
    */
    altKey: boolean,
    /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/metaKey)
    */
    metaKey: boolean,
    /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/button)
    */
    button: short,
    /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/buttons)
    */
    buttons: unsigned short,
    /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/relatedTarget)
    */
    relatedTarget: Null.t<eventTarget>,
    /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/movementX)
    */
    movementX: double,
    /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/movementY)
    */
    movementY: double,
    /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/pageX)
    */
    pageX: double,
    /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/pageY)
    */
    pageY: double,
    /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/x)
    */
    x: double,
    /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/y)
    */
    y: double,
    /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/offsetX)
    */
    offsetX: double,
    /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/offsetY)
    */
    offsetY: double,
}
