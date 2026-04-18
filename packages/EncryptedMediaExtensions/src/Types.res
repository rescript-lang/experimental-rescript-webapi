@@warning("-30")

type mediaKeysRequirement = Prelude.Types.mediaKeysRequirement

type mediaKeySessionType = Prelude.Types.mediaKeySessionType

type mediaKeySessionClosedReason = Prelude.Types.mediaKeySessionClosedReason

type mediaKeyStatus = Prelude.Types.mediaKeyStatus

/**
This EncryptedMediaExtensions API interface provides access to a Key System for decryption and/or a content protection provider. You can request an instance of this object using the Navigator.requestMediaKeySystemAccess method.
[See MediaKeySystemAccess on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySystemAccess)
*/
@editor.completeFrom(MediaKeySystemAccess)
type mediaKeySystemAccess = Prelude.Types.mediaKeySystemAccess

/**
This EncryptedMediaExtensions API interface the represents a set of keys that an associated HTMLMediaElement can use for decryption of media data during playback.
[See MediaKeys on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeys)
*/
@editor.completeFrom(MediaKeys)
type mediaKeys = Prelude.Types.mediaKeys

/**
This EncryptedMediaExtensions API interface is a read-only map of media key statuses by key IDs.
[See MediaKeyStatusMap on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeyStatusMap)
*/
@editor.completeFrom(MediaKeyStatusMap)
type mediaKeyStatusMap = Prelude.Types.mediaKeyStatusMap

/**
This EncryptedMediaExtensions API interface represents a context for message exchange with a content decryption module (CDM).
[See MediaKeySession on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySession)
*/
@editor.completeFrom(MediaKeySession)
type mediaKeySession = Prelude.Types.mediaKeySession

type mediaKeySystemMediaCapability = Prelude.Types.mediaKeySystemMediaCapability

type mediaKeySystemConfiguration = Prelude.Types.mediaKeySystemConfiguration

type mediaKeysPolicy = {mutable minHdcpVersion?: string}
