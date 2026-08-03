/**
HTMLOptionsCollection is an interface representing a collection of HTML option elements (in document order) and offers methods and properties for traversing the list as well as optionally altering its items. This type is returned solely by the "options" property of select.
[See HTMLOptionsCollection on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOptionsCollection)
TODO: mark as private once mutating fields of private records is allowed
*/
type t = {
  ...HTMLCollection.t<HTMLOptionElement.t>,
  /**
    Returns the index of the first selected item, if any, or -1 if there is no selected item.

Can be set, to change the selection.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOptionsCollection/selectedIndex)
    */
  mutable selectedIndex: int,
}

/**
Inserts element before the DOMTree.node given by before.

The before argument can be a number, in which case element is inserted before the item with that number, or an element from the collection, in which case element is inserted before that element.

If before is omitted, null, or a number out of range, then element will be added at the end of the list.

This method will throw a "HierarchyRequestError" DOMException if element is an ancestor of the element into which it is to be inserted.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOptionsCollection/add)
*/
@send
external add: (t, ~element: unknown, ~before: unknown=?) => unit = "add"

/**
Removes the item with index index from the collection.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOptionsCollection/remove)
*/
@send
external remove: (t, int) => unit = "remove"
