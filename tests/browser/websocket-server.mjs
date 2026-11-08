import { createServer } from "node:http";
import { WebSocketServer } from "ws";

const server = createServer();
const webSocketServer = new WebSocketServer({ server });

webSocketServer.on("connection", (socket) => {
  socket.on("message", (message, isBinary) => {
    socket.send(message, { binary: isBinary });
  });
});

server.listen(0, "127.0.0.1", () => {
  const address = server.address();
  if (address !== null && typeof address !== "string") {
    process.stdout.write(`${address.port}\n`);
  }
});
