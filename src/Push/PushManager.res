/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/PushManager/subscribe)
*/
@send
external subscribe: (
  Types.pushManager,
  ~options: Types.pushSubscriptionOptionsInit=?,
) => promise<Types.pushSubscription> = "subscribe"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/PushManager/getSubscription)
*/
@send
external getSubscription: Types.pushManager => promise<Types.pushSubscription> = "getSubscription"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/PushManager/permissionState)
*/
@send
external permissionState: (
  Types.pushManager,
  ~options: Types.pushSubscriptionOptionsInit=?,
) => promise<Types.permissionState> = "permissionState"
