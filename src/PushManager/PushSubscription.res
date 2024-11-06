@@warning("-44")
@@warning("-33")
open PushManager

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
