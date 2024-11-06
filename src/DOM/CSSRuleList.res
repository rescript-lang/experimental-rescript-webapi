@@warning("-44")
@@warning("-33")
open DOM

module CSSRuleList = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSRuleList/item)
    */
  @send
  external item: (cssRuleList, int) => cssRule = "item"
}
