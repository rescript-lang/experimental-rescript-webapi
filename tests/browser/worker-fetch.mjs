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
    self.postMessage(await WorkerFetchBinding.text(response));
  } catch (error) {
    self.postMessage({ error: String(error) });
  }
});
