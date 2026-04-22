let _fromURL = WebApiWebSockets.WebSocket.fromURL(~url="wss://example.com/socket")

let _fromURLWithProtocols = WebApiWebSockets.WebSocket.fromURLWithProtocols(
  ~url="wss://example.com/socket",
  ~protocols=["chat", "superchat"],
)
