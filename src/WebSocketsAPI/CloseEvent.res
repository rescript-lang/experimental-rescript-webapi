open WebSocketsAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CloseEvent)
*/
@new
external make: (string, closeEventInit) => closeEvent = "CloseEvent"
