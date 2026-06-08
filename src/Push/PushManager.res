type t = PushTypes.pushManager = private {...PushTypes.pushManager}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/PushManager/subscribe)
*/
@send
external subscribe: (
  t,
  ~options: PushTypes.pushSubscriptionOptionsInit=?,
) => promise<PushSubscription.t> = "subscribe"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/PushManager/getSubscription)
*/
@send
external getSubscription: t => promise<PushSubscription.t> =
  "getSubscription"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/PushManager/permissionState)
*/
@send
external permissionState: (
  t,
  ~options: PushTypes.pushSubscriptionOptionsInit=?,
) => promise<PushTypes.permissionState> = "permissionState"
