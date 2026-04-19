/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/PushSubscription/getKey)
*/
@send
external getKey: (Types.pushSubscription, Types.pushEncryptionKeyName) => ArrayBuffer.t = "getKey"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/PushSubscription/unsubscribe)
*/
@send
external unsubscribe: Types.pushSubscription => promise<bool> = "unsubscribe"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/PushSubscription/toJSON)
*/
@send
external toJSON: Types.pushSubscription => Types.pushSubscriptionJSON = "toJSON"
