@@warning("-33")
open DOMAPI

module ScreenOrientation = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ScreenOrientation/unlock)
    */
  @send
  external unlock: screenOrientation => unit = "unlock"
}
