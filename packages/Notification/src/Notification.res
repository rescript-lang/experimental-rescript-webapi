/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiNotification)
*/
@new
external make: (~title: string, ~options: Types.notificationOptions=?) => Types.notification =
  "WebApiNotification"

include WebApiEvent.EventTarget.Impl({type t = Types.notification})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiNotification/requestPermission_static)
*/
@scope("WebApiNotification")
external requestPermission: (
  ~deprecatedCallback: Types.notificationPermissionCallback=?,
) => promise<Types.notificationPermission> = "requestPermission"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiNotification/close)
*/
@send
external close: Types.notification => unit = "close"

/**
[Read more on MDN](https://developer.mozilla.org/en-US/docs/Web/API/WebApiNotification/permission_static)
*/
@scope("WebApiNotification") @val
external permission: Types.notificationPermission = "permission"
