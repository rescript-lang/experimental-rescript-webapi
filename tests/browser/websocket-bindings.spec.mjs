import { expect, test } from "@playwright/test";
import { spawn } from "node:child_process";
import { once } from "node:events";

const startWebSocketServer = () =>
  new Promise((resolve, reject) => {
    const child = spawn(process.execPath, ["tests/browser/websocket-server.mjs"], {
      stdio: ["ignore", "pipe", "inherit"],
    });
    let output = "";
    child.stdout.setEncoding("utf8");
    child.stdout.on("data", (chunk) => {
      output += chunk;
      const port = Number(output.trim());
      if (Number.isInteger(port) && port > 0) {
        resolve({ child, port });
      }
    });
    child.once("error", reject);
    child.once("exit", (code) => {
      if (output.length === 0) {
        reject(new Error(`WebSocket server exited before startup with code ${code}`));
      }
    });
  });

test("WebSocket binding sends text, ArrayBuffer, and Blob payloads through a native local socket", async ({
  page,
}) => {
  const server = await startWebSocketServer();
  try {
    await page.goto("/tests/browser/index.html");
    const received = await page.evaluate(async (port) => {
      const bindings = await import("/tests/browser/WebSocketBindings.js");
      return new Promise((resolve, reject) => {
        const socket = bindings.connect(`ws://127.0.0.1:${port}/binding-echo`);
        const payloads = [];
        socket.binaryType = "arraybuffer";
        socket.addEventListener("open", () => {
          bindings.sendString(socket, "text");
          bindings.sendArrayBuffer(socket, new Uint8Array([65, 66]).buffer);
          bindings.sendBlob(socket, new Blob(["CD"]));
        });
        socket.addEventListener("message", ({ data }) => {
          payloads.push(
            typeof data === "string" ? data : Array.from(new Uint8Array(data)).join(","),
          );
          if (payloads.length === 3) {
            socket.close();
            resolve(payloads);
          }
        });
        socket.addEventListener("error", () => reject(new Error("WebSocket echo failed")));
      });
    }, server.port);

    expect(received).toEqual(["text", "65,66", "67,68"]);
  } finally {
    server.child.kill();
    await once(server.child, "exit");
  }
});
