import { createServer } from "node:http";

const server = createServer(async (request, response) => {
  response.setHeader("access-control-allow-origin", "*");
  response.setHeader("access-control-allow-headers", "content-type, x-binding-contracts");
  response.setHeader("access-control-allow-methods", "POST, OPTIONS");
  if (request.method === "OPTIONS") {
    response.writeHead(204).end();
    return;
  }

  const body = [];
  for await (const chunk of request) {
    body.push(chunk);
  }
  response.writeHead(200, { "content-type": "text/plain" });
  response.end(
    `${request.method}|${request.headers["x-binding-contracts"] ?? ""}|${Buffer.concat(body).toString()}`,
  );
});

server.listen(0, "127.0.0.1", () => {
  const address = server.address();
  if (address !== null && typeof address !== "string") {
    process.stdout.write(`${address.port}\n`);
  }
});
