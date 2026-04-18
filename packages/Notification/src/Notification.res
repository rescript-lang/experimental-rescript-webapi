/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Notification)
*/
@new
external make: (~title: string, ~options: Types.notificationOptions=?) => Types.notification = "Notification"

include Event.EventTarget.Impl({type t = Types.notification})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Notification/requestPermission_static)
*/
@scope("Notification")
external requestPermission: (
  ~deprecatedCallback: Types.notificationPermissionCallback=?,
) => promise<Types.notificationPermission> = "requestPermission"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Notification/close)
*/
@send
external close: Types.notification => unit = "close"

/**
[Read more on MDN](https://developer.mozilla.org/en-US/docs/Web/API/Notification/permission_static)
*/
@scope("Notification") @val
external permission: Types.notificationPermission = "permission"
