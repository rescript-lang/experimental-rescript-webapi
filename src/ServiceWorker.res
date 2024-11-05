@@warning("-30")

open Prelude
open Event
open PushManager
open Notification

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

type navigationPreloadState = {
  mutable enabled: bool,
  mutable headerValue: string,
}

type registrationOptions = {
  mutable scope: string,
  @as("type") mutable type_: workerType,
  mutable updateViaCache: serviceWorkerUpdateViaCache,
}

module ServiceWorker = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorker/postMessage)
    */
  @send
  external postMessage: (serviceWorker, any, array<Dict.t<string>>) => unit = "postMessage"
}

module NavigationPreloadManager = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NavigationPreloadManager/enable)
    */
  @send
  external enable: navigationPreloadManager => Promise.t<unit> = "enable"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NavigationPreloadManager/disable)
    */
  @send
  external disable: navigationPreloadManager => Promise.t<unit> = "disable"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NavigationPreloadManager/setHeaderValue)
    */
  @send
  external setHeaderValue: (navigationPreloadManager, string) => Promise.t<unit> = "setHeaderValue"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NavigationPreloadManager/getState)
    */
  @send
  external getState: navigationPreloadManager => Promise.t<navigationPreloadState> = "getState"
}

module ServiceWorkerRegistration = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerRegistration/update)
    */
  @send
  external update: serviceWorkerRegistration => Promise.t<unit> = "update"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerRegistration/unregister)
    */
  @send
  external unregister: serviceWorkerRegistration => Promise.t<bool> = "unregister"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerRegistration/showNotification)
    */
  @send
  external showNotification: (
    serviceWorkerRegistration,
    string,
    notificationOptions,
  ) => Promise.t<unit> = "showNotification"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerRegistration/getNotifications)
    */
  @send
  external getNotifications: (
    serviceWorkerRegistration,
    getNotificationOptions,
  ) => Promise.t<array<notification>> = "getNotifications"
}

module ServiceWorkerContainer = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerContainer/register)
    */
  @send
  external register: (
    serviceWorkerContainer,
    string,
    registrationOptions,
  ) => Promise.t<serviceWorkerRegistration> = "register"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerContainer/getRegistration)
    */
  @send
  external getRegistration: (
    serviceWorkerContainer,
    string,
  ) => Nullable.t<serviceWorkerRegistration> = "getRegistration"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerContainer/getRegistrations)
    */
  @send
  external getRegistrations: serviceWorkerContainer => Promise.t<array<serviceWorkerRegistration>> =
    "getRegistrations"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerContainer/startMessages)
    */
  @send
  external startMessages: serviceWorkerContainer => unit = "startMessages"
}
