type t = DomTypes.location

@scope("globalThis")
external current: t = "location"

/**
Navigates to the given URL.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/assign)
*/
@scope("globalThis.location")
external assign: string => unit = "assign"

/**
Removes the current page from the session history and navigates to the given URL.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/replace)
*/
@scope("globalThis.location")
external replace: string => unit = "replace"

/**
Reloads the current page.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/reload)
*/
@scope("globalThis.location")
external reload: unit => unit = "reload"
