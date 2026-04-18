external getSelf: unit => WebApiWebWorkers.Types.sharedWorkerGlobalScope = "self"

let self = getSelf()

self->WebApiWebWorkers.SharedWorkerGlobalScope.close
