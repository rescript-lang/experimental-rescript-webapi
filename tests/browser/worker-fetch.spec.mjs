import { spawn } from "node:child_process";
import { once } from "node:events";
import { expect, test } from "@playwright/test";

const startWorkerHttpServer = () =>
  new Promise((resolve, reject) => {
    const child = spawn(process.execPath, ["tests/browser/worker-http-server.mjs"], {
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
        reject(new Error(`Worker HTTP server exited before startup with code ${code}`));
      }
    });
  });

test("Worker Request fetch forwards its receiver, request, and initializer", async ({ page }) => {
  const server = await startWorkerHttpServer();
  try {
    await page.goto("/tests/browser/index.html");
    const response = await page.evaluate(
      (port) =>
        new Promise((resolve, reject) => {
          const worker = new Worker("/tests/browser/worker-fetch.mjs", { type: "module" });
          worker.addEventListener(
            "message",
            (event) => {
              worker.terminate();
              resolve(event.data);
            },
            { once: true },
          );
          worker.addEventListener(
            "error",
            (event) => {
              worker.terminate();
              reject(new Error(event.message));
            },
            { once: true },
          );
          worker.postMessage(`http://127.0.0.1:${port}/echo`);
        }),
      server.port,
    );

    expect(response).toBe("POST|forwarded|binding-request-body");
  } finally {
    server.child.kill();
    await once(server.child, "exit");
  }
});
