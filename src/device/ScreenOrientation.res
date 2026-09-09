include EventTarget.Impl({type t = DOM.screenOrientation})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ScreenOrientation/unlock)
*/
@throws(JsExn) @send
external unlock: DOM.screenOrientation => unit = "unlock"
