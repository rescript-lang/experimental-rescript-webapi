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
  const results = await page.evaluate(async (paths) => {
    const { describeError } = await import("/tests/browser/describe-error.mjs");
    const outcomes = [];
    for (const fixture of paths) {
      try {
        await import(`/tests/${fixture.replace(/\.res$/, ".js")}`);
        outcomes.push({ fixture, _tag: "Success" });
      } catch (error) {
        outcomes.push({ fixture, _tag: "Failure", error: describeError(error) });
      }
    }
    return outcomes;
  }, fixtures.browserRuntime);
  expect(fixtures.browserRuntime.length).toBeGreaterThan(0);
  expect(results).toHaveLength(fixtures.browserRuntime.length);
  expect(results.filter((result) => result._tag === "Failure")).toEqual([]);
  expect(errors).toEqual([]);
});

test("browser error details preserve BigInt and cyclic ReScript failures", async ({ page }) => {
  await page.goto("http://127.0.0.1:4173/tests/browser/index.html");
  const failures = await page.evaluate(async () => {
    const { describeError } = await import("/tests/browser/describe-error.mjs");
    const bigIntFailure = describeError({
      RE_EXN_ID: "Review_bigint",
      _1: 1n,
      Error: new Error("original BigInt failure"),
    });
    const cyclicPayload = {
      RE_EXN_ID: "Review_cyclic",
      Error: new Error("original cyclic failure"),
    };
    cyclicPayload._1 = cyclicPayload;
    return {
      bigIntFailure,
      cyclicFailure: describeError(cyclicPayload),
    };
  });

  expect(failures.bigIntFailure.name).toBe("Review_bigint");
  expect(failures.bigIntFailure.message).toBe("original BigInt failure");
  expect(failures.bigIntFailure.stack).toContain("original BigInt failure");
  expect(failures.bigIntFailure.detail).toContain("1n");
  expect(failures.cyclicFailure.name).toBe("Review_cyclic");
  expect(failures.cyclicFailure.message).toBe("original cyclic failure");
  expect(failures.cyclicFailure.stack).toContain("original cyclic failure");
  expect(failures.cyclicFailure.detail).toContain("Exception payload omitted");
});
