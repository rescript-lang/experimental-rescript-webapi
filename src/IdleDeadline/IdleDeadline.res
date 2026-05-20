/**
[See IdleDeadline on MDN](https://developer.mozilla.org/docs/Web/API/IdleDeadline)
*/
@editor.completeFrom(IdleDeadline)
type t = private {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IdleDeadline/didTimeout)
    */
  didTimeout: bool,
}

type requestOptions = {mutable timeout?: int}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/IdleDeadline/timeRemaining)
*/
@send
external timeRemaining: t => float = "timeRemaining"
