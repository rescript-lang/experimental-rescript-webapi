type t = DOMTypes.svgGraphicsElement = private {...DOMTypes.svgGraphicsElement}

include Element.Impl({type t = t})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGGraphicsElement/getBBox)
*/
@send
external getBBox: (t, ~options: DOMTypes.svgBoundingBoxOptions=?) => DOMRect.t = "getBBox"

@send
external getCTM: t => DOMMatrix.t = "getCTM"

@send
external getScreenCTM: t => DOMMatrix.t = "getScreenCTM"
