open WebAudioAPI

include EventTarget.Impl({
  type t = audioNode
})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/connect)
*/
@send
external connect: (
  audioNode,
  ~destinationNode: audioNode,
  ~output: int=?,
  ~input: int=?,
) => audioNode = "connect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/connect)
*/
@send
external connect2: (audioNode, ~destinationParam: audioParam, ~output: int=?) => unit = "connect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/disconnect)
*/
@send
external disconnect: audioNode => unit = "disconnect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/disconnect)
*/
@send
external disconnect2: (audioNode, int) => unit = "disconnect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/disconnect)
*/
@send
external disconnect3: (audioNode, audioNode) => unit = "disconnect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/disconnect)
*/
@send
external disconnect4: (audioNode, ~destinationNode: audioNode, ~output: int) => unit = "disconnect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/disconnect)
*/
@send
external disconnect5: (audioNode, ~destinationNode: audioNode, ~output: int, ~input: int) => unit =
  "disconnect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/disconnect)
*/
@send
external disconnect6: (audioNode, audioParam) => unit = "disconnect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/disconnect)
*/
@send
external disconnect7: (audioNode, ~destinationParam: audioParam, ~output: int) => unit =
  "disconnect"
