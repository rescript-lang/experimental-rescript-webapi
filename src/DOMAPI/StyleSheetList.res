@@warning("-33")
open DOMAPI

module StyleSheetList = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheetList/item)
    */
  @send
  external item: (styleSheetList, int) => cssStyleSheet = "item"
}
