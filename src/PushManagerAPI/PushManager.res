open PushManagerAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/PushManager/subscribe)
*/
@send
external subscribe: (
  pushManager,
  ~options: pushSubscriptionOptionsInit=?,
) => Promise.t<pushSubscription> = "subscribe"

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
  ~options: pushSubscriptionOptionsInit=?,
) => Promise.t<permissionState> = "permissionState"
