/**
All of the SVG WebApiDOM interfaces that correspond directly to elements in the SVG language derive from the SVGElement interface.
[See SVGElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGElement)
*/
type t = DOM.svgGraphicsElement = private {...DOM.svgGraphicsElement}

include Element.Impl({type t = t})
