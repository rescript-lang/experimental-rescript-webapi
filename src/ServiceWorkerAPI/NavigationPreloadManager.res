@@warning("-44")
@@warning("-33")
open ServiceWorkerAPI

module NavigationPreloadManager = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NavigationPreloadManager/enable)
    */
  @send
  external enable: navigationPreloadManager => Promise.t<unit> = "enable"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NavigationPreloadManager/disable)
    */
  @send
  external disable: navigationPreloadManager => Promise.t<unit> = "disable"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NavigationPreloadManager/setHeaderValue)
    */
  @send
  external setHeaderValue: (navigationPreloadManager, string) => Promise.t<unit> = "setHeaderValue"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NavigationPreloadManager/getState)
    */
  @send
  external getState: navigationPreloadManager => Promise.t<navigationPreloadState> = "getState"
}
