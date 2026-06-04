type t = private {}

module Impl = (
  T: {
    type t
  },
) => {
  external asElement: T.t => t = "%identity"

  /**
Returns element's first attribute whose qualified name is qualifiedName, and null if there is no such attribute otherwise.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/getAttribute)
*/
  @send
  external getAttribute: (T.t, string) => null<string> = "getAttribute"

  /**
Returns true if element has an attribute whose qualified name is qualifiedName, and false otherwise.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/hasAttribute)
*/
  @send
  external hasAttribute: (T.t, string) => bool = "hasAttribute"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/setAttribute)
*/
  @send
  external setAttribute: (T.t, ~qualifiedName: string, ~value: string) => unit = "setAttribute"
}

include Impl({type t = t})

let isInstanceOf = (_: 't): bool => %raw(`param instanceof Element`)
