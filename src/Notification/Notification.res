type t = Types.notification = private {...Types.notification}
type notificationDirection = Types.notificationDirection
type notificationPermission = Types.notificationPermission
type notificationAction = Types.notificationAction = {...Types.notificationAction}
type notificationOptions = Types.notificationOptions = {...Types.notificationOptions}
type getNotificationOptions = Types.getNotificationOptions = {...Types.getNotificationOptions}
type notificationPermissionCallback = Types.notificationPermissionCallback
type notificationEvent = Types.notificationEvent = {...Types.notificationEvent}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Notification)
*/
@new
external make: (~title: string, ~options: notificationOptions=?) => t = "Notification"

include WebApi.Event.EventTarget.Impl({type t = t})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Notification/requestPermission_static)
*/
@scope("Notification")
external requestPermission: (
  ~deprecatedCallback: notificationPermissionCallback=?,
) => promise<notificationPermission> = "requestPermission"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Notification/close)
*/
@send
external close: t => unit = "close"

/**
[Read more on MDN](https://developer.mozilla.org/en-US/docs/Web/API/Notification/permission_static)
*/
@scope("Notification") @val
external permission: notificationPermission = "permission"

module Types = NotificationTypes
