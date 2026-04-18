open WebAPI.WebWorkersTypes

let self = SharedWorkerGlobalScope.current

self->SharedWorkerGlobalScope.close
