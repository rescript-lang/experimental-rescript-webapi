/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrix)
*/
@new
external make: (~init: string=?) => Types.domMatrix = "DOMMatrix"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrix)
*/
@new
external make2: (~init: array<float>=?) => Types.domMatrix = "DOMMatrix"

external asDOMMatrixReadOnly: Types.domMatrix => Types.domMatrixReadOnly = "%identity"
@scope("DOMMatrix")
external fromMatrix: (~other: Types.domMatrixInit=?) => Types.domMatrixReadOnly = "fromMatrix"

@scope("DOMMatrix")
external fromFloat32Array: array<float> => Types.domMatrixReadOnly = "fromFloat32Array"

@scope("DOMMatrix")
external fromFloat64Array: Float64Array.t => Types.domMatrixReadOnly = "fromFloat64Array"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly/translate)
*/
@send
external translate: (Types.domMatrix, ~tx: float=?, ~ty: float=?, ~tz: float=?) => Types.domMatrix = "translate"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly/scale)
*/
@send
external scale: (
  Types.domMatrix,
  ~scaleX: float=?,
  ~scaleY: float=?,
  ~scaleZ: float=?,
  ~originX: float=?,
  ~originY: float=?,
  ~originZ: float=?,
) => Types.domMatrix = "scale"

@send
external scale3d: (
  Types.domMatrix,
  ~scale: float=?,
  ~originX: float=?,
  ~originY: float=?,
  ~originZ: float=?,
) => Types.domMatrix = "scale3d"

@send
external rotate: (Types.domMatrix, ~rotX: float=?, ~rotY: float=?, ~rotZ: float=?) => Types.domMatrix = "rotate"

@send
external rotateFromVector: (Types.domMatrix, ~x: float=?, ~y: float=?) => Types.domMatrix = "rotateFromVector"

@send
external rotateAxisAngle: (
  Types.domMatrix,
  ~x: float=?,
  ~y: float=?,
  ~z: float=?,
  ~angle: float=?,
) => Types.domMatrix = "rotateAxisAngle"

@send
external skewX: (Types.domMatrix, ~sx: float=?) => Types.domMatrix = "skewX"

@send
external skewY: (Types.domMatrix, ~sy: float=?) => Types.domMatrix = "skewY"

@send
external multiply: (Types.domMatrix, ~other: Types.domMatrixInit=?) => Types.domMatrix = "multiply"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly/flipX)
*/
@send
external flipX: Types.domMatrix => Types.domMatrix = "flipX"

@send
external flipY: Types.domMatrix => Types.domMatrix = "flipY"

@send
external inverse: Types.domMatrix => Types.domMatrix = "inverse"

@send
external transformPoint: (Types.domMatrix, ~point: Types.domPointInit=?) => Types.domPoint = "transformPoint"

@send
external toFloat32Array: Types.domMatrix => array<float> = "toFloat32Array"

@send
external toFloat64Array: Types.domMatrix => Float64Array.t = "toFloat64Array"

@send
external toJSON: Types.domMatrix => Dict.t<string> = "toJSON"

@scope("DOMMatrix")
external fromMatrixD: (~other: Types.domMatrixInit=?) => Types.domMatrix = "fromMatrix"

@scope("DOMMatrix")
external fromFloat32ArrayD: array<float> => Types.domMatrix = "fromFloat32Array"

@scope("DOMMatrix")
external fromFloat64ArrayD: Float64Array.t => Types.domMatrix = "fromFloat64Array"

@send
external multiplySelf: (Types.domMatrix, ~other: Types.domMatrixInit=?) => Types.domMatrix = "multiplySelf"

@send
external preMultiplySelf: (Types.domMatrix, ~other: Types.domMatrixInit=?) => Types.domMatrix = "preMultiplySelf"

@send
external translateSelf: (Types.domMatrix, ~tx: float=?, ~ty: float=?, ~tz: float=?) => Types.domMatrix =
  "translateSelf"

@send
external scaleSelf: (
  Types.domMatrix,
  ~scaleX: float=?,
  ~scaleY: float=?,
  ~scaleZ: float=?,
  ~originX: float=?,
  ~originY: float=?,
  ~originZ: float=?,
) => Types.domMatrix = "scaleSelf"

@send
external scale3dSelf: (
  Types.domMatrix,
  ~scale: float=?,
  ~originX: float=?,
  ~originY: float=?,
  ~originZ: float=?,
) => Types.domMatrix = "scale3dSelf"

@send
external rotateSelf: (Types.domMatrix, ~rotX: float=?, ~rotY: float=?, ~rotZ: float=?) => Types.domMatrix =
  "rotateSelf"

@send
external rotateFromVectorSelf: (Types.domMatrix, ~x: float=?, ~y: float=?) => Types.domMatrix =
  "rotateFromVectorSelf"

@send
external rotateAxisAngleSelf: (
  Types.domMatrix,
  ~x: float=?,
  ~y: float=?,
  ~z: float=?,
  ~angle: float=?,
) => Types.domMatrix = "rotateAxisAngleSelf"

@send
external skewXSelf: (Types.domMatrix, ~sx: float=?) => Types.domMatrix = "skewXSelf"

@send
external skewYSelf: (Types.domMatrix, ~sy: float=?) => Types.domMatrix = "skewYSelf"

@send
external invertSelf: Types.domMatrix => Types.domMatrix = "invertSelf"

@send
external setMatrixValue: (Types.domMatrix, string) => Types.domMatrix = "setMatrixValue"
