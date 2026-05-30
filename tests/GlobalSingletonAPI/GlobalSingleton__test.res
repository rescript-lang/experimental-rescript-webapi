let cryptoRandomUUID: unit => string = Crypto.randomUUID
let cryptoGetRandomValuesFromInt8Array: Int8Array.t => Int8Array.t = Crypto.getRandomValuesFromInt8Array
let cryptoGetRandomValuesFromUint8Array: Uint8Array.t => Uint8Array.t = Crypto.getRandomValuesFromUint8Array
let cryptoGetRandomValuesFromUint8ClampedArray: Uint8ClampedArray.t => Uint8ClampedArray.t = Crypto.getRandomValuesFromUint8ClampedArray
let cryptoGetRandomValuesFromInt16Array: Int16Array.t => Int16Array.t = Crypto.getRandomValuesFromInt16Array
let cryptoGetRandomValuesFromUint16Array: Uint16Array.t => Uint16Array.t = Crypto.getRandomValuesFromUint16Array
let cryptoGetRandomValuesFromInt32Array: Int32Array.t => Int32Array.t = Crypto.getRandomValuesFromInt32Array
let cryptoGetRandomValuesFromUint32Array: Uint32Array.t => Uint32Array.t = Crypto.getRandomValuesFromUint32Array
let cryptoGetRandomValuesFromBigInt64Array: BigInt64Array.t => BigInt64Array.t = Crypto.getRandomValuesFromBigInt64Array
let cryptoGetRandomValuesFromBigUint64Array: BigUint64Array.t => BigUint64Array.t = Crypto.getRandomValuesFromBigUint64Array
let cryptoSubtle: WebCryptoTypes.subtleCrypto = Crypto.subtle

let subtleDigest: (
  ~algorithm: WebCryptoTypes.algorithmIdentifier,
  ~data: ArrayBuffer.t,
) => promise<JSON.t> = SubtleCrypto.digest

let performanceNow: unit => float = Performance.now
let performanceMark: (
  ~markName: string,
  ~markOptions: PerformanceTypes.performanceMarkOptions=?,
) => PerformanceTypes.performanceMark = Performance.mark

let historyBack: unit => unit = History.back
let historyPushState: (~data: JSON.t, ~unused: string, ~url: string=?) => unit = History.pushState

let indexedDbOpen: (
  ~name: string,
  ~version: int=?,
) => IndexedDbTypes.idbOpenDBRequest = IDBFactory.open_
let indexedDbDatabases: unit => promise<
  array<IndexedDbTypes.idbDatabaseInfo>,
> = IDBFactory.databases

let cacheStorageOpen: string => promise<WebWorkersTypes.cache> = CacheStorage.open_
let cacheStorageKeys: unit => promise<array<string>> = CacheStorage.keys

let clipboardReadText: unit => promise<string> = Clipboard.readText
let permissionsQuery: PermissionsTypes.permissionDescriptor => promise<
  PermissionsTypes.permissionStatus,
> = Permissions.query

let mediaDevicesEnumerate: unit => promise<array<MediaDeviceInfo.t>> = MediaDevices.enumerateDevices
let storageEstimate: unit => promise<StorageTypes.storageEstimate> = StorageManager.estimate
let lockQuery: unit => promise<WebLocksTypes.lockManagerSnapshot> = LockManager.query

let serviceWorkerRegister: (
  string,
  ~options: ServiceWorkerTypes.registrationOptions=?,
) => promise<ServiceWorkerTypes.serviceWorkerRegistration> = ServiceWorkerContainer.register

let navigatorUserAgent: string = Navigator.userAgent
let navigatorGetGamepads: unit => array<GamepadTypes.gamepad> = Navigator.getGamepads

let localStorageLength: int = LocalStorage.length
let localStorageGetItem: string => Null.t<string> = LocalStorage.getItem
let sessionStorageLength: int = SessionStorage.length
let sessionStorageGetItem: string => Null.t<string> = SessionStorage.getItem
