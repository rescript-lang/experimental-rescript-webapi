type t = Base__NamedNodeMap.t = private {...Base__NamedNodeMap.t}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/item)
*/
@send
external item: (t, int) => DomTypes.attr = "item"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/getNamedItem)
*/
@send
external getNamedItem: (t, string) => DomTypes.attr = "getNamedItem"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/getNamedItemNS)
*/
@send
external getNamedItemNS: (t, ~namespace: string, ~localName: string) => DomTypes.attr =
  "getNamedItemNS"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/setNamedItem)
*/
@send
external setNamedItem: (t, DomTypes.attr) => DomTypes.attr = "setNamedItem"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/setNamedItemNS)
*/
@send
external setNamedItemNS: (t, DomTypes.attr) => DomTypes.attr = "setNamedItemNS"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/removeNamedItem)
*/
@send
external removeNamedItem: (t, string) => DomTypes.attr = "removeNamedItem"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/removeNamedItemNS)
*/
@send
external removeNamedItemNS: (t, ~namespace: string, ~localName: string) => DomTypes.attr =
  "removeNamedItemNS"
