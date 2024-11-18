open Prelude
open DOMAPI

module Impl = (
  T: {
    type t
  },
) => {
  /**
`querySelector(T.t, string)`

Returns the first element that is a descendant of node that matches selectors.
If nothing matches, the result is `null`. Use `querySelector_` helpers to get a typed result.

```res
t->querySelector("#myCanvas")
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/querySelector)
  */
  @send
  external querySelector: (T.t, string) => null<element> = "querySelector"

  let querySelector_htmlCanvasElement = (t: T.t, selector: string): option<htmlCanvasElement> => {
    let e = querySelector(t, selector)
    switch e {
    | Null.Null => None
    | Null.Value(e) =>
      if HTMLCanvasElement.isInstanceOf(e) {
        Some(unsafeConversation(e))
      } else {
        None
      }
    }
  }
}
