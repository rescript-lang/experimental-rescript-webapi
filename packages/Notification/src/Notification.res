type t = Types.notification = private {...Types.notification}
type notificationDirection = Types.notificationDirection
type notificationPermission = Types.notificationPermission
type notificationAction = Types.notificationAction = {...Types.notificationAction}
type notificationOptions = Types.notificationOptions = {...Types.notificationOptions}
type getNotificationOptions = Types.getNotificationOptions = {...Types.getNotificationOptions}
type notificationPermissionCallback = Types.notificationPermissionCallback
type notificationEvent = Types.notificationEvent = {...Types.notificationEvent}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiNotification)
*/
@new
external make: (~title: string, ~options: notificationOptions=?) => t = "WebApiNotification"

include WebApiEvent.EventTarget.Impl({type t = t})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiNotification/requestPermission_static)
*/
@scope("WebApiNotification")
external requestPermission: (
  ~deprecatedCallback: notificationPermissionCallback=?,
) => promise<notificationPermission> = "requestPermission"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiNotification/close)
*/
@send
external close: t => unit = "close"

/**
[Read more on MDN](https://developer.mozilla.org/en-US/docs/Web/API/WebApiNotification/permission_static)
*/
@scope("WebApiNotification") @val
external permission: notificationPermission = "permission"
