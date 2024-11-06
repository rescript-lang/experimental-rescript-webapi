@@warning("-44")
@@warning("-33")
open NotificationAPI

module Notification = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Notification)
    */
  @new
  external make: (string, notificationOptions) => notification = "Notification"
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Notification/requestPermission_static)
    */
  @scope("Notification")
  external requestPermission: notificationPermissionCallback => Promise.t<notificationPermission> =
    "requestPermission"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Notification/close)
    */
  @send
  external close: notification => unit = "close"
}
