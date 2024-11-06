@@warning("-30")

open Prelude
open Event

type idbTransactionMode =
  | @as("readonly") Readonly
  | @as("readwrite") Readwrite
  | @as("versionchange") Versionchange

type idbTransactionDurability =
  | @as("default") Default
  | @as("relaxed") Relaxed
  | @as("strict") Strict

type idbRequestReadyState =
  | @as("done") Done
  | @as("pending") Pending

type idbCursorDirection =
  | @as("next") Next
  | @as("nextunique") Nextunique
  | @as("prev") Prev
  | @as("prevunique") Prevunique

/**
In the following code snippet, we make a request to open a database, and include handlers for the success and error cases. For a full working example, see our To-do Notifications app (view example live.)
[See IDBFactory on MDN](https://developer.mozilla.org/docs/Web/API/IDBFactory)
*/
type idbFactory = {}

/**
This IndexedDB API interface provides a connection to a database; you can use an IDBDatabase object to open a transaction on your database then create, manipulate, and delete objects (data) in that database. The interface provides the only way to get and manage versions of the database.
[See IDBDatabase on MDN](https://developer.mozilla.org/docs/Web/API/IDBDatabase)
*/
type idbDatabase = {
  ...eventTarget,
  /**
    Returns the name of the database.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBDatabase/name)
    */
  name: string,
  /**
    Returns the version of the database.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBDatabase/version)
    */
  version: int,
  /**
    Returns a list of the names of object stores in the database.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBDatabase/objectStoreNames)
    */
  objectStoreNames: domStringList,
}

/**
[See IDBTransaction on MDN](https://developer.mozilla.org/docs/Web/API/IDBTransaction)
*/
type idbTransaction = {
  ...eventTarget,
  /**
    Returns a list of the names of object stores in the transaction's scope. For an upgrade transaction this is all object stores in the database.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBTransaction/objectStoreNames)
    */
  objectStoreNames: domStringList,
  /**
    Returns the mode the transaction was created with ("readonly" or "readwrite"), or "versionchange" for an upgrade transaction.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBTransaction/mode)
    */
  mode: idbTransactionMode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBTransaction/durability)
    */
  durability: idbTransactionDurability,
  /**
    Returns the transaction's connection.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBTransaction/db)
    */
  db: idbDatabase,
  /**
    If the transaction was aborted, returns the error (a DOMException) providing the reason.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBTransaction/error)
    */
  error: Null.t<domException>,
}

/**
The request object does not initially contain any information about the result of the operation, but once information becomes available, an event is fired on the request, and the information becomes available through the properties of the IDBRequest instance.
[See IDBRequest on MDN](https://developer.mozilla.org/docs/Web/API/IDBRequest)
*/
type idbRequest<'t> = {
  ...eventTarget,
  /**
    When a request is completed, returns the result, or undefined if the request failed. Throws a "InvalidStateError" DOMException if the request is still pending.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBRequest/result)
    */
  result: 't,
  /**
    When a request is completed, returns the error (a DOMException), or null if the request succeeded. Throws a "InvalidStateError" DOMException if the request is still pending.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBRequest/error)
    */
  error: Null.t<domException>,
  /**
    Returns the IDBObjectStore, IDBIndex, or IDBCursor the request was made against, or null if is was an open request.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBRequest/source)
    */
  source: unknown,
  /**
    Returns the IDBTransaction the request was made within. If this as an open request, then it returns an upgrade transaction while it is running, or null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBRequest/transaction)
    */
  transaction: Null.t<idbTransaction>,
  /**
    Returns "pending" until a request is complete, then returns "done".
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBRequest/readyState)
    */
  readyState: idbRequestReadyState,
}

/**
Also inherits methods from its parents IDBRequest and EventTarget.
[See IDBOpenDBRequest on MDN](https://developer.mozilla.org/docs/Web/API/IDBOpenDBRequest)
*/
type idbOpenDBRequest = {
  ...idbRequest<idbDatabase>,
}

/**
This example shows a variety of different uses of object stores, from updating the data structure with IDBObjectStore.createIndex inside an onupgradeneeded function, to adding a new item to our object store with IDBObjectStore.add. For a full working example, see our To-do Notifications app (view example live.)
[See IDBObjectStore on MDN](https://developer.mozilla.org/docs/Web/API/IDBObjectStore)
*/
type idbObjectStore = {
  /**
    Returns the name of the store.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBObjectStore/name)
    */
  mutable name: string,
  /**
    Returns the key path of the store, or null if none.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBObjectStore/keyPath)
    */
  keyPath: string,
  /**
    Returns a list of the names of indexes in the store.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBObjectStore/indexNames)
    */
  indexNames: domStringList,
  /**
    Returns the associated transaction.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBObjectStore/transaction)
    */
  transaction: idbTransaction,
  /**
    Returns true if the store has a key generator, and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBObjectStore/autoIncrement)
    */
  autoIncrement: bool,
}

