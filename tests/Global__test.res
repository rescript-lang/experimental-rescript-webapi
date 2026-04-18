let response = await Fetch.Global.fetch("https://rescript-lang.org/")

let response2 = await Fetch.Global.fetch(
  "https://rescript-lang.org/",
  ~init={
    headers: Fetch.HeadersInit.fromDict(
      dict{
        "Content-Type": "application/json",
        "Authorization": "Bearer token",
      },
    ),
    body: Fetch.BodyInit.fromString(`secret=foo&response=bar`),
  },
)

let response3 = await Fetch.Global.fetchWithRequest(
  Fetch.Request.fromURL("https://rescript-lang.org/"),
  ~init={
    method: "POST",
    headers: Fetch.HeadersInit.fromDict(
      dict{
        "Content-Type": "application/x-www-form-urlencoded",
      },
    ),
    body: Fetch.BodyInit.fromString(`secret=foo&response=bar`),
  },
)

DOM.Global.removeEventListener(
  Event.Types.Mousedown,
  UIEvents.MouseEvent.preventDefault,
  ~options={capture: false},
)

let registrationResult = await DOM.Global.navigator
->DOM.Navigator.serviceWorker
->ServiceWorker.ServiceWorkerContainer.register("/sw.js")
let subscription = await registrationResult.pushManager->Push.PushManager.subscribe(
  ~options={
    userVisibleOnly: true,
    applicationServerKey: Push.ApplicationServerKey.fromString("MyPublicKey"),
  },
)

let pushSubscriptionJSON = subscription->Push.PushSubscription.toJSON
let (auth, p256dh) = switch pushSubscriptionJSON.keys {
| None => ("?", "?")
| Some(keys) => (keys.auth, keys.p256dh)
}
Console.log(`For subscription ${subscription.endpoint}, auth is ${auth} and p256dh is ${p256dh}`)
