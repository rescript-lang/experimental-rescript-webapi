let shared1: WebApiWebWorkers.SharedWorker.t = WebApiWebWorkers.SharedWorker.make("sharedworker.js")

let shared2: WebApiWebWorkers.SharedWorker.t = WebApiWebWorkers.SharedWorker.makeWithName(
  "sharedworker.js",
  "name",
)

let shared3: WebApiWebWorkers.SharedWorker.t = WebApiWebWorkers.SharedWorker.makeWithOptions(
  "sharedworker.js",
  {
    name: "workerName",
    type_: WebApiWebWorkers.Types.Module,
  },
)

let port: WebApiChannelMessaging.MessagePort.t = WebApiWebWorkers.SharedWorker.port(shared1)

let self = WebApiWebWorkers.SharedWorkerGlobalScope.current

self->WebApiWebWorkers.SharedWorkerGlobalScope.close
