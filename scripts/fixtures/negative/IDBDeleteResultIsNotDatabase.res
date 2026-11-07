@scope("globalThis")
external indexedDB: WebAPI.IndexedDbTypes.idbFactory = "indexedDB"

let request = WebAPI.IDBFactory.deleteDatabase(indexedDB, "compile-only")
let _close = request.result->WebAPI.IDBDatabase.close
