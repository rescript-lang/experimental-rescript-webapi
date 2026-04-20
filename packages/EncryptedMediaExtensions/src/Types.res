@@warning("-30")

type mediaKeysRequirement = WebApiBase.EncryptedMediaExtensions.mediaKeysRequirement

type mediaKeySessionType = WebApiBase.EncryptedMediaExtensions.mediaKeySessionType

type mediaKeySessionClosedReason = WebApiBase.EncryptedMediaExtensions.mediaKeySessionClosedReason

type mediaKeyStatus = WebApiBase.EncryptedMediaExtensions.mediaKeyStatus

/**
This WebApiEncryptedMediaExtensions API interface provides access to a Key System for decryption and/or a content protection provider. You can request an instance of this object using the Navigator.requestMediaKeySystemAccess method.
[See MediaKeySystemAccess on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySystemAccess)
*/
@editor.completeFrom(MediaKeySystemAccess)
type mediaKeySystemAccess = WebApiBase.EncryptedMediaExtensions.mediaKeySystemAccess

/**
This WebApiEncryptedMediaExtensions API interface the represents a set of keys that an associated HTMLMediaElement can use for decryption of media data during playback.
[See MediaKeys on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeys)
*/
@editor.completeFrom(MediaKeys)
type mediaKeys = WebApiBase.EncryptedMediaExtensions.mediaKeys

/**
This WebApiEncryptedMediaExtensions API interface is a read-only map of media key statuses by key IDs.
[See MediaKeyStatusMap on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeyStatusMap)
*/
@editor.completeFrom(MediaKeyStatusMap)
type mediaKeyStatusMap = WebApiBase.EncryptedMediaExtensions.mediaKeyStatusMap

/**
This WebApiEncryptedMediaExtensions API interface represents a context for message exchange with a content decryption module (CDM).
[See MediaKeySession on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySession)
*/
@editor.completeFrom(MediaKeySession)
type mediaKeySession = WebApiBase.EncryptedMediaExtensions.mediaKeySession

type mediaKeySystemMediaCapability = WebApiBase.EncryptedMediaExtensions.mediaKeySystemMediaCapability

type mediaKeySystemConfiguration = WebApiBase.EncryptedMediaExtensions.mediaKeySystemConfiguration

type mediaKeysPolicy = {mutable minHdcpVersion?: string}
