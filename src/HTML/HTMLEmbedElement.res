type t = DOMTypes.htmlEmbedElement = private {...DOMTypes.htmlEmbedElement}

include HTMLElement.Impl({type t = t})

@send
external getSVGDocument: t => Document.t = "getSVGDocument"
