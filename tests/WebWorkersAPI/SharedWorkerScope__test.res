let self = SharedWorkerScope.current

self->SharedWorkerScope.close

let workerLocation = Worker.current->Worker.location
let workerHref: string = workerLocation.href

let sharedWorkerLocation = self->SharedWorkerScope.location
let sharedWorkerHref: string = sharedWorkerLocation.href
