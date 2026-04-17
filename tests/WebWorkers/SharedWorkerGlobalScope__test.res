open WebAPI.WebWorkers

external getSelf: unit => sharedWorkerGlobalScope = "self"

let self = getSelf()

self->SharedWorkerGlobalScope.close
