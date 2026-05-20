/**
[See DOMMatrix on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrix)
*/
@editor.completeFrom(DOMMatrix)
type t = GeometryTypes.domMatrix

/**
`make()`

Creates a new identity `DOMMatrix`.

```res
let matrix = DOMMatrix.make()
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrix)
*/
@new
external make: unit => t = "DOMMatrix"

/**
`fromString(string)`

Creates a new `DOMMatrix` from a transform string.

```res
let matrix = DOMMatrix.fromString("matrix(1, 0, 0, 1, 0, 0)")
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrix)
*/
@new
external fromString: string => t = "DOMMatrix"

/**
`fromArray(array<float>)`

Creates a new `DOMMatrix` from an array of matrix component values.

```res
let matrix = DOMMatrix.fromArray([1., 0., 0., 1., 0., 0.])
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrix)
*/
@new
external fromArray: array<float> => t = "DOMMatrix"

external asDOMMatrixReadOnly: t => GeometryTypes.domMatrixReadOnly = "%identity"
@scope("DOMMatrix")
external fromMatrix: (~other: GeometryTypes.domMatrixInit=?) => GeometryTypes.domMatrixReadOnly =
  "fromMatrix"

@scope("DOMMatrix")
external fromFloat32Array: array<float> => GeometryTypes.domMatrixReadOnly = "fromFloat32Array"

@scope("DOMMatrix")
external fromFloat64Array: Float64Array.t => GeometryTypes.domMatrixReadOnly = "fromFloat64Array"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly/translate)
*/
@send
external translate: (t, ~tx: float=?, ~ty: float=?, ~tz: float=?) => t = "translate"

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
) => t = "scale"

@send
external scale3d: (
  t,
  ~scale: float=?,
  ~originX: float=?,
  ~originY: float=?,
  ~originZ: float=?,
) => t = "scale3d"

@send
external rotate: (t, ~rotX: float=?, ~rotY: float=?, ~rotZ: float=?) => t = "rotate"

@send
external rotateFromVector: (t, ~x: float=?, ~y: float=?) => t = "rotateFromVector"

@send
external rotateAxisAngle: (t, ~x: float=?, ~y: float=?, ~z: float=?, ~angle: float=?) => t =
  "rotateAxisAngle"

@send
external skewX: (t, ~sx: float=?) => t = "skewX"

@send
external skewY: (t, ~sy: float=?) => t = "skewY"

@send
external multiply: (t, ~other: GeometryTypes.domMatrixInit=?) => t = "multiply"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly/flipX)
*/
@send
external flipX: t => t = "flipX"

@send
external flipY: t => t = "flipY"

@send
external inverse: t => t = "inverse"

@send
external transformPoint: (t, ~point: GeometryTypes.domPointInit=?) => GeometryTypes.domPoint =
  "transformPoint"

@send
external toFloat32Array: t => array<float> = "toFloat32Array"

@send
external toFloat64Array: t => Float64Array.t = "toFloat64Array"

@send
external toJSON: t => Dict.t<string> = "toJSON"

@scope("DOMMatrix")
external fromMatrixD: (~other: GeometryTypes.domMatrixInit=?) => t = "fromMatrix"

@scope("DOMMatrix")
external fromFloat32ArrayD: array<float> => t = "fromFloat32Array"

@scope("DOMMatrix")
external fromFloat64ArrayD: Float64Array.t => t = "fromFloat64Array"

@send
external multiplySelf: (t, ~other: GeometryTypes.domMatrixInit=?) => t = "multiplySelf"

@send
external preMultiplySelf: (t, ~other: GeometryTypes.domMatrixInit=?) => t = "preMultiplySelf"

@send
external translateSelf: (t, ~tx: float=?, ~ty: float=?, ~tz: float=?) => t = "translateSelf"

@send
external scaleSelf: (
  t,
  ~scaleX: float=?,
  ~scaleY: float=?,
  ~scaleZ: float=?,
  ~originX: float=?,
  ~originY: float=?,
  ~originZ: float=?,
) => t = "scaleSelf"

@send
external scale3dSelf: (
  t,
  ~scale: float=?,
  ~originX: float=?,
  ~originY: float=?,
  ~originZ: float=?,
) => t = "scale3dSelf"

@send
external rotateSelf: (t, ~rotX: float=?, ~rotY: float=?, ~rotZ: float=?) => t = "rotateSelf"

@send
external rotateFromVectorSelf: (t, ~x: float=?, ~y: float=?) => t = "rotateFromVectorSelf"

@send
external rotateAxisAngleSelf: (t, ~x: float=?, ~y: float=?, ~z: float=?, ~angle: float=?) => t =
  "rotateAxisAngleSelf"

@send
external skewXSelf: (t, ~sx: float=?) => t = "skewXSelf"

@send
external skewYSelf: (t, ~sy: float=?) => t = "skewYSelf"

@send
external invertSelf: t => t = "invertSelf"

@send
external setMatrixValue: (t, string) => t = "setMatrixValue"
