@@warning("-30")

open FileAPI

/**
[See StorageManager on MDN](https://developer.mozilla.org/docs/Web/API/StorageManager)
*/
type storageManager = {}

type storageEstimate = {
  mutable usage: int,
  mutable quota: int,
}
