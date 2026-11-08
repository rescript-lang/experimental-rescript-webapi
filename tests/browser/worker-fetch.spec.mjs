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
          const responses = {};
          worker.addEventListener("message", (event) => {
            if (event.data.error !== undefined) {
              worker.terminate();
              reject(new Error(event.data.error));
              return;
            }
            responses[event.data.id] = event.data.response;
            if (Object.keys(responses).length === 2) {
              worker.terminate();
              resolve(responses);
            }
          });
          worker.addEventListener(
            "error",
            (event) => {
              worker.terminate();
              reject(new Error(event.message));
            },
            { once: true },
          );
          const url = `http://127.0.0.1:${port}/echo`;
          worker.postMessage({ id: "initialized", url, withInit: true });
          worker.postMessage({ id: "default", url, withInit: false });
        }),
      server.port,
    );

    expect(response).toStrictEqual({
      initialized: "POST|forwarded|binding-request-body",
      default: "GET||",
    });
  } finally {
    server.child.kill();
    await once(server.child, "exit");
  }
});
