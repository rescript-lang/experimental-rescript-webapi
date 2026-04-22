let self = WebApi.ServiceWorker.ServiceWorkerGlobalScope.current

self->WebApi.ServiceWorker.ServiceWorkerGlobalScope.addEventListener(WebApi.Event.Types.Push, (
  event: WebApi.Push.PushEvent.t,
) => {
  Console.log("received push event")

  // Extract data
  let (title, body) = switch event.data {
  | Some(data) =>
    switch data->WebApi.Push.PushMessageData.json {
    | JSON.Object(dict{"title": JSON.String(title), "body": JSON.String(body)}) => (title, body)
    | _ => ("???", "???")
    }
  | None => ("???", "???")
  }

  // Handle some data sync
  event->WebApi.Push.PushEvent.waitUntil(
    self->WebApi.ServiceWorker.ServiceWorkerGlobalScope.fetch("https://rescript-lang.org"),
  )

  // Show notification
  self.registration
  ->WebApi.ServiceWorker.ServiceWorkerRegistration.showNotification(
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

self->WebApi.ServiceWorker.ServiceWorkerGlobalScope.addEventListener(
  WebApi.Event.Types.NotificationClick,
  (event: WebApi.Notification.Notification.notificationEvent) => {
    Console.log(`notification clicked: ${event.action}`)
    // Close the notification
    event.notification->WebApi.Notification.Notification.close

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
      ->WebApi.ServiceWorker.Clients.openWindow(`https://mywebsite.com/mydata/${id}`)
      ->Promise.ignore
    })
  },
)
