/**
An error which occurred while handling media in an HTML media element based on HTMLMediaElement, such as <audio> or <video>.
[See MediaError on MDN](https://developer.mozilla.org/docs/Web/API/MediaError)
*/
type t = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaError/code)
    */
  code: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaError/message)
    */
  message: string,
}
