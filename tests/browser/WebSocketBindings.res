let connect = url => WebSocket.fromURL(~url)
let sendArrayBuffer = (socket, payload: ArrayBuffer.t) => WebSocket.sendArrayBuffer(socket, payload)
let sendBlob = (socket, payload: Blob.t) => WebSocket.sendBlob(socket, payload)
let sendString = (socket, payload: string) => WebSocket.sendString(socket, payload)
