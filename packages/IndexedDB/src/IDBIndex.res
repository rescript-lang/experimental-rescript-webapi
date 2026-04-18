/**
Retrieves the value of the first record matching the given key or key range in query.

If successful, request's result will be the value, or undefined if there was no matching record.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBIndex/get)
*/
@send
external get: (Types.idbIndex, unknown) => Types.idbRequest<JSON.t> = "get"

/**
Retrieves the key of the first record matching the given key or key range in query.

If successful, request's result will be the key, or undefined if there was no matching record.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBIndex/getKey)
*/
@send
external getKey: (Types.idbIndex, unknown) => Types.idbRequest<unknown> = "getKey"

/**
Retrieves the values of the records matching the given key or key range in query (up to count if given).

If successful, request's result will be an Array of the values.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBIndex/getAll)
*/
@send
external getAll: (
  Types.idbIndex,
  ~query: unknown=?,
  ~count: int=?,
) => Types.idbRequest<array<JSON.t>> = "getAll"

/**
Retrieves the keys of records matching the given key or key range in query (up to count if given).

If successful, request's result will be an Array of the keys.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBIndex/getAllKeys)
*/
@send
external getAllKeys: (
  Types.idbIndex,
  ~query: unknown=?,
  ~count: int=?,
) => Types.idbRequest<array<Types.idbValidKey>> = "getAllKeys"

/**
Retrieves the number of records matching the given key or key range in query.

If successful, request's result will be the count.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBIndex/count)
*/
@send
external count: (Types.idbIndex, ~query: unknown=?) => Types.idbRequest<int> = "count"

/**
Opens a cursor over the records matching query, ordered by direction. If query is null, all records in index are matched.

If successful, request's result will be an IDBCursorWithValue, or null if there were no matching records.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBIndex/openCursor)
*/
@send
external openCursor: (
  Types.idbIndex,
  ~query: unknown=?,
  ~direction: Types.idbCursorDirection=?,
) => Types.idbRequest<unknown> = "openCursor"

/**
Opens a cursor with key only flag set over the records matching query, ordered by direction. If query is null, all records in index are matched.

If successful, request's result will be an IDBCursor, or null if there were no matching records.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/IDBIndex/openKeyCursor)
*/
@send
external openKeyCursor: (
  Types.idbIndex,
  ~query: unknown=?,
  ~direction: Types.idbCursorDirection=?,
) => Types.idbRequest<unknown> = "openKeyCursor"
