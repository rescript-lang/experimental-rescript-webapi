@@warning("-44")
@@warning("-33")
open DOM
open Prelude

module DOMRectReadOnly = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly)
    */
  @new
  external make: (any, any, any, any) => domRectReadOnly = "DOMRectReadOnly"
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly/fromRect_static)
    */
  @scope("DOMRectReadOnly")
  external fromRect: domRectInit => domRectReadOnly = "fromRect"

  @send
  external toJSON: domRectReadOnly => Dict.t<string> = "toJSON"
}
