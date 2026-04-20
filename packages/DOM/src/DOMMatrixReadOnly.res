/**
`make()`

The DOMMatrixReadOnly() constructor creates a new identity DOMMatrixReadOnly value.

Source shape:
- no source input; this constructor creates a fresh MDN [DOMMatrixReadOnly](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly).

```res
let matrix = DOMMatrixReadOnly.make()
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly)
*/
@new
external make: unit => Types.domMatrixReadOnly = "DOMMatrixReadOnly"

/**
`fromString(string)`

The DOMMatrixReadOnly() constructor creates a new DOMMatrixReadOnly value from a transform string.

Source shape:
- ReScript [string](https://rescript-lang.org/docs/manual/primitive-types/#string) accepted by MDN [DOMMatrixReadOnly()](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly/DOMMatrixReadOnly).

```res
let matrix = DOMMatrixReadOnly.fromString("matrix(1, 0, 0, 1, 0, 0)")
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly)
*/
@new
external fromString: string => Types.domMatrixReadOnly = "DOMMatrixReadOnly"

/**
`fromArray(array<float>)`

The DOMMatrixReadOnly() constructor creates a new DOMMatrixReadOnly value from an array of matrix component values.

Source shape:
- ReScript [array](https://rescript-lang.org/docs/manual/api/stdlib/array) of numeric values accepted by MDN [DOMMatrixReadOnly()](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly/DOMMatrixReadOnly).

```res
let matrix = DOMMatrixReadOnly.fromArray([1., 0., 0., 1., 0., 0.])
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly)
*/
@new
external fromArray: array<float> => Types.domMatrixReadOnly = "DOMMatrixReadOnly"

@scope("DOMMatrixReadOnly")
external fromMatrix: (~other: Types.domMatrixInit=?) => Types.domMatrixReadOnly = "fromMatrix"

@scope("DOMMatrixReadOnly")
external fromFloat32Array: array<float> => Types.domMatrixReadOnly = "fromFloat32Array"

@scope("DOMMatrixReadOnly")
external fromFloat64Array: Float64Array.t => Types.domMatrixReadOnly = "fromFloat64Array"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly/translate)
*/
@send
external translate: (
  Types.domMatrixReadOnly,
  ~tx: float=?,
  ~ty: float=?,
  ~tz: float=?,
) => Types.domMatrix = "translate"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly/scale)
*/
@send
external scale: (
  Types.domMatrixReadOnly,
  ~scaleX: float=?,
  ~scaleY: float=?,
  ~scaleZ: float=?,
  ~originX: float=?,
  ~originY: float=?,
  ~originZ: float=?,
) => Types.domMatrix = "scale"

@send
external scale3d: (
  Types.domMatrixReadOnly,
  ~scale: float=?,
  ~originX: float=?,
  ~originY: float=?,
  ~originZ: float=?,
) => Types.domMatrix = "scale3d"

@send
external rotate: (
  Types.domMatrixReadOnly,
  ~rotX: float=?,
  ~rotY: float=?,
  ~rotZ: float=?,
) => Types.domMatrix = "rotate"

@send
external rotateFromVector: (Types.domMatrixReadOnly, ~x: float=?, ~y: float=?) => Types.domMatrix =
  "rotateFromVector"

@send
external rotateAxisAngle: (
  Types.domMatrixReadOnly,
  ~x: float=?,
  ~y: float=?,
  ~z: float=?,
  ~angle: float=?,
) => Types.domMatrix = "rotateAxisAngle"

@send
external skewX: (Types.domMatrixReadOnly, ~sx: float=?) => Types.domMatrix = "skewX"

@send
external skewY: (Types.domMatrixReadOnly, ~sy: float=?) => Types.domMatrix = "skewY"

@send
external multiply: (Types.domMatrixReadOnly, ~other: Types.domMatrixInit=?) => Types.domMatrix =
  "multiply"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly/flipX)
*/
@send
external flipX: Types.domMatrixReadOnly => Types.domMatrix = "flipX"

@send
external flipY: Types.domMatrixReadOnly => Types.domMatrix = "flipY"

@send
external inverse: Types.domMatrixReadOnly => Types.domMatrix = "inverse"

@send
external transformPoint: (Types.domMatrixReadOnly, ~point: Types.domPointInit=?) => Types.domPoint =
  "transformPoint"

@send
external toFloat32Array: Types.domMatrixReadOnly => array<float> = "toFloat32Array"

@send
external toFloat64Array: Types.domMatrixReadOnly => Float64Array.t = "toFloat64Array"

@send
external toJSON: Types.domMatrixReadOnly => Dict.t<string> = "toJSON"
