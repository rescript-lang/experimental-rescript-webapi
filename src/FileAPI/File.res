open FileAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/File)
*/
@new
external make: (array<blobPart>, string, filePropertyBag) => file = "File"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Blob/slice)
*/
@send
external slice: (file, int, int, string) => blob = "slice"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Blob/stream)
*/
@send
external stream: file => readableStream<array<int>> = "stream"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Blob/text)
*/
@send
external text: file => Promise.t<string> = "text"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Blob/arrayBuffer)
*/
@send
external arrayBuffer: file => Promise.t<ArrayBuffer.t> = "arrayBuffer"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Blob/bytes)
*/
@send
external bytes: file => Promise.t<array<int>> = "bytes"
