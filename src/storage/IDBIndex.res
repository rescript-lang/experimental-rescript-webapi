/**
Retrieves the value of the first record matching the given key or key range in query.

If successful, request's result will be the value, or undefined if there was no matching record.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBIndex/get)
*/
@throws(JsExn) @send
external get: (IndexedDbTypes.idbIndex, unknown) => IndexedDbTypes.idbRequest<option<JSON.t>> =
  "get"

/**
Retrieves the key of the first record matching the given key or key range in query.

If successful, request's result will be the key, or undefined if there was no matching record.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBIndex/getKey)
*/
@throws(JsExn) @send
external getKey: (
  IndexedDbTypes.idbIndex,
  unknown,
) => IndexedDbTypes.idbRequest<option<IndexedDbTypes.idbValidKey>> = "getKey"

/**
Retrieves the values of the records matching the given key or key range in query (up to count if given).

If successful, request's result will be an Array of the values.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBIndex/getAll)
*/
@throws(JsExn) @send
external getAll: (
  IndexedDbTypes.idbIndex,
  ~query: unknown=?,
  ~count: int=?,
) => IndexedDbTypes.idbRequest<array<JSON.t>> = "getAll"

/**
Retrieves the keys of records matching the given key or key range in query (up to count if given).

If successful, request's result will be an Array of the keys.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBIndex/getAllKeys)
*/
@throws(JsExn) @send
external getAllKeys: (
  IndexedDbTypes.idbIndex,
  ~query: unknown=?,
  ~count: int=?,
) => IndexedDbTypes.idbRequest<array<IndexedDbTypes.idbValidKey>> = "getAllKeys"

/**
Retrieves the number of records matching the given key or key range in query.

If successful, request's result will be the count.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBIndex/count)
*/
@throws(JsExn) @send
external count: (IndexedDbTypes.idbIndex, ~query: unknown=?) => IndexedDbTypes.idbRequest<int> =
  "count"

/**
Opens a cursor over the records matching query, ordered by direction. If query is null, all records in index are matched.

If successful, request's result will be an IDBCursorWithValue, or null if there were no matching records.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBIndex/openCursor)
*/
@throws(JsExn) @send
external openCursor: (
  IndexedDbTypes.idbIndex,
  ~query: unknown=?,
  ~direction: IndexedDbTypes.idbCursorDirection=?,
) => IndexedDbTypes.idbRequest<Null.t<unknown>> = "openCursor"

/**
Opens a cursor with key only flag set over the records matching query, ordered by direction. If query is null, all records in index are matched.

If successful, request's result will be an IDBCursor, or null if there were no matching records.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBIndex/openKeyCursor)
*/
@throws(JsExn) @send
external openKeyCursor: (
  IndexedDbTypes.idbIndex,
  ~query: unknown=?,
  ~direction: IndexedDbTypes.idbCursorDirection=?,
) => IndexedDbTypes.idbRequest<Null.t<unknown>> = "openKeyCursor"
