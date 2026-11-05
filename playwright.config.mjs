import { defineConfig } from "@playwright/test";

export default defineConfig({
  testDir: "./tests/browser",
  testMatch: "**/*.spec.mjs",
  workers: 1,
  reporter: "list",
  use: {
    browserName: "chromium",
  },
  webServer: {
    command: "node tests/browser/server.mjs",
    url: "http://127.0.0.1:4173",
    reuseExistingServer: !process.env.CI,
  },
});
