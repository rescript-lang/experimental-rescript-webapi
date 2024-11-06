@@warning("-44")
@@warning("-33")
open ServiceWorkerAPI
open NotificationAPI

module ServiceWorkerRegistration = {
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
    string,
    notificationOptions,
  ) => Promise.t<unit> = "showNotification"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerRegistration/getNotifications)
    */
  @send
  external getNotifications: (
    serviceWorkerRegistration,
    getNotificationOptions,
  ) => Promise.t<array<notification>> = "getNotifications"
}
