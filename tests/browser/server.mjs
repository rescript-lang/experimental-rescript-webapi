import { createServer } from "node:http";
import { readFile } from "node:fs/promises";
import path from "node:path";
import { fileURLToPath } from "node:url";

const root = path.resolve(path.dirname(fileURLToPath(import.meta.url)), "../..");
const contentTypes = new Map([
  [".html", "text/html"],
  [".js", "text/javascript"],
  [".mjs", "text/javascript"],
]);

const server = createServer(async (request, response) => {
  const pathname = new URL(request.url ?? "/", "http://localhost").pathname;
  const file = path.resolve(root, `.${decodeURIComponent(pathname)}`);
  if (!file.startsWith(`${root}${path.sep}`)) {
    response.writeHead(403).end();
    return;
  }
  try {
    const content = await readFile(file);
    response.writeHead(200, {
      "content-type": contentTypes.get(path.extname(file)) ?? "application/octet-stream",
    });
    response.end(content);
  } catch {
    response.writeHead(404).end();
  }
});

const port = Number(process.env.WEBAPI_TEST_PORT ?? "4173");
if (!Number.isInteger(port) || port < 1 || port > 65535) {
  throw new Error("WEBAPI_TEST_PORT must be an integer from 1 to 65535.");
}
server.listen(port, "127.0.0.1");
