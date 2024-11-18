open Prelude
open DOMAPI

let isInstanceOfHTMLCanvasElement = (_: 't): bool => %raw(`param instanceof HTMLCanvasElement`)
let isInstanceOfHTMLDivElement = (_: 't): bool => %raw(`param instanceof HTMLDivElement`)

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

  let safeQuerySelector = (predicate: T.t => bool, t: T.t, selector: string): option<'return> => {
    let e = querySelector(t, selector)
    switch e {
    | Null.Null => None
    | Null.Value(e) => predicate(t) ? Some(unsafeConversation(e)) : None
    }
  }

  let querySelector_htmlCanvasElement = (t: T.t, selector: string): option<htmlCanvasElement> => {
    safeQuerySelector(isInstanceOfHTMLCanvasElement, t, selector)
  }

  let querySelector_htmlDivElement = (t: T.t, selector: string): option<htmlDivElement> => {
    safeQuerySelector(isInstanceOfHTMLDivElement, t, selector)
  }
}