/**
IDBIndex interface of the IndexedDB API provides asynchronous access to an index in a database. An index is a kind of object store for looking up records in another object store, called the referenced object store. You use this interface to retrieve data.
[See IDBIndex on MDN](https://developer.mozilla.org/docs/Web/API/IDBIndex)
*/
type idbIndex = {
  /**
    Returns the name of the index.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBIndex/name)
    */
  mutable name: string,
  /**
    Returns the IDBObjectStore the index belongs to.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBIndex/objectStore)
    */
  objectStore: idbObjectStore,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBIndex/keyPath)
    */
  keyPath: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBIndex/multiEntry)
    */
  multiEntry: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBIndex/unique)
    */
  unique: bool,
}

type idbValidKey = any

type idbDatabaseInfo = {
  mutable name: string,
  mutable version: int,
}

type idbTransactionOptions = {mutable durability: idbTransactionDurability}

type idbObjectStoreParameters = {
  mutable keyPath: Null.t<unknown>,
  mutable autoIncrement: bool,
}

type idbIndexParameters = {
  mutable unique: bool,
  mutable multiEntry: bool,
}

module IDBFactory = {
  /**
    Attempts to open a connection to the named database with the current version, or 1 if it does not already exist. If the request is successful request's result will be the connection.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBFactory/open)
    */
  @send
  external open_: (idbFactory, string, int) => idbOpenDBRequest = "open"

  /**
    Attempts to delete the named database. If the database already exists and there are open connections that don't close in response to a versionchange event, the request will be blocked until all they close. If the request is successful request's result will be null.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBFactory/deleteDatabase)
    */
  @send
  external deleteDatabase: (idbFactory, string) => idbOpenDBRequest = "deleteDatabase"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBFactory/databases)
    */
  @send
  external databases: idbFactory => Promise.t<array<idbDatabaseInfo>> = "databases"

  /**
    Compares two values as keys. Returns -1 if key1 precedes key2, 1 if key2 precedes key1, and 0 if the keys are equal.

Throws a "DataError" DOMException if either input is not a valid key.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBFactory/cmp)
    */
  @send
  external cmp: (idbFactory, any, any) => int = "cmp"
}

module IDBDatabase = {
  /**
    Returns a new transaction with the given mode ("readonly" or "readwrite") and scope which can be a single object store name or an array of names.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBDatabase/transaction)
    */
  @send
  external transaction: (
    idbDatabase,
    unknown,
    idbTransactionMode,
    idbTransactionOptions,
  ) => idbTransaction = "transaction"

  /**
    Closes the connection once all running transactions have finished.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBDatabase/close)
    */
  @send
  external close: idbDatabase => unit = "close"

  /**
    Creates a new object store with the given name and options and returns a new IDBObjectStore.

Throws a "InvalidStateError" DOMException if not called within an upgrade transaction.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBDatabase/createObjectStore)
    */
  @send
  external createObjectStore: (idbDatabase, string, idbObjectStoreParameters) => idbObjectStore =
    "createObjectStore"

  /**
    Deletes the object store with the given name.

Throws a "InvalidStateError" DOMException if not called within an upgrade transaction.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBDatabase/deleteObjectStore)
    */
  @send
  external deleteObjectStore: (idbDatabase, string) => unit = "deleteObjectStore"
}

module IDBTransaction = {
  /**
    Returns an IDBObjectStore in the transaction's scope.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBTransaction/objectStore)
    */
  @send
  external objectStore: (idbTransaction, string) => idbObjectStore = "objectStore"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBTransaction/commit)
    */
  @send
  external commit: idbTransaction => unit = "commit"

  /**
    Aborts the transaction. All pending requests will fail with a "AbortError" DOMException and all changes made to the database will be reverted.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBTransaction/abort)
    */
  @send
  external abort: idbTransaction => unit = "abort"
}

module IDBObjectStore = {
  /**
    Adds or updates a record in store with the given value and key.

If the store uses in-line keys and key is specified a "DataError" DOMException will be thrown.

If put() is used, any existing record with the key will be replaced. If add() is used, and if a record with the key already exists the request will fail, with request's error set to a "ConstraintError" DOMException.

If successful, request's result will be the record's key.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBObjectStore/put)
    */
  @send
  external put: (idbObjectStore, any, idbValidKey) => idbRequest<idbValidKey> = "put"

  /**
    Adds or updates a record in store with the given value and key.

If the store uses in-line keys and key is specified a "DataError" DOMException will be thrown.

If put() is used, any existing record with the key will be replaced. If add() is used, and if a record with the key already exists the request will fail, with request's error set to a "ConstraintError" DOMException.

If successful, request's result will be the record's key.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBObjectStore/add)
    */
  @send
  external add: (idbObjectStore, any, idbValidKey) => idbRequest<idbValidKey> = "add"

  /**
    Deletes records in store with the given key or in the given key range in query.

If successful, request's result will be undefined.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBObjectStore/delete)
    */
  @send
  external delete: (idbObjectStore, any) => idbRequest<unit> = "delete"

