let _fromURL = WebSockets.WebSocket.fromURL(~url="wss://example.com/socket")

let _fromURLWithProtocols = WebSockets.WebSocket.fromURLWithProtocols(
  ~url="wss://example.com/socket",
  ~protocols=["chat", "superchat"],
)
