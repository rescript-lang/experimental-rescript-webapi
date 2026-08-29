/**
Provides special properties and methods (beyond the regular HTMLElement object interface it also has available to it by inheritance) for manipulating the layout and presentation of tables in an HTML document.
[See HTMLTableElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableElement)
TODO: mark as private once mutating fields of private records is allowed
*/
type rec t = {
  ...DOMTree.htmlElement,
  /**
    Retrieves the caption object of a table.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableElement/caption)
    */
  mutable caption: Null.t<HTMLTableCaptionElement.t>,
  /**
    Retrieves the tHead object of the table.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableElement/tHead)
    */
  mutable tHead: Null.t<HTMLTableSectionElement.t>,
  /**
    Retrieves the tFoot object of the table.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableElement/tFoot)
    */
  mutable tFoot: Null.t<HTMLTableSectionElement.t>,
  /**
    Retrieves a collection of all tBody objects in the table. Objects in this collection are in source order.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableElement/tBodies)
    */
  tBodies: HTMLCollection.t<HTMLTableSectionElement.t>,
  /**
    Sets or retrieves the number of horizontal rows contained in the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableElement/rows)
    */
  rows: HTMLCollection.t<HTMLTableRowElement.t>,
}

include HTMLElement.Impl({type t = t})

/**
Creates an empty caption element in the table.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableElement/createCaption)
*/
@send
external createCaption: t => HTMLTableCaptionElement.t = "createCaption"

/**
Deletes the caption element and its contents from the table.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableElement/deleteCaption)
*/
@send
external deleteCaption: t => unit = "deleteCaption"

/**
Returns the tHead element object if successful, or null otherwise.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableElement/createTHead)
*/
@send
external createTHead: t => HTMLTableSectionElement.t = "createTHead"

/**
Deletes the tHead element and its contents from the table.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableElement/deleteTHead)
*/
@send
external deleteTHead: t => unit = "deleteTHead"

/**
Creates an empty tFoot element in the table.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableElement/createTFoot)
*/
@send
external createTFoot: t => HTMLTableSectionElement.t = "createTFoot"

/**
Deletes the tFoot element and its contents from the table.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableElement/deleteTFoot)
*/
@send
external deleteTFoot: t => unit = "deleteTFoot"

/**
Creates an empty tBody element in the table.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableElement/createTBody)
*/
@send
external createTBody: t => HTMLTableSectionElement.t = "createTBody"

/**
Creates a new row (tr) in the table, and adds the row to the rows collection.
@param index Number that specifies where to insert the row in the rows collection. The default value is -1, which appends the new row to the end of the rows collection.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableElement/insertRow)
*/
@throws(JsExn) @send
external insertRow: (t, ~index: int=?) => HTMLTableRowElement.t = "insertRow"

/**
Removes the specified row (tr) from the element and from the rows collection.
@param index Number that specifies the zero-based position in the rows collection of the row to remove.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableElement/deleteRow)
*/
@throws(JsExn) @send
external deleteRow: (t, int) => unit = "deleteRow"
