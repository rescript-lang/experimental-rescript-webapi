open ServiceWorkerTypes

type t = ServiceWorkerTypes.serviceWorkerContainer = {...ServiceWorkerTypes.serviceWorkerContainer}

external current: t = "serviceWorker"

include EventTarget.Impl({type t = t})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerContainer/register)
*/
@send
external register: (
  t,
  string,
  ~options: registrationOptions=?,
) => promise<serviceWorkerRegistration> = "register"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerContainer/getRegistration)
*/
@send
external getRegistration: (t, ~clientURL: string=?) => Nullable.t<serviceWorkerRegistration> =
  "getRegistration"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerContainer/getRegistrations)
*/
@send
external getRegistrations: t => promise<array<serviceWorkerRegistration>> = "getRegistrations"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerContainer/startMessages)
*/
@send
external startMessages: t => unit = "startMessages"
