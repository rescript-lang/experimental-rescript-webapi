open WebAPI.WebWorkersTypes

external getSelf: unit => sharedWorkerGlobalScope = "self"

let self = getSelf()

self->SharedWorkerGlobalScope.close
