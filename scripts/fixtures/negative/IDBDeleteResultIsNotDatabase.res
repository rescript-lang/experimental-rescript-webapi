@scope("globalThis")
external indexedDB: WebAPI.IndexedDbTypes.idbFactory = "indexedDB"

let request = WebAPI.IDBFactory.deleteDatabase(indexedDB, "compile-only")
let _database: string = request.result
