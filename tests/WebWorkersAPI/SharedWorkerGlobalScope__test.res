external getSelf: unit => WebWorkers.Types.sharedWorkerGlobalScope = "self"

let self = getSelf()

self->WebWorkers.SharedWorkerGlobalScope.close
