open DOM

include HTMLElement.Impl({type t = htmliFrameElement})

@send
external getSVGDocument: htmliFrameElement => document = "getSVGDocument"
