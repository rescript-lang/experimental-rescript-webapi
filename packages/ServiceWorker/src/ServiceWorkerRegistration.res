include WebApiEvent.EventTarget.Impl({type t = Types.serviceWorkerRegistration})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerRegistration/update)
*/
@send
external update: Types.serviceWorkerRegistration => promise<unit> = "update"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerRegistration/unregister)
*/
@send
external unregister: Types.serviceWorkerRegistration => promise<bool> = "unregister"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerRegistration/showNotification)
*/
@send
external showNotification: (
  Types.serviceWorkerRegistration,
  ~title: string,
  ~options: WebApiNotification.Types.notificationOptions=?,
) => promise<unit> = "showNotification"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerRegistration/getNotifications)
*/
@send
external getNotifications: (
  Types.serviceWorkerRegistration,
  ~filter: WebApiNotification.Types.getNotificationOptions=?,
) => promise<array<WebApiNotification.Types.notification>> = "getNotifications"
