open ServiceWorkerAPI

type clientQueryOptions = {
  mutable includeUncontrolled?: bool,
  @as("type") mutable type_?: string,
}

/**
Returns a `Promise` for a `Client` matching a given id.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Clients/get)
*/
@send
external get: (clients, string) => promise<Nullable.t<client>> = "get"

/**
Returns a `Promise` for an array of `Client` objects matching the given options.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Clients/matchAll)
*/
@send
external matchAll: (clients, ~options: clientQueryOptions=?) => promise<array<client>> = "matchAll"

/**
Opens a new browser window for a given URL and returns a `Promise` for the new `WindowClient`.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Clients/openWindow)
*/
@send
external openWindow: (clients, string) => promise<windowClient> = "openWindow"

/**
Allows an active service worker to set itself as the controller for all clients within its scope.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Clients/claim)
*/
@send
external claim: clients => promise<unit> = "claim"
