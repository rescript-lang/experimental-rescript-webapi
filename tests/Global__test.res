let response = await WebApi.Fetch.Global.fetch("https://rescript-lang.org/")

let response2 = await WebApi.Fetch.Global.fetch(
  "https://rescript-lang.org/",
  ~init={
    headers: WebApi.Fetch.HeadersInit.fromDict(
      dict{
        "Content-Type": "application/json",
        "Authorization": "Bearer token",
      },
    ),
    body: WebApi.Fetch.BodyInit.fromString(`secret=foo&response=bar`),
  },
)

let response3 = await WebApi.Fetch.Global.fetchWithRequest(
  WebApi.Fetch.Request.fromURL("https://rescript-lang.org/"),
  ~init={
    method: "POST",
    headers: WebApi.Fetch.HeadersInit.fromDict(
      dict{
        "Content-Type": "application/x-www-form-urlencoded",
      },
    ),
    body: WebApi.Fetch.BodyInit.fromString(`secret=foo&response=bar`),
  },
)

WebApi.DOM.Global.removeEventListener(
  WebApi.Event.Types.Mousedown,
  WebApi.UIEvents.MouseEvent.preventDefault,
  ~options={capture: false},
)

let registrationResult = await WebApi.DOM.Window.current
->WebApi.DOM.Window.navigator
->WebApi.DOM.Navigator.serviceWorker
->WebApi.ServiceWorker.ServiceWorkerContainer.register("/sw.js")
let subscription = await registrationResult.pushManager->WebApi.Push.PushManager.subscribe(
  ~options={
    userVisibleOnly: true,
    applicationServerKey: WebApi.Push.ApplicationServerKey.fromString("MyPublicKey"),
  },
)

let pushSubscriptionJSON = subscription->WebApi.Push.PushSubscription.toJSON
let (auth, p256dh) = switch pushSubscriptionJSON.keys {
| None => ("?", "?")
| Some(keys) => (keys.auth, keys.p256dh)
}
Console.log(`For subscription ${subscription.endpoint}, auth is ${auth} and p256dh is ${p256dh}`)
