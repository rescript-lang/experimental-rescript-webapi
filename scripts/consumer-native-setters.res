let requestInit: WebAPI.Request.requestInit = {method: "POST"}
let responseInit: WebAPI.Response.responseInit = {status: 201}
let request = WebAPI.Request.fromURL("https://example.invalid", ~init=requestInit)
let response = WebAPI.Response.fromString("ok", ~init=responseInit)
let responseStatus = response.status

module NodeBindings = WebAPI.Node.Impl({type t = WebAPI.Node.t})
let setNodeText = (node: WebAPI.Node.t) => {
  node->NodeBindings.setTextContent(Null.Value("updated"))
  node.textContent
}

module ElementBindings = WebAPI.Element.Impl({type t = WebAPI.Element.t})
let setElementScroll = (element: WebAPI.Element.t) => {
  element->ElementBindings.setScrollTop(12.)
  element.scrollTop
}

let setCanvasSize = (canvas: WebAPI.HTMLCanvasElement.t) => {
  canvas->WebAPI.HTMLCanvasElement.setWidth(640)
  canvas->WebAPI.HTMLCanvasElement.setHeight(480)
  (canvas.width, canvas.height)
}

let setTokenListValue = (tokens: WebAPI.DOMTokenList.t) =>
  {
    tokens->WebAPI.DOMTokenList.setValue("active")
    tokens.value
  }

let setCssDeclaration = (style: WebAPI.CSSStyleDeclaration.t) => {
  style->WebAPI.CSSStyleDeclaration.setProperty(~property="background-color", ~value="red")
  let backgroundColor = style.backgroundColor
  style->WebAPI.CSSStyleDeclaration.setCssText("background-color: blue")
  backgroundColor
}

let setSocketBinaryType = (socket: WebAPI.WebSocket.t) =>
  socket->WebAPI.WebSocket.setBinaryType(socket.binaryType)

let setIndexedDBNames = (
  store: WebAPI.IDBObjectStore.t,
  index: WebAPI.IDBIndex.t,
) => {
  store->WebAPI.IDBObjectStore.setName("records")
  index->WebAPI.IDBIndex.setName("by-name")
}

let asBaseElement = (canvas: WebAPI.HTMLCanvasElement.t) =>
  WebAPI.HTMLCanvasElement.asElement(canvas)

let _ = (request, responseStatus, setNodeText, setElementScroll, setCanvasSize, setTokenListValue,
  setCssDeclaration, setSocketBinaryType, setIndexedDBNames, asBaseElement)
