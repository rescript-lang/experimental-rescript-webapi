@@warning("-33")
open DOMAPI

module StylePropertyMap = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StylePropertyMap/set)
    */
  @send
  external set: (stylePropertyMap, string, unknown) => unit = "set"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StylePropertyMap/append)
    */
  @send
  external append: (stylePropertyMap, string, unknown) => unit = "append"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StylePropertyMap/delete)
    */
  @send
  external delete: (stylePropertyMap, string) => unit = "delete"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StylePropertyMap/clear)
    */
  @send
  external clear: stylePropertyMap => unit = "clear"
}
