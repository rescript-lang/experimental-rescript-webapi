let getViewBox = (element: SVGElement.t) => element->SVGElement.getAttribute("viewBox")

let graphicsElementAsElement = (element: SVGElement.svgGraphicsElement): DOMTree.element =>
  element->SVGGraphicsElement.asSVGElement->SVGElement.asElement

let getGraphicsViewBox = (element: SVGElement.svgGraphicsElement) =>
  element->SVGGraphicsElement.getAttribute("viewBox")
