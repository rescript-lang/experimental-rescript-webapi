type domMatrix2DInit = WebApiDOM.Types.domMatrix2DInit

/**
`make()`

The Path2D() constructor creates a new empty Path2D object.

Source shape:
- no source input; this constructor creates a fresh MDN [Path2D](https://developer.mozilla.org/docs/Web/API/Path2D).

```res
let path = Path2D.make()
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Path2D)
*/
@new
external make: unit => Types.path2D = "Path2D"

/**
`fromPath2D(~path: Path2D.t)`

The Path2D() constructor creates a new Path2D object by copying another Path2D source.

Source shape:
- local [`Path2D.t`](#t) mapped to MDN [Path2D](https://developer.mozilla.org/docs/Web/API/Path2D).

```res
let copiedPath = Path2D.fromPath2D(~path=existingPath)
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Path2D)
*/
@new
external fromPath2D: (~path: Types.path2D) => Types.path2D = "Path2D"

/**
`fromString(~path: string)`

The Path2D() constructor creates a new Path2D object from SVG path data text.

Source shape:
- `path`: ReScript [string](https://rescript-lang.org/docs/manual/primitive-types/#string) containing SVG path data accepted by MDN [Path2D()](https://developer.mozilla.org/docs/Web/API/Path2D/Path2D).

```res
let path = Path2D.fromString(~path="M0 0 L10 10")
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Path2D)
*/
@new
external fromString: (~path: string) => Types.path2D = "Path2D"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/closePath)
*/
@send
external closePath: Types.path2D => unit = "closePath"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/moveTo)
*/
@send
external moveTo: (Types.path2D, ~x: float, ~y: float) => unit = "moveTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/lineTo)
*/
@send
external lineTo: (Types.path2D, ~x: float, ~y: float) => unit = "lineTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/quadraticCurveTo)
*/
@send
external quadraticCurveTo: (Types.path2D, ~cpx: float, ~cpy: float, ~x: float, ~y: float) => unit =
  "quadraticCurveTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/bezierCurveTo)
*/
@send
external bezierCurveTo: (
  Types.path2D,
  ~cp1x: float,
  ~cp1y: float,
  ~cp2x: float,
  ~cp2y: float,
  ~x: float,
  ~y: float,
) => unit = "bezierCurveTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/arcTo)
*/
@send
external arcTo: (
  Types.path2D,
  ~x1: float,
  ~y1: float,
  ~x2: float,
  ~y2: float,
  ~radius: float,
) => unit = "arcTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/rect)
*/
@send
external rect: (Types.path2D, ~x: float, ~y: float, ~w: float, ~h: float) => unit = "rect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/roundRect)
*/
@send
external roundRect: (
  Types.path2D,
  ~x: float,
  ~y: float,
  ~w: float,
  ~h: float,
  ~radii_: array<float>=?,
) => unit = "roundRect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/roundRect)
*/
@send
external roundRect2: (
  Types.path2D,
  ~x: float,
  ~y: float,
  ~w: float,
  ~h: float,
  ~radii_: array<float>=?,
) => unit = "roundRect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/roundRect)
*/
@send
external roundRect3: (
  Types.path2D,
  ~x: float,
  ~y: float,
  ~w: float,
  ~h: float,
  ~radii_: array<float>=?,
) => unit = "roundRect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/arc)
*/
@send
external arc: (
  Types.path2D,
  ~x: float,
  ~y: float,
  ~radius: float,
  ~startAngle: float,
  ~endAngle: float,
  ~counterclockwise: bool=?,
) => unit = "arc"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/ellipse)
*/
@send
external ellipse: (
  Types.path2D,
  ~x: float,
  ~y: float,
  ~radiusX: float,
  ~radiusY: float,
  ~rotation: float,
  ~startAngle: float,
  ~endAngle: float,
  ~counterclockwise: bool=?,
) => unit = "ellipse"

/**
Adds to the path the path given by the argument.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Path2D/addPath)
*/
@send
external addPath: (
  Types.path2D,
  ~path: Types.path2D,
  ~transform: domMatrix2DInit=?,
) => unit = "addPath"
