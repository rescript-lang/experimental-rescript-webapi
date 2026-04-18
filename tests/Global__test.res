let response = await WebApiFetch.Global.fetch("https://rescript-lang.org/")

let response2 = await WebApiFetch.Global.fetch(
  "https://rescript-lang.org/",
  ~init={
    headers: WebApiFetch.HeadersInit.fromDict(
      dict{
        "Content-Type": "application/json",
        "Authorization": "Bearer token",
      },
    ),
    body: WebApiFetch.BodyInit.fromString(`secret=foo&response=bar`),
  },
)

let response3 = await WebApiFetch.Global.fetchWithRequest(
  WebApiFetch.Request.fromURL("https://rescript-lang.org/"),
  ~init={
    method: "POST",
    headers: WebApiFetch.HeadersInit.fromDict(
      dict{
        "Content-Type": "application/x-www-form-urlencoded",
      },
    ),
    body: WebApiFetch.BodyInit.fromString(`secret=foo&response=bar`),
  },
)

WebApiDOM.Global.removeEventListener(
  WebApiEvent.Types.Mousedown,
  WebApiUIEvents.MouseEvent.preventDefault,
  ~options={capture: false},
)

let registrationResult = await WebApiDOM.Window.current
->WebApiDOM.Window.navigator
->WebApiDOM.Navigator.serviceWorker
->WebApiServiceWorker.ServiceWorkerContainer.register("/sw.js")
let subscription = await registrationResult.pushManager->WebApiPush.PushManager.subscribe(
  ~options={
    userVisibleOnly: true,
    applicationServerKey: WebApiPush.ApplicationServerKey.fromString("MyPublicKey"),
  },
)

let pushSubscriptionJSON = subscription->WebApiPush.PushSubscription.toJSON
let (auth, p256dh) = switch pushSubscriptionJSON.keys {
| None => ("?", "?")
| Some(keys) => (keys.auth, keys.p256dh)
}
Console.log(`For subscription ${subscription.endpoint}, auth is ${auth} and p256dh is ${p256dh}`)

let _setIntervalWithCallback = WebApiDOM.Window.setIntervalWithCallback
let _alertWithMessage = WebApiDOM.Window.alertWithMessage
let _postMessageWithOptions = WebApiDOM.Window.postMessageWithOptions
let _scrollXY = WebApiDOM.Window.scrollXY
let _scrollToXY = WebApiDOM.Window.scrollToXY
let _scrollByXY = WebApiDOM.Window.scrollByXY
