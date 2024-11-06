@@warning("-33")
open ServiceWorkerAPI

module ServiceWorkerContainer = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerContainer/register)
    */
  @send
  external register: (
    serviceWorkerContainer,
    string,
    registrationOptions,
  ) => Promise.t<serviceWorkerRegistration> = "register"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerContainer/getRegistration)
    */
  @send
  external getRegistration: (
    serviceWorkerContainer,
    string,
  ) => Nullable.t<serviceWorkerRegistration> = "getRegistration"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerContainer/getRegistrations)
    */
  @send
  external getRegistrations: serviceWorkerContainer => Promise.t<array<serviceWorkerRegistration>> =
    "getRegistrations"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerContainer/startMessages)
    */
  @send
  external startMessages: serviceWorkerContainer => unit = "startMessages"
}
