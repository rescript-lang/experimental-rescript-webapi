@@warning("-30")

open Event

/**
This Web Storage API interface provides access to a particular domain's session or local storage. It allows, for example, the addition, modification, or deletion of stored data items.
[See Storage on MDN](https://developer.mozilla.org/docs/Web/API/Storage)
*/
type storage = {
  /**
    Returns the number of key/value pairs.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Storage/length)
    */
  length: int,
}

/**
A StorageEvent is sent to a window when a storage area it has access to is changed within the context of another document.
[See StorageEvent on MDN](https://developer.mozilla.org/docs/Web/API/StorageEvent)
*/
type storageEvent = {
  ...event,
  /**
    Returns the key of the storage item being changed.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StorageEvent/key)
    */
  key: Null.t<string>,
  /**
    Returns the old value of the key of the storage item whose value is being changed.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StorageEvent/oldValue)
    */
  oldValue: Null.t<string>,
  /**
    Returns the new value of the key of the storage item whose value is being changed.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StorageEvent/newValue)
    */
  newValue: Null.t<string>,
  /**
    Returns the URL of the document whose storage item changed.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StorageEvent/url)
    */
  url: string,
  /**
    Returns the Storage object that was affected.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StorageEvent/storageArea)
    */
  storageArea: Null.t<storage>,
}

type storageEventInit = {
  ...eventInit,
  mutable key: Null.t<string>,
  mutable oldValue: Null.t<string>,
  mutable newValue: Null.t<string>,
  mutable url: string,
  mutable storageArea: Null.t<storage>,
}

module Storage = {
  /**
    Returns the name of the nth key, or null if n is greater than or equal to the number of key/value pairs.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Storage/key)
    */
  @send
  external key: (storage, int) => string = "key"

  /**
    Returns the current value associated with the given key, or null if the given key does not exist.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Storage/getItem)
    */
  @send
  external getItem: (storage, string) => string = "getItem"

  /**
    Sets the value of the pair identified by key to value, creating a new key/value pair if none existed for key previously.

Throws a "QuotaExceededError" DOMException exception if the new value couldn't be set. (Setting could fail if, e.g., the user has disabled storage for the site, or if the quota has been exceeded.)

Dispatches a storage event on Window objects holding an equivalent Storage object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Storage/setItem)
    */
  @send
  external setItem: (storage, string, string) => unit = "setItem"

  /**
    Removes the key/value pair with the given key, if a key/value pair with the given key exists.

Dispatches a storage event on Window objects holding an equivalent Storage object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Storage/removeItem)
    */
  @send
  external removeItem: (storage, string) => unit = "removeItem"

  /**
    Removes all key/value pairs, if there are any.

Dispatches a storage event on Window objects holding an equivalent Storage object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Storage/clear)
    */
  @send
  external clear: storage => unit = "clear"
}

module StorageEvent = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StorageEvent)
    */
  @new
  external make: (string, storageEventInit) => storageEvent = "StorageEvent"
}
