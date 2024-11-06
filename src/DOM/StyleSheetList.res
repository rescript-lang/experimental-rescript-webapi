@@warning("-44")
@@warning("-33")
open DOM

module StyleSheetList = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheetList/item)
    */
  @send
  external item: (styleSheetList, int) => cssStyleSheet = "item"
}
