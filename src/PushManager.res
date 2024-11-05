@@warning("-30")

open Prelude

type permissionState =
  | @as("denied") Denied
  | @as("granted") Granted
  | @as("prompt") Prompt

type pushEncryptionKeyName =
  | @as("auth") Auth
  | @as("p256dh") P256dh

/**
This Push API interface provides a way to receive notifications from third-party servers as well as request URLs for push notifications.
[See PushManager on MDN](https://developer.mozilla.org/docs/Web/API/PushManager)
*/
type pushManager = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PushManager/supportedContentEncodings_static)
    */
  supportedContentEncodings: array<string>,
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
  applicationServerKey: Null.t<ArrayBuffer.t>,
}

/**
This Push API interface provides a subcription's URL endpoint and allows unsubscription from a push service.
[See PushSubscription on MDN](https://developer.mozilla.org/docs/Web/API/PushSubscription)
*/
type pushSubscription = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PushSubscription/endpoint)
    */
  endpoint: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PushSubscription/expirationTime)
    */
  expirationTime: Null.t<int>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PushSubscription/options)
    */
  options: pushSubscriptionOptions,
}

type pushSubscriptionOptionsInit = {
  mutable userVisibleOnly: bool,
  mutable applicationServerKey: Null.t<unknown>,
}

type pushSubscriptionJSON = {
  mutable endpoint: string,
  mutable expirationTime: Null.t<int>,
  mutable keys: any,
}

module PushManager = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PushManager/subscribe)
    */
  @send
  external subscribe: (pushManager, pushSubscriptionOptionsInit) => Promise.t<pushSubscription> =
    "subscribe"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PushManager/getSubscription)
    */
  @send
  external getSubscription: pushManager => Promise.t<pushSubscription> = "getSubscription"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PushManager/permissionState)
    */
  @send
  external permissionState: (
    pushManager,
    pushSubscriptionOptionsInit,
  ) => Promise.t<permissionState> = "permissionState"
}

module PushSubscription = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PushSubscription/getKey)
    */
  @send
  external getKey: (pushSubscription, pushEncryptionKeyName) => ArrayBuffer.t = "getKey"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PushSubscription/unsubscribe)
    */
  @send
  external unsubscribe: pushSubscription => Promise.t<bool> = "unsubscribe"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PushSubscription/toJSON)
    */
  @send
  external toJSON: pushSubscription => pushSubscriptionJSON = "toJSON"
}
