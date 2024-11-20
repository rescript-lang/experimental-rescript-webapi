open DOMAPI

include HTMLElement.Impl({
  type t = htmliFrameElement
})

@send
external getSVGDocument: htmliFrameElement => document = "getSVGDocument"
