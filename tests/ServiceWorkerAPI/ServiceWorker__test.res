external self: ServiceWorker.Types.serviceWorkerGlobalScope = "self"

self->ServiceWorker.ServiceWorkerGlobalScope.addEventListener(Event.Types.Push, (
  event: Push.Types.pushEvent,
) => {
  Console.log("received push event")

  // Extract data
  let (title, body) = switch event.data {
  | Some(data) =>
    switch data->Push.PushMessageData.json {
    | JSON.Object(dict{"title": JSON.String(title), "body": JSON.String(body)}) => (title, body)
    | _ => ("???", "???")
    }
  | None => ("???", "???")
  }

  // Handle some data sync
  event->Push.PushEvent.waitUntil(
    self->ServiceWorker.ServiceWorkerGlobalScope.fetch("https://rescript-lang.org"),
  )

  // Show notification
  self.registration
  ->ServiceWorker.ServiceWorkerRegistration.showNotification(
    ~title,
    ~options={
      body,
      icon: "/icon.png",
      actions: [{action: "open", title: "Open"}, {action: "close", title: "Close"}],
      // For example the id of a new data entry
      data: JSON.Number(17.),
      vibrate: [200, 50, 200, 50, 400],
    },
  )
  ->Promise.ignore
})

self->ServiceWorker.ServiceWorkerGlobalScope.addEventListener(Event.Types.NotificationClick, (
  event: Notification.Types.notificationEvent,
) => {
  Console.log(`notification clicked: ${event.action}`)
  // Close the notification
  event.notification->Notification.Notification.close

  // Open a new window if that is relevant
  event.notification.data
  ->Option.flatMap(data => {
    switch data {
    | JSON.Number(id) => Some(Float.toString(id))
    | _ => None
    }
  })
  ->Option.forEach(id => {
    self.clients
    ->ServiceWorker.Clients.openWindow(`https://mywebsite.com/mydata/${id}`)
    ->Promise.ignore
  })
})
