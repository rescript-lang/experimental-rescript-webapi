import { expect, test } from "@playwright/test";

test("WebSocket binding sends text, ArrayBuffer, and Blob payloads through the socket receiver", async ({
  page,
}) => {
  await page.routeWebSocket("ws://127.0.0.1:4173/binding-echo", (echoSocket) => {
    echoSocket.onMessage((message) => echoSocket.send(message));
  });

  await page.goto("http://127.0.0.1:4173/tests/browser/index.html");
  const received = await page.evaluate(async () => {
    const bindings = await import("/tests/browser/WebSocketBindings.js");
    return new Promise((resolve, reject) => {
      const socket = bindings.connect("ws://127.0.0.1:4173/binding-echo");
      const payloads = [];
      socket.binaryType = "arraybuffer";
      socket.addEventListener("open", () => {
        bindings.sendString(socket, "text");
        bindings.sendArrayBuffer(socket, new Uint8Array([65, 66]).buffer);
        bindings.sendBlob(socket, new Blob(["CD"]));
      });
      socket.addEventListener("message", ({ data }) => {
        payloads.push(typeof data === "string" ? data : Array.from(new Uint8Array(data)).join(","));
        if (payloads.length === 3) {
          socket.close();
          resolve(payloads);
        }
      });
      socket.addEventListener("error", () => reject(new Error("WebSocket echo failed")));
    });
  });

  expect(received).toEqual(["text", "65,66", "67,68"]);
});
