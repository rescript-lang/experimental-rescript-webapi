@@warning("-30")

open Prelude

type lockMode =
  | @as("exclusive") Exclusive
  | @as("shared") Shared

/**
[See LockManager on MDN](https://developer.mozilla.org/docs/Web/API/LockManager)
*/
type lockManager = {}

/**
[See Lock on MDN](https://developer.mozilla.org/docs/Web/API/Lock)
*/
type lock = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Lock/name)
    */
  name: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Lock/mode)
    */
  mode: lockMode,
}

type lockInfo = {
  mutable name?: string,
  mutable mode?: lockMode,
  mutable clientId?: string,
}

type lockManagerSnapshot = {
  mutable held?: array<lockInfo>,
  mutable pending?: array<lockInfo>,
}

type lockGrantedCallback = lock => Promise.t<any>
