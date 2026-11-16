/**
A list of StyleSheet.
[See StyleSheetList on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheetList)
*/
@editor.completeFrom(StyleSheetList)
type t = CSSOMTypes.styleSheetList = private {...CSSOMTypes.styleSheetList}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheetList/item)
*/
@send
external item: (t, int) => Null.t<StyleSheet.cssStyleSheet> = "item"
