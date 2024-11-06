@@warning("-44")
@@warning("-33")
open DOMAPI

module IdleDeadline = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IdleDeadline/timeRemaining)
    */
  @send
  external timeRemaining: idleDeadline => float = "timeRemaining"
}
