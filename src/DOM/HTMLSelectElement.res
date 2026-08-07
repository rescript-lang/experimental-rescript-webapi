/**
A <select> HTML Element. These elements also share all of the properties and methods of other HTML elements via the HTMLElement interface.
[See HTMLSelectElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement)
TODO: mark as private once mutating fields of private records is allowed
*/
type t = {
  ...DOMTree.htmlElement,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement/disabled)
    */
  mutable disabled: bool,
  /**
    Retrieves a reference to the form that the object is embedded in.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement/form)
    */
  form: Null.t<DOMTree.htmlFormElement>,
  /**
    Sets or retrieves the Boolean value indicating whether multiple items can be selected from a list.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement/multiple)
    */
  mutable multiple: bool,
  /**
    Sets or retrieves the name of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement/name)
    */
  mutable name: string,
  /**
    When present, marks an element that can't be submitted without a value.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement/required)
    */
  mutable required: bool,
  /**
    Sets or retrieves the number of rows in the list box.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement/size)
    */
  mutable size: int,
  /**
    Retrieves the type of select control based on the value of the MULTIPLE attribute.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement/type)
    */
  @as("type")
  type_: string,
  /**
    Returns an HTMLOptionsCollection of the list of options.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement/options)
    */
  options: HTMLOptionsCollection.t,
  /**
    Sets or retrieves the number of objects in a collection.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement/length)
    */
  mutable length: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement/selectedOptions)
    */
  selectedOptions: HTMLCollection.t<HTMLOptionElement.t>,
  /**
    Sets or retrieves the index of the selected option in a select object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement/selectedIndex)
    */
  mutable selectedIndex: int,
  /**
    Sets or retrieves the value which is returned to the server when the form control is submitted.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement/value)
    */
  mutable value: string,
  /**
    Returns whether an element will successfully validate based on forms validation rules and constraints.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement/willValidate)
    */
  willValidate: bool,
  /**
    Returns a  ValidityState object that represents the validity states of an element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement/validity)
    */
  validity: DOM.validityState,
  /**
    Returns the error message that would be displayed if the user submits the form, or an empty string if no error message. It also triggers the standard error message, such as "this is a required field". The result is that the user sees validation messages without actually submitting.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement/validationMessage)
    */
  validationMessage: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement/labels)
    */
  labels: DOM.nodeList<HTMLLabelElement.t>,
}

include HTMLElement.Impl({type t = t})

/**
Retrieves a select object or an object from an options collection.
@param name Variant of type Number or String that specifies the object or collection to retrieve. If this parameter is an integer, it is the zero-based index of the object. If this parameter is a string, all objects with matching name or id properties are retrieved, and a collection is returned if more than one match is made.
@param index Variant of type Number that specifies the zero-based index of the object to retrieve when a collection is returned.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement/item)
*/
@send
external item: (t, int) => HTMLOptionElement.t = "item"

/**
Retrieves a select object or an object from an options collection.
@param namedItem A String that specifies the name or id property of the object to retrieve. A collection is returned if more than one match is made.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement/namedItem)
*/
@send
external namedItem: (t, string) => HTMLOptionElement.t = "namedItem"

/**
Adds an element to the areas, controlRange, or options collection.
@param element Variant of type Number that specifies the index position in the collection where the element is placed. If no value is given, the method places the element at the end of the collection.
@param before Variant of type Object that specifies an element to insert before, or null to append the object to the collection.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement/add)
*/
@send
external add: (t, ~element: unknown, ~before: unknown=?) => unit = "add"

/**
Removes an element from the collection.
@param index Number that specifies the zero-based index of the element to remove from the collection.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement/remove)
*/
@send
external removeH: t => unit = "remove"

/**
Removes an element from the collection.
@param index Number that specifies the zero-based index of the element to remove from the collection.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement/remove)
*/
@send
external removeH2: (t, int) => unit = "remove"

/**
Returns whether a form will validate when it is submitted, without having to submit it.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement/checkValidity)
*/
@send
external checkValidity: t => bool = "checkValidity"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement/reportValidity)
*/
@send
external reportValidity: t => bool = "reportValidity"

/**
Sets a custom error message that is displayed when a form is submitted.
@param error Sets a custom error message that is displayed when a form is submitted.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement/setCustomValidity)
*/
@send
external setCustomValidity: (t, string) => unit = "setCustomValidity"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement/showPicker)
*/
@send
external showPicker: t => unit = "showPicker"
