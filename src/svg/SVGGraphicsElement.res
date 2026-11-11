type t = SVGElement.svgGraphicsElement = private {...SVGElement.svgGraphicsElement}

include SVGElement.Impl({type t = SVGElement.svgGraphicsElement})

external asSVGElement: t => SVGElement.t = "%identity"
external asElement: t => Element.t = "%identity"
external asNode: t => Node.t = "%identity"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGGraphicsElement/getBBox)
*/
@send
external getBBox: (
  SVGElement.svgGraphicsElement,
  ~options: SVGElement.svgBoundingBoxOptions=?,
) => DOM.domRect = "getBBox"

@send
external getCTM: SVGElement.svgGraphicsElement => Null.t<DOM.domMatrix> = "getCTM"

@send
external getScreenCTM: SVGElement.svgGraphicsElement => Null.t<DOM.domMatrix> = "getScreenCTM"
