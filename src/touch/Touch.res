type touchType =
  | @as("direct") Direct
  | @as("stylus") Stylus

@editor.completeFrom(Touch)
type t = private {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Touch/identifier)
    */
  identifier: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Touch/target)
    */
  target: DOM.eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Touch/screenX)
    */
  screenX: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Touch/screenY)
    */
  screenY: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Touch/clientX)
    */
  clientX: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Touch/clientY)
    */
  clientY: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Touch/pageX)
    */
  pageX: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Touch/pageY)
    */
  pageY: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Touch/radiusX)
    */
  radiusX: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Touch/radiusY)
    */
  radiusY: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Touch/rotationAngle)
    */
  rotationAngle: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Touch/force)
    */
  force: float,
}

type init = {
  mutable identifier: int,
  mutable target: DOM.eventTarget,
  mutable clientX?: float,
  mutable clientY?: float,
  mutable screenX?: float,
  mutable screenY?: float,
  mutable pageX?: float,
  mutable pageY?: float,
  mutable radiusX?: float,
  mutable radiusY?: float,
  mutable rotationAngle?: float,
  mutable force?: float,
  mutable altitudeAngle?: float,
  mutable azimuthAngle?: float,
  mutable touchType?: touchType,
}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Touch)
*/
@new
external make: init => t = "Touch"