  /**
    Deletes all records in store.

If successful, request's result will be undefined.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBObjectStore/clear)
    */
  @send
  external clear: idbObjectStore => idbRequest<unit> = "clear"

  /**
    Retrieves the value of the first record matching the given key or key range in query.

If successful, request's result will be the value, or undefined if there was no matching record.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBObjectStore/get)
    */
  @send
  external get: (idbObjectStore, any) => idbRequest<any> = "get"

  /**
    Retrieves the key of the first record matching the given key or key range in query.

If successful, request's result will be the key, or undefined if there was no matching record.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBObjectStore/getKey)
    */
  @send
  external getKey: (idbObjectStore, any) => idbRequest<any> = "getKey"

  /**
    Retrieves the values of the records matching the given key or key range in query (up to count if given).

If successful, request's result will be an Array of the values.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBObjectStore/getAll)
    */
  @send
  external getAll: (idbObjectStore, any, int) => idbRequest<array<any>> = "getAll"

  /**
    Retrieves the keys of records matching the given key or key range in query (up to count if given).

If successful, request's result will be an Array of the keys.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBObjectStore/getAllKeys)
    */
  @send
  external getAllKeys: (idbObjectStore, any, int) => idbRequest<array<idbValidKey>> = "getAllKeys"

  /**
    Retrieves the number of records matching the given key or key range in query.

If successful, request's result will be the count.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBObjectStore/count)
    */
  @send
  external count: (idbObjectStore, any) => idbRequest<int> = "count"

  /**
    Opens a cursor over the records matching query, ordered by direction. If query is null, all records in store are matched.

If successful, request's result will be an IDBCursorWithValue pointing at the first matching record, or null if there were no matching records.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBObjectStore/openCursor)
    */
  @send
  external openCursor: (idbObjectStore, any, idbCursorDirection) => idbRequest<any> = "openCursor"

  /**
    Opens a cursor with key only flag set over the records matching query, ordered by direction. If query is null, all records in store are matched.

If successful, request's result will be an IDBCursor pointing at the first matching record, or null if there were no matching records.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBObjectStore/openKeyCursor)
    */
  @send
  external openKeyCursor: (idbObjectStore, any, idbCursorDirection) => idbRequest<any> =
    "openKeyCursor"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBObjectStore/index)
    */
  @send
  external index: (idbObjectStore, string) => idbIndex = "index"

  /**
    Creates a new index in store with the given name, keyPath and options and returns a new IDBIndex. If the keyPath and options define constraints that cannot be satisfied with the data already in store the upgrade transaction will abort with a "ConstraintError" DOMException.

Throws an "InvalidStateError" DOMException if not called within an upgrade transaction.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBObjectStore/createIndex)
    */
  @send
  external createIndex: (idbObjectStore, string, unknown, idbIndexParameters) => idbIndex =
    "createIndex"

  /**
    Deletes the index in store with the given name.

Throws an "InvalidStateError" DOMException if not called within an upgrade transaction.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBObjectStore/deleteIndex)
    */
  @send
  external deleteIndex: (idbObjectStore, string) => unit = "deleteIndex"
}

module IDBIndex = {
  /**
    Retrieves the value of the first record matching the given key or key range in query.

If successful, request's result will be the value, or undefined if there was no matching record.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBIndex/get)
    */
  @send
  external get: (idbIndex, any) => idbRequest<any> = "get"

  /**
    Retrieves the key of the first record matching the given key or key range in query.

If successful, request's result will be the key, or undefined if there was no matching record.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBIndex/getKey)
    */
  @send
  external getKey: (idbIndex, any) => idbRequest<any> = "getKey"

  /**
    Retrieves the values of the records matching the given key or key range in query (up to count if given).

If successful, request's result will be an Array of the values.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBIndex/getAll)
    */
  @send
  external getAll: (idbIndex, any, int) => idbRequest<array<any>> = "getAll"

  /**
    Retrieves the keys of records matching the given key or key range in query (up to count if given).

If successful, request's result will be an Array of the keys.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBIndex/getAllKeys)
    */
  @send
  external getAllKeys: (idbIndex, any, int) => idbRequest<array<idbValidKey>> = "getAllKeys"

  /**
    Retrieves the number of records matching the given key or key range in query.

If successful, request's result will be the count.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBIndex/count)
    */
  @send
  external count: (idbIndex, any) => idbRequest<int> = "count"

  /**
    Opens a cursor over the records matching query, ordered by direction. If query is null, all records in index are matched.

If successful, request's result will be an IDBCursorWithValue, or null if there were no matching records.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBIndex/openCursor)
    */
  @send
  external openCursor: (idbIndex, any, idbCursorDirection) => idbRequest<any> = "openCursor"

  /**
    Opens a cursor with key only flag set over the records matching query, ordered by direction. If query is null, all records in index are matched.

If successful, request's result will be an IDBCursor, or null if there were no matching records.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBIndex/openKeyCursor)
    */
  @send
  external openKeyCursor: (idbIndex, any, idbCursorDirection) => idbRequest<any> = "openKeyCursor"
}
