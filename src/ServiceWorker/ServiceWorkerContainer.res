include EventTarget.Impl({type t = ServiceWorkerTypes.serviceWorkerContainer})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerContainer/register)
*/
@scope("globalThis.navigator.serviceWorker")
external register: (
  string,
  ~options: ServiceWorkerTypes.registrationOptions=?,
) => promise<ServiceWorkerTypes.serviceWorkerRegistration> = "register"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerContainer/getRegistration)
*/
@scope("globalThis.navigator.serviceWorker")
external getRegistration: (
  ~clientURL: string=?,
) => Nullable.t<ServiceWorkerTypes.serviceWorkerRegistration> = "getRegistration"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerContainer/getRegistrations)
*/
@scope("globalThis.navigator.serviceWorker")
external getRegistrations: unit => promise<array<ServiceWorkerTypes.serviceWorkerRegistration>> =
  "getRegistrations"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerContainer/startMessages)
*/
@scope("globalThis.navigator.serviceWorker")
external startMessages: unit => unit = "startMessages"
