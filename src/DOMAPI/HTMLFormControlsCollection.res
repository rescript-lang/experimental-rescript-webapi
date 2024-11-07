open DOMAPI

/**
Retrieves an object from various collections.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLCollection/item)
*/
@send
external item: (htmlFormControlsCollection, int) => element = "item"
