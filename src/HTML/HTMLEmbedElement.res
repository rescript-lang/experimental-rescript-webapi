type t = DOM.htmlEmbedElement = private {...DOM.htmlEmbedElement}

include HTMLElement.Impl({type t = t})

@send
external getSVGDocument: t => Document.t = "getSVGDocument"
