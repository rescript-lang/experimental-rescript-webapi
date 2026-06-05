type t = DomTypes.htmlEmbedElement = private {...DomTypes.htmlEmbedElement}

include HTMLElement.Impl({type t = t})

@send
external getSVGDocument: t => Document.t = "getSVGDocument"
