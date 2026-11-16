type t = DOM.domMatrix = private {...DOM.domMatrix}

@set external setA: (t, float) => unit = "a"
@set external setB: (t, float) => unit = "b"
@set external setC: (t, float) => unit = "c"
@set external setD: (t, float) => unit = "d"
@set external setE: (t, float) => unit = "e"
@set external setF: (t, float) => unit = "f"
@set external setM11: (t, float) => unit = "m11"
@set external setM12: (t, float) => unit = "m12"
@set external setM13: (t, float) => unit = "m13"
@set external setM14: (t, float) => unit = "m14"
@set external setM21: (t, float) => unit = "m21"
@set external setM22: (t, float) => unit = "m22"
@set external setM23: (t, float) => unit = "m23"
@set external setM24: (t, float) => unit = "m24"
@set external setM31: (t, float) => unit = "m31"
@set external setM32: (t, float) => unit = "m32"
@set external setM33: (t, float) => unit = "m33"
@set external setM34: (t, float) => unit = "m34"
@set external setM41: (t, float) => unit = "m41"
@set external setM42: (t, float) => unit = "m42"
@set external setM43: (t, float) => unit = "m43"
@set external setM44: (t, float) => unit = "m44"

/**
`make()`

Creates a new identity `DOMMatrix`.

```res
let matrix = DOMMatrix.make()
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrix)
*/
@new
external make: unit => DOM.domMatrix = "DOMMatrix"

/**
`fromString(string)`

Creates a new `DOMMatrix` from a transform string.

```res
let matrix = DOMMatrix.fromString("matrix(1, 0, 0, 1, 0, 0)")
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrix)
*/
@throws(JsExn) @new
external fromString: string => DOM.domMatrix = "DOMMatrix"

/**
`fromArray(array<float>)`

Creates a new `DOMMatrix` from an array of matrix component values.

```res
let matrix = DOMMatrix.fromArray([1., 0., 0., 1., 0., 0.])
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrix)
*/
@throws(JsExn) @new
external fromArray: array<float> => DOM.domMatrix = "DOMMatrix"

external asDOMMatrixReadOnly: DOM.domMatrix => DOM.domMatrixReadOnly = "%identity"

@scope("DOMMatrix")
external fromMatrix: (~other: DOM.domMatrixInit=?) => DOM.domMatrixReadOnly = "fromMatrix"

@throws(JsExn) @scope("DOMMatrix")
external fromFloat32Array: Float32Array.t => DOM.domMatrixReadOnly = "fromFloat32Array"

@throws(JsExn) @scope("DOMMatrix")
external fromFloat64Array: Float64Array.t => DOM.domMatrixReadOnly = "fromFloat64Array"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly/translate)
*/
@send
external translate: (DOM.domMatrix, ~tx: float=?, ~ty: float=?, ~tz: float=?) => DOM.domMatrix =
  "translate"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly/scale)
*/
@send
external scale: (
  DOM.domMatrix,
  ~scaleX: float=?,
  ~scaleY: float=?,
  ~scaleZ: float=?,
  ~originX: float=?,
  ~originY: float=?,
  ~originZ: float=?,
) => DOM.domMatrix = "scale"

@send
external scale3d: (
  DOM.domMatrix,
  ~scale: float=?,
  ~originX: float=?,
  ~originY: float=?,
  ~originZ: float=?,
) => DOM.domMatrix = "scale3d"

@send
external rotate: (DOM.domMatrix, ~rotX: float=?, ~rotY: float=?, ~rotZ: float=?) => DOM.domMatrix =
  "rotate"

@send
external rotateFromVector: (DOM.domMatrix, ~x: float=?, ~y: float=?) => DOM.domMatrix =
  "rotateFromVector"

@send
external rotateAxisAngle: (
  DOM.domMatrix,
  ~x: float=?,
  ~y: float=?,
  ~z: float=?,
  ~angle: float=?,
) => DOM.domMatrix = "rotateAxisAngle"

@send
external skewX: (DOM.domMatrix, ~sx: float=?) => DOM.domMatrix = "skewX"

@send
external skewY: (DOM.domMatrix, ~sy: float=?) => DOM.domMatrix = "skewY"

@send
external multiply: (DOM.domMatrix, ~other: DOM.domMatrixInit=?) => DOM.domMatrix = "multiply"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly/flipX)
*/
@send
external flipX: DOM.domMatrix => DOM.domMatrix = "flipX"

@send
external flipY: DOM.domMatrix => DOM.domMatrix = "flipY"

@send
external inverse: DOM.domMatrix => DOM.domMatrix = "inverse"

@send
external transformPoint: (DOM.domMatrix, ~point: DOM.domPointInit=?) => DOM.domPoint =
  "transformPoint"

@send
external toFloat32Array: DOM.domMatrix => Float32Array.t = "toFloat32Array"

@send
external toFloat64Array: DOM.domMatrix => Float64Array.t = "toFloat64Array"

@send
external toJSON: DOM.domMatrix => Dict.t<string> = "toJSON"

@scope("DOMMatrix")
external fromMatrixD: (~other: DOM.domMatrixInit=?) => DOM.domMatrix = "fromMatrix"

@throws(JsExn) @scope("DOMMatrix")
external fromFloat32ArrayD: Float32Array.t => DOM.domMatrix = "fromFloat32Array"

@throws(JsExn) @scope("DOMMatrix")
external fromFloat64ArrayD: Float64Array.t => DOM.domMatrix = "fromFloat64Array"

@send
external multiplySelf: (DOM.domMatrix, ~other: DOM.domMatrixInit=?) => DOM.domMatrix =
  "multiplySelf"

@send
external preMultiplySelf: (DOM.domMatrix, ~other: DOM.domMatrixInit=?) => DOM.domMatrix =
  "preMultiplySelf"

@send
external translateSelf: (DOM.domMatrix, ~tx: float=?, ~ty: float=?, ~tz: float=?) => DOM.domMatrix =
  "translateSelf"

@send
external scaleSelf: (
  DOM.domMatrix,
  ~scaleX: float=?,
  ~scaleY: float=?,
  ~scaleZ: float=?,
  ~originX: float=?,
  ~originY: float=?,
  ~originZ: float=?,
) => DOM.domMatrix = "scaleSelf"

@send
external scale3dSelf: (
  DOM.domMatrix,
  ~scale: float=?,
  ~originX: float=?,
  ~originY: float=?,
  ~originZ: float=?,
) => DOM.domMatrix = "scale3dSelf"

@send
external rotateSelf: (
  DOM.domMatrix,
  ~rotX: float=?,
  ~rotY: float=?,
  ~rotZ: float=?,
) => DOM.domMatrix = "rotateSelf"

@send
external rotateFromVectorSelf: (DOM.domMatrix, ~x: float=?, ~y: float=?) => DOM.domMatrix =
  "rotateFromVectorSelf"

@send
external rotateAxisAngleSelf: (
  DOM.domMatrix,
  ~x: float=?,
  ~y: float=?,
  ~z: float=?,
  ~angle: float=?,
) => DOM.domMatrix = "rotateAxisAngleSelf"

@send
external skewXSelf: (DOM.domMatrix, ~sx: float=?) => DOM.domMatrix = "skewXSelf"

@send
external skewYSelf: (DOM.domMatrix, ~sy: float=?) => DOM.domMatrix = "skewYSelf"

@send
external invertSelf: DOM.domMatrix => DOM.domMatrix = "invertSelf"

@throws(JsExn) @send
external setMatrixValue: (DOM.domMatrix, string) => DOM.domMatrix = "setMatrixValue"
