include Element.Impl({type t = Types.svgGraphicsElement})

external asSVGElement: Types.svgGraphicsElement => Types.svgElement = "%identity"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGGraphicsElement/getBBox)
*/
@send
external getBBox: (Types.svgGraphicsElement, ~options: Types.svgBoundingBoxOptions=?) => Types.domRect = "getBBox"

@send
external getCTM: Types.svgGraphicsElement => Types.domMatrix = "getCTM"

@send
external getScreenCTM: Types.svgGraphicsElement => Types.domMatrix = "getScreenCTM"
