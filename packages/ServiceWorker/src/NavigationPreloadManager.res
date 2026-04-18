/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/NavigationPreloadManager/enable)
*/
@send
external enable: Types.navigationPreloadManager => promise<unit> = "enable"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/NavigationPreloadManager/disable)
*/
@send
external disable: Types.navigationPreloadManager => promise<unit> = "disable"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/NavigationPreloadManager/setHeaderValue)
*/
@send
external setHeaderValue: (Types.navigationPreloadManager, string) => promise<unit> = "setHeaderValue"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/NavigationPreloadManager/getState)
*/
@send
external getState: Types.navigationPreloadManager => promise<Types.navigationPreloadState> = "getState"
