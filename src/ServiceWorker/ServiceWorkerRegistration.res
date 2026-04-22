include Event.EventTarget.Impl({type t = ServiceWorkerTypes.serviceWorkerRegistration})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerRegistration/update)
*/
@send
external update: ServiceWorkerTypes.serviceWorkerRegistration => promise<unit> = "update"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerRegistration/unregister)
*/
@send
external unregister: ServiceWorkerTypes.serviceWorkerRegistration => promise<bool> = "unregister"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerRegistration/showNotification)
*/
@send
external showNotification: (
  ServiceWorkerTypes.serviceWorkerRegistration,
  ~title: string,
  ~options: Notification.Types.notificationOptions=?,
) => promise<unit> = "showNotification"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerRegistration/getNotifications)
*/
@send
external getNotifications: (
  ServiceWorkerTypes.serviceWorkerRegistration,
  ~filter: Notification.Types.getNotificationOptions=?,
) => promise<array<Notification.Types.notification>> = "getNotifications"
