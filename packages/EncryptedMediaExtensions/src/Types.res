@@warning("-30")

type mediaKeysRequirement = WebApiPrelude.Types.mediaKeysRequirement

type mediaKeySessionType = WebApiPrelude.Types.mediaKeySessionType

type mediaKeySessionClosedReason = WebApiPrelude.Types.mediaKeySessionClosedReason

type mediaKeyStatus = WebApiPrelude.Types.mediaKeyStatus

/**
This WebApiEncryptedMediaExtensions API interface provides access to a Key System for decryption and/or a content protection provider. You can request an instance of this object using the Navigator.requestMediaKeySystemAccess method.
[See MediaKeySystemAccess on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySystemAccess)
*/
@editor.completeFrom(MediaKeySystemAccess)
type mediaKeySystemAccess = WebApiPrelude.Types.mediaKeySystemAccess

/**
This WebApiEncryptedMediaExtensions API interface the represents a set of keys that an associated HTMLMediaElement can use for decryption of media data during playback.
[See MediaKeys on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeys)
*/
@editor.completeFrom(MediaKeys)
type mediaKeys = WebApiPrelude.Types.mediaKeys

/**
This WebApiEncryptedMediaExtensions API interface is a read-only map of media key statuses by key IDs.
[See MediaKeyStatusMap on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeyStatusMap)
*/
@editor.completeFrom(MediaKeyStatusMap)
type mediaKeyStatusMap = WebApiPrelude.Types.mediaKeyStatusMap

/**
This WebApiEncryptedMediaExtensions API interface represents a context for message exchange with a content decryption module (CDM).
[See MediaKeySession on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySession)
*/
@editor.completeFrom(MediaKeySession)
type mediaKeySession = WebApiPrelude.Types.mediaKeySession

type mediaKeySystemMediaCapability = WebApiPrelude.Types.mediaKeySystemMediaCapability

type mediaKeySystemConfiguration = WebApiPrelude.Types.mediaKeySystemConfiguration

type mediaKeysPolicy = {mutable minHdcpVersion?: string}
