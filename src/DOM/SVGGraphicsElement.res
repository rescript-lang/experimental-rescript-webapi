include Element.Impl({type t = SVGElement.svgGraphicsElement})

external asSVGElement: SVGElement.svgGraphicsElement => SVGElement.t = "%identity"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGGraphicsElement/getBBox)
*/
@send
external getBBox: (
  SVGElement.svgGraphicsElement,
  ~options: SVGElement.svgBoundingBoxOptions=?,
) => DomTypes.domRect = "getBBox"

@send
external getCTM: SVGElement.svgGraphicsElement => DomTypes.domMatrix = "getCTM"

@send
external getScreenCTM: SVGElement.svgGraphicsElement => DomTypes.domMatrix = "getScreenCTM"
