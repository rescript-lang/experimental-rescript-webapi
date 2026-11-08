import { defineConfig } from "@playwright/test";

const testPort = process.env.WEBAPI_TEST_PORT ?? "4173";
if (!/^\d+$/.test(testPort) || Number(testPort) < 1 || Number(testPort) > 65535) {
  throw new Error("WEBAPI_TEST_PORT must be an integer from 1 to 65535.");
}
const testOrigin = `http://127.0.0.1:${testPort}`;

export default defineConfig({
  testDir: "./tests/browser",
  testMatch: "**/*.spec.mjs",
  workers: 1,
  reporter: "list",
  use: {
    browserName: "chromium",
    baseURL: testOrigin,
  },
  webServer: {
    command: "node tests/browser/server.mjs",
    url: `${testOrigin}/tests/browser/index.html`,
    reuseExistingServer: false,
  },
});
