include SVGElement.Impl({type t = SVGElement.svgGraphicsElement})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGGraphicsElement/getBBox)
*/
@send
external getBBox: (
  SVGElement.svgGraphicsElement,
  ~options: SVGElement.svgBoundingBoxOptions=?,
) => DOM.domRect = "getBBox"

@send
external getCTM: SVGElement.svgGraphicsElement => DOM.domMatrix = "getCTM"

@send
external getScreenCTM: SVGElement.svgGraphicsElement => DOM.domMatrix = "getScreenCTM"
