let shared1: WebWorkers.Types.sharedWorker = WebWorkers.SharedWorker.make("sharedworker.js")

let shared2: WebWorkers.Types.sharedWorker = WebWorkers.SharedWorker.makeWithName("sharedworker.js", "name")

let shared3: WebWorkers.Types.sharedWorker = WebWorkers.SharedWorker.makeWithOptions(
  "sharedworker.js",
  {
    name: "workerName",
    type_: WebWorkers.Types.Module,
  },
)

let port: ChannelMessaging.Types.messagePort = WebWorkers.SharedWorker.port(shared1)

external getSelf: unit => WebWorkers.Types.sharedWorkerGlobalScope = "self"

let self = getSelf()

self->WebWorkers.SharedWorkerGlobalScope.close
