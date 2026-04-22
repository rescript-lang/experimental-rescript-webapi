let current = Notification.Notification.permission

Notification.Notification.requestPermission()
->Promise.thenResolve(notificationPermission => {
  switch notificationPermission {
  | Granted => Console.log("Permission granted")
  | Denied => Console.log("Permission denied")
  | Default => Console.log("Permission default")
  }
})
->Promise.ignore
