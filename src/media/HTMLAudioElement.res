/**
Provides access to the properties of <audio> elements, as well as methods to manipulate them. It derives from the HTMLMediaElement interface.
[See HTMLAudioElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLAudioElement)
*/
type t = private {
  ...DomHTMLMediaElement.t,
}

include DomHTMLMediaElement.Impl({type t = t})
