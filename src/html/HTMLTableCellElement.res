/**
Provides special properties and methods (beyond the regular HTMLElement interface it also has available to it by inheritance) for manipulating the layout and presentation of table cells, either header or data cells, in an HTML document.
[See HTMLTableCellElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableCellElement)
TODO: mark as private once mutating fields of private records is allowed
*/
type t = {
  ...DOMTree.htmlElement,
  /**
    Sets or retrieves the number columns in the table that the object should span.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableCellElement/colSpan)
    */
  mutable colSpan: int,
  /**
    Sets or retrieves how many rows in a table the cell should span.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableCellElement/rowSpan)
    */
  mutable rowSpan: int,
  /**
    Sets or retrieves a list of header cells that provide information for the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableCellElement/headers)
    */
  mutable headers: string,
  /**
    Retrieves the position of the object in the cells collection of a row.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableCellElement/cellIndex)
    */
  cellIndex: int,
  /**
    Sets or retrieves the group of cells in a table to which the object's information applies.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableCellElement/scope)
    */
  mutable scope: string,
  /**
    Sets or retrieves abbreviated text for the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableCellElement/abbr)
    */
  mutable abbr: string,
}

include HTMLElement.Impl({type t = t})
