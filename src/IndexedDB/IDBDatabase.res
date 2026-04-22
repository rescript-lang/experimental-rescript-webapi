include WebApi.Event.EventTarget.Impl({type t = Types.idbDatabase})

/**
Returns a new transaction with the given mode ("readonly" or "readwrite") and scope which can be a single object store name or an array of names.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBDatabase/transaction)
*/
@send
external transaction: (
  Types.idbDatabase,
  ~storeNames: string,
  ~mode: Types.idbTransactionMode=?,
  ~options: Types.idbTransactionOptions=?,
) => Types.idbTransaction = "transaction"

/**
Returns a new transaction with the given mode ("readonly" or "readwrite") and scope which can be a single object store name or an array of names.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBDatabase/transaction)
*/
@send
external transaction2: (
  Types.idbDatabase,
  ~storeNames: array<string>,
  ~mode: Types.idbTransactionMode=?,
  ~options: Types.idbTransactionOptions=?,
) => Types.idbTransaction = "transaction"

/**
Closes the connection once all running transactions have finished.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBDatabase/close)
*/
@send
external close: Types.idbDatabase => unit = "close"

/**
Creates a new object store with the given name and options and returns a new IDBObjectStore.

Throws a "InvalidStateError" DOMException if not called within an upgrade transaction.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBDatabase/createObjectStore)
*/
@send
external createObjectStore: (
  Types.idbDatabase,
  ~name: string,
  ~options: Types.idbObjectStoreParameters=?,
) => Types.idbObjectStore = "createObjectStore"

/**
Deletes the object store with the given name.

Throws a "InvalidStateError" DOMException if not called within an upgrade transaction.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBDatabase/deleteObjectStore)
*/
@send
external deleteObjectStore: (Types.idbDatabase, string) => unit = "deleteObjectStore"
