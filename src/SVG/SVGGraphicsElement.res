type t = DomTypes.svgGraphicsElement = private {...DomTypes.svgGraphicsElement}

include Element.Impl({type t = t})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGGraphicsElement/getBBox)
*/
@send
external getBBox: (
  t,
  ~options: DomTypes.svgBoundingBoxOptions=?,
) => DOMRect.t = "getBBox"

@send
external getCTM: t => DomTypes.domMatrix = "getCTM"

@send
external getScreenCTM: t => DomTypes.domMatrix = "getScreenCTM"
