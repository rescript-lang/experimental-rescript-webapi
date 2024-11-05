@@warning("-30")

open Prelude
open Event

type mediaKeysRequirement =
  | @as("not-allowed") NotAllowed
  | @as("optional") Optional
  | @as("required") Required

type mediaKeySessionType =
  | @as("persistent-license") PersistentLicense
  | @as("temporary") Temporary

type mediaKeySessionClosedReason =
  | @as("closed-by-application") ClosedByApplication
  | @as("hardware-context-reset") HardwareContextReset
  | @as("internal-error") InternalError
  | @as("release-acknowledged") ReleaseAcknowledged
  | @as("resource-evicted") ResourceEvicted

type mediaKeyStatus =
  | @as("expired") Expired
  | @as("internal-error") InternalError
  | @as("output-downscaled") OutputDownscaled
  | @as("output-restricted") OutputRestricted
  | @as("released") Released
  | @as("status-pending") StatusPending
  | @as("usable") Usable
  | @as("usable-in-future") UsableInFuture

/**
This EncryptedMediaExtensions API interface provides access to a Key System for decryption and/or a content protection provider. You can request an instance of this object using the Navigator.requestMediaKeySystemAccess method.
[See MediaKeySystemAccess on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySystemAccess)
*/
type mediaKeySystemAccess = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySystemAccess/keySystem)
    */
  keySystem: string,
}

/**
This EncryptedMediaExtensions API interface the represents a set of keys that an associated HTMLMediaElement can use for decryption of media data during playback.
[See MediaKeys on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeys)
*/
type mediaKeys = {}

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
  sessionId: string,
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

type mediaKeySystemMediaCapability = {
  mutable contentType: string,
  mutable encryptionScheme: Null.t<string>,
  mutable robustness: string,
}

type mediaKeySystemConfiguration = {
  mutable label: string,
  mutable initDataTypes: array<string>,
  mutable audioCapabilities: array<mediaKeySystemMediaCapability>,
  mutable videoCapabilities: array<mediaKeySystemMediaCapability>,
  mutable distinctiveIdentifier: mediaKeysRequirement,
  mutable persistentState: mediaKeysRequirement,
  mutable sessionTypes: array<string>,
}

type mediaKeysPolicy = {mutable minHdcpVersion: string}

module MediaKeySystemAccess = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySystemAccess/getConfiguration)
    */
  @send
  external getConfiguration: mediaKeySystemAccess => mediaKeySystemConfiguration =
    "getConfiguration"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySystemAccess/createMediaKeys)
    */
  @send
  external createMediaKeys: mediaKeySystemAccess => Promise.t<mediaKeys> = "createMediaKeys"
}

module MediaKeys = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeys/createSession)
    */
  @send
  external createSession: (mediaKeys, mediaKeySessionType) => mediaKeySession = "createSession"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeys/getStatusForPolicy)
    */
  @send
  external getStatusForPolicy: (mediaKeys, mediaKeysPolicy) => Promise.t<mediaKeyStatus> =
    "getStatusForPolicy"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeys/setServerCertificate)
    */
  @send
  external setServerCertificate: (mediaKeys, bufferSource) => Promise.t<bool> =
    "setServerCertificate"
}

module MediaKeyStatusMap = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeyStatusMap/has)
    */
  @send
  external has: (mediaKeyStatusMap, bufferSource) => bool = "has"
}

module MediaKeySession = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySession/generateRequest)
    */
  @send
  external generateRequest: (mediaKeySession, string, bufferSource) => Promise.t<unit> =
    "generateRequest"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySession/load)
    */
  @send
  external load: (mediaKeySession, string) => Promise.t<bool> = "load"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySession/update)
    */
  @send
  external update: (mediaKeySession, bufferSource) => Promise.t<unit> = "update"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySession/close)
    */
  @send
  external close: mediaKeySession => Promise.t<unit> = "close"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySession/remove)
    */
  @send
  external remove: mediaKeySession => Promise.t<unit> = "remove"
}
