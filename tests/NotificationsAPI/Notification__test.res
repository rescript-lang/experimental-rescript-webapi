let current: Notification.notificationPermission = Notification.permission

let _notification: Notification.t = Notification.make(~title="Testing notifications")

Notification.requestPermission()
->Promise.thenResolve((notificationPermission: Notification.notificationPermission) => {
  switch notificationPermission {
  | Granted => Console.log("Permission granted")
  | Denied => Console.log("Permission denied")
  | Default => Console.log("Permission default")
  }
})
->Promise.ignore
