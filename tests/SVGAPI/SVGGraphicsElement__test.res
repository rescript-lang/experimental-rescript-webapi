let acceptsSVGElement = (_value: SVGElement.t) => ()

let _ = (value: SVGGraphicsElement.t) => acceptsSVGElement(value)
