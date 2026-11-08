import * as WorkerFetchBinding from "./WorkerFetchBinding.js";

self.addEventListener("message", async (event) => {
  try {
    const request = new Request(event.data.url);
    const response = await (event.data.withInit
      ? WorkerFetchBinding.fetchWithRequest(request, {
          method: "POST",
          headers: { "X-Binding-Contracts": "forwarded" },
          body: "binding-request-body",
        })
      : WorkerFetchBinding.fetchWithRequestDefault(request));
    self.postMessage({
      id: event.data.id,
      response: await WorkerFetchBinding.text(response),
    });
  } catch (error) {
    self.postMessage({ id: event.data.id, error: String(error) });
  }
});
