/**
[See DOMMatrixReadOnly on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly)
*/
@editor.completeFrom(DOMMatrixReadOnly)
type t = GeometryTypes.domMatrixReadOnly

/**
`make()`

Creates a new identity `DOMMatrixReadOnly`.

```res
let matrix = DOMMatrixReadOnly.make()
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly)
*/
@new
external make: unit => t = "DOMMatrixReadOnly"

/**
`fromString(string)`

Creates a new `DOMMatrixReadOnly` from a transform string.

```res
let matrix = DOMMatrixReadOnly.fromString("matrix(1, 0, 0, 1, 0, 0)")
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly)
*/
@new
external fromString: string => t = "DOMMatrixReadOnly"

/**
`fromArray(array<float>)`

Creates a new `DOMMatrixReadOnly` from an array of matrix component values.

```res
let matrix = DOMMatrixReadOnly.fromArray([1., 0., 0., 1., 0., 0.])
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly)
*/
@new
external fromArray: array<float> => t = "DOMMatrixReadOnly"

@scope("DOMMatrixReadOnly")
external fromMatrix: (~other: GeometryTypes.domMatrixInit=?) => t = "fromMatrix"

@scope("DOMMatrixReadOnly")
external fromFloat32Array: array<float> => t = "fromFloat32Array"

@scope("DOMMatrixReadOnly")
external fromFloat64Array: Float64Array.t => t = "fromFloat64Array"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly/translate)
*/
@send
external translate: (t, ~tx: float=?, ~ty: float=?, ~tz: float=?) => GeometryTypes.domMatrix =
  "translate"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly/scale)
*/
@send
external scale: (
  t,
  ~scaleX: float=?,
  ~scaleY: float=?,
  ~scaleZ: float=?,
  ~originX: float=?,
  ~originY: float=?,
  ~originZ: float=?,
) => GeometryTypes.domMatrix = "scale"

@send
external scale3d: (
  t,
  ~scale: float=?,
  ~originX: float=?,
  ~originY: float=?,
  ~originZ: float=?,
) => GeometryTypes.domMatrix = "scale3d"

@send
external rotate: (t, ~rotX: float=?, ~rotY: float=?, ~rotZ: float=?) => GeometryTypes.domMatrix =
  "rotate"

@send
external rotateFromVector: (t, ~x: float=?, ~y: float=?) => GeometryTypes.domMatrix =
  "rotateFromVector"

@send
external rotateAxisAngle: (
  t,
  ~x: float=?,
  ~y: float=?,
  ~z: float=?,
  ~angle: float=?,
) => GeometryTypes.domMatrix = "rotateAxisAngle"

@send
external skewX: (t, ~sx: float=?) => GeometryTypes.domMatrix = "skewX"

@send
external skewY: (t, ~sy: float=?) => GeometryTypes.domMatrix = "skewY"

@send
external multiply: (t, ~other: GeometryTypes.domMatrixInit=?) => GeometryTypes.domMatrix =
  "multiply"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly/flipX)
*/
@send
external flipX: t => GeometryTypes.domMatrix = "flipX"

@send
external flipY: t => GeometryTypes.domMatrix = "flipY"

@send
external inverse: t => GeometryTypes.domMatrix = "inverse"

@send
external transformPoint: (t, ~point: GeometryTypes.domPointInit=?) => GeometryTypes.domPoint =
  "transformPoint"

@send
external toFloat32Array: t => array<float> = "toFloat32Array"

@send
external toFloat64Array: t => Float64Array.t = "toFloat64Array"

@send
external toJSON: t => Dict.t<string> = "toJSON"
