@@warning("-30")

open Prelude
open Event
open PushManager
open Notification
open Fetch

type serviceWorkerState =
  | @as("activated") Activated
  | @as("activating") Activating
  | @as("installed") Installed
  | @as("installing") Installing
  | @as("parsed") Parsed
  | @as("redundant") Redundant

type serviceWorkerUpdateViaCache =
  | @as("all") All
  | @as("imports") Imports
  | @as("none") None

type workerType =
  | @as("classic") Classic
  | @as("module") Module

/**
This ServiceWorker API interface provides a reference to a service worker. Multiple browsing contexts (e.g. pages, workers, etc.) can be associated with the same service worker, each through a unique ServiceWorker object.
[See ServiceWorker on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorker)
*/
type serviceWorker = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorker/scriptURL)
    */
  scriptURL: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorker/state)
    */
  state: serviceWorkerState,
}

/**
[See NavigationPreloadManager on MDN](https://developer.mozilla.org/docs/Web/API/NavigationPreloadManager)
*/
type navigationPreloadManager = {}

/**
This ServiceWorker API interface represents the service worker registration. You register a service worker to control one or more pages that share the same origin.
[See ServiceWorkerRegistration on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerRegistration)
*/
type serviceWorkerRegistration = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerRegistration/installing)
    */
  installing: Null.t<serviceWorker>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerRegistration/waiting)
    */
  waiting: Null.t<serviceWorker>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerRegistration/active)
    */
  active: Null.t<serviceWorker>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerRegistration/navigationPreload)
    */
  navigationPreload: navigationPreloadManager,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerRegistration/scope)
    */
  scope: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerRegistration/updateViaCache)
    */
  updateViaCache: serviceWorkerUpdateViaCache,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerRegistration/pushManager)
    */
  pushManager: pushManager,
}

/**
The ServiceWorkerContainer interface of the ServiceWorker API provides an object representing the service worker as an overall unit in the network ecosystem, including facilities to register, unregister and update service workers, and access the state of service workers and their registrations.
[See ServiceWorkerContainer on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerContainer)
*/
type serviceWorkerContainer = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerContainer/controller)
    */
  controller: Null.t<serviceWorker>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerContainer/ready)
    */
  ready: Promise.t<serviceWorkerRegistration>,
}

/**
The storage for Cache objects.
[See CacheStorage on MDN](https://developer.mozilla.org/docs/Web/API/CacheStorage)
*/
type cacheStorage = {}

/**
Provides a storage mechanism for Request / Response object pairs that are cached, for example as part of the ServiceWorker life cycle. Note that the Cache interface is exposed to windowed scopes as well as workers. You don't have to use it in conjunction with service workers, even though it is defined in the service worker spec.
[See Cache on MDN](https://developer.mozilla.org/docs/Web/API/Cache)
*/
type cache = {}

type navigationPreloadState = {
  mutable enabled: bool,
  mutable headerValue: string,
}

type registrationOptions = {
  mutable scope: string,
  @as("type") mutable type_: workerType,
  mutable updateViaCache: serviceWorkerUpdateViaCache,
}

type cacheQueryOptions = {
  mutable ignoreSearch: bool,
  mutable ignoreMethod: bool,
  mutable ignoreVary: bool,
}

type multiCacheQueryOptions = {
  ...cacheQueryOptions,
  mutable cacheName: string,
}

type requestInfo = any
