type orientationType =
  | @as("landscape-primary") LandscapePrimary
  | @as("landscape-secondary") LandscapeSecondary
  | @as("portrait-primary") PortraitPrimary
  | @as("portrait-secondary") PortraitSecondary

/**
[See ScreenOrientation on MDN](https://developer.mozilla.org/docs/Web/API/ScreenOrientation)
*/
@editor.completeFrom(ScreenOrientation)
type t = private {
  ...EventTypes.eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ScreenOrientation/type)
    */
  @as("type")
  type_: orientationType,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ScreenOrientation/angle)
    */
  angle: int,
}

include EventTarget.Impl({type t = t})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ScreenOrientation/unlock)
*/
@send
external unlock: t => unit = "unlock"
