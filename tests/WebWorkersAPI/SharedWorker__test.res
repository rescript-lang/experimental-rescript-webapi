let shared1: WebApi.WebWorkers.SharedWorker.t = WebApi.WebWorkers.SharedWorker.make("sharedworker.js")

let shared2: WebApi.WebWorkers.SharedWorker.t = WebApi.WebWorkers.SharedWorker.makeWithName(
  "sharedworker.js",
  "name",
)

let shared3: WebApi.WebWorkers.SharedWorker.t = WebApi.WebWorkers.SharedWorker.makeWithOptions(
  "sharedworker.js",
  {
    name: "workerName",
    type_: WebApi.WebWorkers.Types.Module,
  },
)

let port: WebApi.ChannelMessaging.MessagePort.t = WebApi.WebWorkers.SharedWorker.port(shared1)

let self = WebApi.WebWorkers.SharedWorkerGlobalScope.current

self->WebApi.WebWorkers.SharedWorkerGlobalScope.close
