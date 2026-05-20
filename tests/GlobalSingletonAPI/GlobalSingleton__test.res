let cryptoRandomUUID: unit => string = Crypto.randomUUID
let cryptoGetRandomValues: array<int> => array<int> = Crypto.getRandomValues
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
