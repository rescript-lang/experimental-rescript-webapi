/**
Provides special properties and methods (beyond the HTMLElement interface it also has available to it by inheritance) for manipulating the layout and presentation of rows in an HTML table.
[See HTMLTableRowElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableRowElement)
*/
type t = private {
  ...DOMTree.htmlElement,
  /**
    Retrieves the position of the object in the rows collection for the table.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableRowElement/rowIndex)
    */
  rowIndex: int,
  /**
    Retrieves the position of the object in the collection.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableRowElement/sectionRowIndex)
    */
  sectionRowIndex: int,
  /**
    Retrieves a collection of all cells in the table row.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableRowElement/cells)
    */
  cells: HTMLCollection.t<HTMLTableCellElement.t>,
}

include HTMLElement.Impl({type t = t})

/**
Creates a new cell in the table row, and adds the cell to the cells collection.
@param index Number that specifies where to insert the cell in the tr. The default value is -1, which appends the new cell to the end of the cells collection.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableRowElement/insertCell)
*/
@throws(JsExn) @send
external insertCell: (t, ~index: int=?) => HTMLTableCellElement.t = "insertCell"

/**
Removes the specified cell from the table row, as well as from the cells collection.
@param index Number that specifies the zero-based position of the cell to remove from the table row. If no value is provided, the last cell in the cells collection is deleted.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableRowElement/deleteCell)
*/
@throws(JsExn) @send
external deleteCell: (t, int) => unit = "deleteCell"
