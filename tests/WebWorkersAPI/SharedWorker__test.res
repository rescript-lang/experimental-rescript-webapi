let shared1: WebApiWebWorkers.Types.sharedWorker = WebApiWebWorkers.SharedWorker.make("sharedworker.js")

let shared2: WebApiWebWorkers.Types.sharedWorker = WebApiWebWorkers.SharedWorker.makeWithName(
  "sharedworker.js",
  "name",
)

let shared3: WebApiWebWorkers.Types.sharedWorker = WebApiWebWorkers.SharedWorker.makeWithOptions(
  "sharedworker.js",
  {
    name: "workerName",
    type_: WebApiWebWorkers.Types.Module,
  },
)

let port: WebApiChannelMessaging.Types.messagePort = WebApiWebWorkers.SharedWorker.port(shared1)

external getSelf: unit => WebApiWebWorkers.Types.sharedWorkerGlobalScope = "self"

let self = getSelf()

self->WebApiWebWorkers.SharedWorkerGlobalScope.close
