/**
A list of StyleSheet.
[See StyleSheetList on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheetList)
*/
@editor.completeFrom(StyleSheetList)
type t = private {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheetList/length)
    */
  length: int,
}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheetList/item)
*/
@send
external item: (t, int) => Null.t<StyleSheet.cssStyleSheet> = "item"
