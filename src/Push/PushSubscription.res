type t = PushTypes.pushSubscription = private {...PushTypes.pushSubscription}
type optionsInit = PushTypes.pushSubscriptionOptionsInit = private {
  ...PushTypes.pushSubscriptionOptionsInit,
}
type json = PushTypes.pushSubscriptionJSON = private {...PushTypes.pushSubscriptionJSON}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/PushSubscription/getKey)
*/
@send
external getKey: (t, PushTypes.pushEncryptionKeyName) => ArrayBuffer.t = "getKey"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/PushSubscription/unsubscribe)
*/
@send
external unsubscribe: t => promise<bool> = "unsubscribe"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/PushSubscription/toJSON)
*/
@send
external toJSON: t => json = "toJSON"
