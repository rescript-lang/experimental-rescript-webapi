import { readFileSync } from "node:fs";
import { fileURLToPath } from "node:url";
import { expect, test } from "@playwright/test";
import path from "node:path";

const currentDirectory = path.dirname(fileURLToPath(import.meta.url));
const fixtures = JSON.parse(readFileSync(path.join(currentDirectory, "../fixtures.json"), "utf8"));

test("browser runtime fixtures execute in Chromium", async ({ page }) => {
  const errors = [];
  page.on("pageerror", (error) => errors.push({ message: error.message, stack: error.stack }));
  await page.goto("http://127.0.0.1:4173/tests/browser/index.html");
  const results = await page.evaluate(
    async (paths) =>
      Promise.all(
        paths.map(async (fixture) => {
          try {
            await import(`/tests/${fixture.replace(/\.res$/, ".js")}`);
            return { fixture, _tag: "Success" };
          } catch (error) {
            const detail =
              error instanceof Error
                ? { name: error.name, message: error.message, stack: error.stack }
                : (JSON.stringify(error, (_key, value) =>
                    value instanceof Error
                      ? { name: value.name, message: value.message, stack: value.stack }
                      : value,
                  ) ?? String(error));
            return { fixture, _tag: "Failure", detail };
          }
        }),
      ),
    fixtures.browserRuntime,
  );
  expect(fixtures.browserRuntime.length).toBeGreaterThan(0);
  expect(results).toHaveLength(fixtures.browserRuntime.length);
  expect(results.filter((result) => result._tag === "Failure")).toEqual([]);
  expect(errors).toEqual([]);
});
