type t = DOM.htmliFrameElement = private {...DOM.htmliFrameElement}

include HTMLElement.Impl({type t = t})

@send
external getSVGDocument: t => Document.t = "getSVGDocument"
