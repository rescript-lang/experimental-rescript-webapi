import { readFileSync } from "node:fs";
import { fileURLToPath } from "node:url";
import { expect, test } from "@playwright/test";
import path from "node:path";

const currentDirectory = path.dirname(fileURLToPath(import.meta.url));
const fixtures = JSON.parse(readFileSync(path.join(currentDirectory, "../fixtures.json"), "utf8"));

test("browser runtime fixtures execute in Chromium", async ({ page }) => {
  const errors = [];
  page.on("pageerror", (error) => errors.push(error.message));
  await page.goto("http://127.0.0.1:4173/tests/browser/index.html");
  await page.evaluate(async (paths) => {
    await Promise.all(paths.map((fixture) => import(`/tests/${fixture.replace(/\.res$/, ".js")}`)));
  }, fixtures.browserRuntime);
  expect(fixtures.browserRuntime.length).toBeGreaterThan(0);
  expect(errors).toEqual([]);
});
