open WebAPI.WebWorkersAPI

let shared1: sharedWorker = SharedWorker.make("sharedworker.js")

let shared2: sharedWorker = SharedWorker.make_withName("sharedworker.js", "name")

let shared3: sharedWorker = SharedWorker.make_withOptions("sharedworker.js", {
  name: "workerName",
  type_: Module
})

let port: WebAPI.ChannelMessagingAPI.messagePort = SharedWorker.port(shared1)

external getSelf: () => sharedWorkerGlobalScope = "self"

let self = getSelf()

self -> SharedWorkerGlobalScope.close
