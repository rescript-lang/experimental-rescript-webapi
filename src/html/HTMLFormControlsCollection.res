type t = DOMTree.htmlFormControlsCollection = private {
  ...DOMTree.htmlFormControlsCollection,
}

external asHTMLCollection: DOMTree.htmlFormControlsCollection => HTMLCollection.t<DOMTree.element> =
  "%identity"

/**
Retrieves an object from various collections.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLCollection/item)
*/
@send
external item: (DOMTree.htmlFormControlsCollection, int) => Null.t<DOMTree.element> = "item"

/**
Retrieves a select object or an object from an options collection.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLCollection/namedItem)
*/
@send
external namedItem: (DOMTree.htmlFormControlsCollection, string) => Null.t<DOMTree.element> =
  "namedItem"
