include Event.EventTarget.Impl({type t = Types.serviceWorkerContainer})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerContainer/register)
*/
@send
external register: (
  Types.serviceWorkerContainer,
  string,
  ~options: Types.registrationOptions=?,
) => promise<Types.serviceWorkerRegistration> = "register"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerContainer/getRegistration)
*/
@send
external getRegistration: (
  Types.serviceWorkerContainer,
  ~clientURL: string=?,
) => Nullable.t<Types.serviceWorkerRegistration> = "getRegistration"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerContainer/getRegistrations)
*/
@send
external getRegistrations: Types.serviceWorkerContainer => promise<
  array<Types.serviceWorkerRegistration>,
> = "getRegistrations"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerContainer/startMessages)
*/
@send
external startMessages: Types.serviceWorkerContainer => unit = "startMessages"
