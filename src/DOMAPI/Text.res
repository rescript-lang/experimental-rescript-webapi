@@warning("-33")
open DOMAPI

module Text = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Text)
    */
  @new
  external make: string => text = "Text"
  /**
    Splits data at the given offset and returns the remainder as Text node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Text/splitText)
    */
  @send
  external splitText: (text, int) => text = "splitText"
}
