@editor.completeFrom(SharedWorker) type sharedWorker

/**
The WorkerGlobalScope interface of the Web Workers API is an interface representing the scope of any worker.
Workers have no browsing context; this scope contains the information usually conveyed by Window objects —
in this case event handlers, the console or the associated WorkerNavigator object.
Each WorkerGlobalScope has its own event loop.
[See WorkerGlobalScope on MDN](https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope)
*/
@editor.completeFrom(WorkerGlobalScope)
type workerGlobalScope = private {
  ...DOM.eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope/caches)
    */
  caches: CacheTypes.cacheStorage,
  /**
    [Read more on MDN](https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope/crossOriginIsolated)
    */
  crossOriginIsolated: bool,
}

type workerType =
  | @as("classic") Classic
  | @as("module") Module

/** An object containing option properties that can set when creating the
object instance. */
type workerOptions = {
  @as("type") mutable type_?: workerType,
  mutable credentials?: FetchTypes.requestCredentials,
  mutable name?: string,
}

/**
The `SharedWorkerGlobalScope` object (the `SharedWorker` global scope) is
accessible through the self keyword. Some additional global functions,
namespaces objects, and constructors, not typically associated with the worker
global scope, but available on it, are listed in the JavaScript Reference. See
the complete list of functions available to workers.
*/
@editor.completeFrom(SharedWorkerScope)
type sharedWorkerGlobalScope = private {
  ...workerGlobalScope,
  name: string,
}
