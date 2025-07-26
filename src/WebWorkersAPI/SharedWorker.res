open ChannelMessagingAPI
open WebWorkersAPI

include EventTarget.Impl({
  type t = sharedWorker
})

/**
`make(string)`

The SharedWorker() constructor creates a SharedWorker object that executes the 
script at the specified URL. This script must obey the same-origin policy.

```res
let shared: sharedWorker = SharedWorker.make("sharedworker.js")
```

[Read more on MDN](https://developer.mozilla.org/en-US/docs/Web/API/SharedWorker/)
*/
@new
external make: string => sharedWorker = "SharedWorker"

/**
`make_withName(string, string)`

The SharedWorker() constructor creates a SharedWorker object that executes the 
script at the specified URL. This script must obey the same-origin policy.

```res
let shared: sharedWorker = SharedWorker.make("sharedworker.js", "name")
```

[Read more on MDN](https://developer.mozilla.org/en-US/docs/Web/API/SharedWorker/)
*/
@new
external make_withName: (string, string) => sharedWorker = "SharedWorker"

/**
`make_withOptions(string, workerOptions)`

The SharedWorker() constructor creates a SharedWorker object that executes the 
script at the specified URL. This script must obey the same-origin policy.

```res
let shared3: sharedWorker = SharedWorker.make_withOptions("sharedworker.js", {
  name: "workerName",
  type_: Module
})
```

[Read more on MDN](https://developer.mozilla.org/en-US/docs/Web/API/SharedWorker/)
*/
@new
external make_withOptions: (string, workerOptions) => sharedWorker = "SharedWorker"

/**
`port(sharedWorker)`

The port property of the SharedWorker interface returns a MessagePort object 
used to communicate and control the shared worker.

```res
let port: WebAPI.ChannelMessagingAPI.messagePort = SharedWorker.port(myWorker)
```

[Read more on MDN](https://developer.mozilla.org/en-US/docs/Web/API/SharedWorker/port)
*/
@get
external port: sharedWorker => messagePort = "port"
