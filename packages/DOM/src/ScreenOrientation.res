include WebApiEvent.EventTarget.Impl({type t = Types.screenOrientation})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ScreenOrientation/unlock)
*/
@send
external unlock: Types.screenOrientation => unit = "unlock"
