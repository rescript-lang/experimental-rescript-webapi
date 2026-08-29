/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/item)
*/
@send
external item: (DOM.namedNodeMap, int) => Null.t<Attr.t> = "item"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/getNamedItem)
*/
@send
external getNamedItem: (DOM.namedNodeMap, string) => Null.t<Attr.t> = "getNamedItem"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/getNamedItemNS)
*/
@send
external getNamedItemNS: (
  DOM.namedNodeMap,
  ~namespace: string,
  ~localName: string,
) => Null.t<Attr.t> = "getNamedItemNS"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/setNamedItem)
*/
@throws(JsExn) @send
external setNamedItem: (DOM.namedNodeMap, Attr.t) => Null.t<Attr.t> = "setNamedItem"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/setNamedItemNS)
*/
@throws(JsExn) @send
external setNamedItemNS: (DOM.namedNodeMap, Attr.t) => Null.t<Attr.t> = "setNamedItemNS"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/removeNamedItem)
*/
@throws(JsExn) @send
external removeNamedItem: (DOM.namedNodeMap, string) => Attr.t = "removeNamedItem"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/removeNamedItemNS)
*/
@throws(JsExn) @send
external removeNamedItemNS: (DOM.namedNodeMap, ~namespace: string, ~localName: string) => Attr.t =
  "removeNamedItemNS"
