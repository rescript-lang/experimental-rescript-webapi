/**
Navigates to the given WebApi.URL.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/assign)
*/
@send
external assign: (Types.location, string) => unit = "assign"

/**
Removes the current page from the session history and navigates to the given WebApi.URL.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/replace)
*/
@send
external replace: (Types.location, string) => unit = "replace"

/**
Reloads the current page.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/reload)
*/
@send
external reload: Types.location => unit = "reload"
