/**
`make()`

Creates a new identity `DOMMatrixReadOnly`.

```res
let matrix = DOMMatrixReadOnly.make()
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly)
*/
@new
external make: unit => DOM.domMatrixReadOnly = "DOMMatrixReadOnly"

/**
`fromString(string)`

Creates a new `DOMMatrixReadOnly` from a transform string.

```res
let matrix = DOMMatrixReadOnly.fromString("matrix(1, 0, 0, 1, 0, 0)")
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly)
*/
@new
external fromString: string => DOM.domMatrixReadOnly = "DOMMatrixReadOnly"

/**
`fromArray(array<float>)`

Creates a new `DOMMatrixReadOnly` from an array of matrix component values.

```res
let matrix = DOMMatrixReadOnly.fromArray([1., 0., 0., 1., 0., 0.])
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly)
*/
@new
external fromArray: array<float> => DOM.domMatrixReadOnly = "DOMMatrixReadOnly"

@scope("DOMMatrixReadOnly")
external fromMatrix: (~other: DOM.domMatrixInit=?) => DOM.domMatrixReadOnly = "fromMatrix"

@scope("DOMMatrixReadOnly")
external fromFloat32Array: array<float> => DOM.domMatrixReadOnly = "fromFloat32Array"

@scope("DOMMatrixReadOnly")
external fromFloat64Array: Float64Array.t => DOM.domMatrixReadOnly = "fromFloat64Array"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly/translate)
*/
@send
external translate: (
  DOM.domMatrixReadOnly,
  ~tx: float=?,
  ~ty: float=?,
  ~tz: float=?,
) => DOM.domMatrix = "translate"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly/scale)
*/
@send
external scale: (
  DOM.domMatrixReadOnly,
  ~scaleX: float=?,
  ~scaleY: float=?,
  ~scaleZ: float=?,
  ~originX: float=?,
  ~originY: float=?,
  ~originZ: float=?,
) => DOM.domMatrix = "scale"

@send
external scale3d: (
  DOM.domMatrixReadOnly,
  ~scale: float=?,
  ~originX: float=?,
  ~originY: float=?,
  ~originZ: float=?,
) => DOM.domMatrix = "scale3d"

@send
external rotate: (
  DOM.domMatrixReadOnly,
  ~rotX: float=?,
  ~rotY: float=?,
  ~rotZ: float=?,
) => DOM.domMatrix = "rotate"

@send
external rotateFromVector: (DOM.domMatrixReadOnly, ~x: float=?, ~y: float=?) => DOM.domMatrix =
  "rotateFromVector"

@send
external rotateAxisAngle: (
  DOM.domMatrixReadOnly,
  ~x: float=?,
  ~y: float=?,
  ~z: float=?,
  ~angle: float=?,
) => DOM.domMatrix = "rotateAxisAngle"

@send
external skewX: (DOM.domMatrixReadOnly, ~sx: float=?) => DOM.domMatrix = "skewX"

@send
external skewY: (DOM.domMatrixReadOnly, ~sy: float=?) => DOM.domMatrix = "skewY"

@send
external multiply: (DOM.domMatrixReadOnly, ~other: DOM.domMatrixInit=?) => DOM.domMatrix =
  "multiply"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly/flipX)
*/
@send
external flipX: DOM.domMatrixReadOnly => DOM.domMatrix = "flipX"

@send
external flipY: DOM.domMatrixReadOnly => DOM.domMatrix = "flipY"

@send
external inverse: DOM.domMatrixReadOnly => DOM.domMatrix = "inverse"

@send
external transformPoint: (DOM.domMatrixReadOnly, ~point: DOM.domPointInit=?) => DOM.domPoint =
  "transformPoint"

@send
external toFloat32Array: DOM.domMatrixReadOnly => array<float> = "toFloat32Array"

@send
external toFloat64Array: DOM.domMatrixReadOnly => Float64Array.t = "toFloat64Array"

@send
external toJSON: DOM.domMatrixReadOnly => Dict.t<string> = "toJSON"
