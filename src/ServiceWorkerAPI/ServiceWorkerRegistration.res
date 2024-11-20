open EventAPI
open ServiceWorkerAPI
open NotificationAPI

include EventTarget.Impl({
  type t = serviceWorkerRegistration
})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerRegistration/update)
*/
@send
external update: serviceWorkerRegistration => Promise.t<unit> = "update"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerRegistration/unregister)
*/
@send
external unregister: serviceWorkerRegistration => Promise.t<bool> = "unregister"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerRegistration/showNotification)
*/
@send
external showNotification: (
  serviceWorkerRegistration,
  ~title: string,
  ~options: notificationOptions=?,
) => Promise.t<unit> = "showNotification"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerRegistration/getNotifications)
*/
@send
external getNotifications: (
  serviceWorkerRegistration,
  ~filter: getNotificationOptions=?,
) => Promise.t<array<notification>> = "getNotifications"
