let shared1: WebWorkers.SharedWorker.t = WebWorkers.SharedWorker.make("sharedworker.js")

let shared2: WebWorkers.SharedWorker.t = WebWorkers.SharedWorker.makeWithName(
  "sharedworker.js",
  "name",
)

let shared3: WebWorkers.SharedWorker.t = WebWorkers.SharedWorker.makeWithOptions(
  "sharedworker.js",
  {
    name: "workerName",
    type_: WebWorkers.Types.Module,
  },
)

let port: ChannelMessaging.MessagePort.t = WebWorkers.SharedWorker.port(shared1)

let self = WebWorkers.SharedWorkerGlobalScope.current

self->WebWorkers.SharedWorkerGlobalScope.close
