/**
Starts the process of fetching a resource from the network, returning a promise that is fulfilled once the response is available.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/fetch)
*/
external fetch: (string, ~init: Types.requestInit=?) => promise<Types.response> = "fetch"

/**
Starts the process of fetching a resource from the network, returning a promise that is fulfilled once the response is available.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Window/fetch)
*/
external fetchWithRequest: (Types.request, ~init: Types.requestInit=?) => promise<Types.response> =
  "fetch"
