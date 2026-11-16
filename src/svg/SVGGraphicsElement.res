type t = SVGElement.svgGraphicsElement = private {...SVGElement.svgGraphicsElement}

include SVGElement.Impl({type t = SVGElement.svgGraphicsElement})

external asEventTarget: SVGElement.svgGraphicsElement => DOM.eventTarget = "%identity"
external asNode: SVGElement.svgGraphicsElement => DOMTree.node = "%identity"
external asElement: SVGElement.svgGraphicsElement => DOMTree.element = "%identity"
external asSVGElement: SVGElement.svgGraphicsElement => SVGElement.t = "%identity"

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
