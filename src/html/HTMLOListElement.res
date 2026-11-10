/**
Provides special properties (beyond those defined on the regular HTMLElement interface it also has available to it by inheritance) for manipulating ordered list elements.
[See HTMLOListElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOListElement)
*/
type t = private {
  ...DOMTree.htmlElement,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOListElement/reversed)
    */
  mutable reversed: bool,
  /**
    The starting number.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOListElement/start)
    */
  mutable start: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOListElement/type)
    */
  @as("type")
  mutable type_: string,
}

include HTMLElement.Impl({type t = t})

@set external setReversed: (t, bool) => unit = "reversed"
@set external setStart: (t, int) => unit = "start"
@set
external setType: (t, string) => unit = "type"
