/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/item)
*/
@send
external item: (Types.namedNodeMap, int) => Types.attr = "item"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/getNamedItem)
*/
@send
external getNamedItem: (Types.namedNodeMap, string) => Types.attr = "getNamedItem"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/getNamedItemNS)
*/
@send
external getNamedItemNS: (
  Types.namedNodeMap,
  ~namespace: string,
  ~localName: string,
) => Types.attr = "getNamedItemNS"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/setNamedItem)
*/
@send
external setNamedItem: (Types.namedNodeMap, Types.attr) => Types.attr = "setNamedItem"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/setNamedItemNS)
*/
@send
external setNamedItemNS: (Types.namedNodeMap, Types.attr) => Types.attr = "setNamedItemNS"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/removeNamedItem)
*/
@send
external removeNamedItem: (Types.namedNodeMap, string) => Types.attr = "removeNamedItem"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/removeNamedItemNS)
*/
@send
external removeNamedItemNS: (
  Types.namedNodeMap,
  ~namespace: string,
  ~localName: string,
) => Types.attr = "removeNamedItemNS"
