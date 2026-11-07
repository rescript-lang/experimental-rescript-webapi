import * as WorkerFetchBinding from "./WorkerFetchBinding.js";

self.addEventListener("message", async () => {
  try {
    const request = new Request(new URL("./worker-fetch-body.txt", self.location.href));
    const response = await WorkerFetchBinding.fetchWithRequest(request);
    self.postMessage(await WorkerFetchBinding.text(response));
  } catch (error) {
    self.postMessage({ error: String(error) });
  }
});
