type t = DomTypes.htmliFrameElement = private {...DomTypes.htmliFrameElement}

include HTMLElement.Impl({type t = t})

@send
external getSVGDocument: t => Document.t = "getSVGDocument"
