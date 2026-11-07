@scope("globalThis")
external navigator: WebAPI.Navigator.t = "navigator"

let callback: WebAPI.WebLocksTypes.lock => promise<JSON.t> = _lock => %raw(`Promise.resolve(null)`)
let _request = navigator->WebAPI.Navigator.locks->WebAPI.LockManager.request2(
  ~name="compile-only",
  ~options={ifAvailable: true},
  ~callback,
)
