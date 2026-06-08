type t = DOMTypes.htmliFrameElement = private {...DOMTypes.htmliFrameElement}

include HTMLElement.Impl({type t = t})

@send
external getSVGDocument: t => Document.t = "getSVGDocument"
