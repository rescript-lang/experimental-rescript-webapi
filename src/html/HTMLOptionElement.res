/**
<option> elements and inherits all classes and methods of the HTMLElement interface.
[See HTMLOptionElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOptionElement)
TODO: mark as private once mutating fields of private records is allowed
*/
type t = {
  ...DOMTree.htmlElement,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOptionElement/disabled)
    */
  mutable disabled: bool,
  /**
    Retrieves a reference to the form that the object is embedded in.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOptionElement/form)
    */
  form: Null.t<DOMTree.htmlFormElement>,
  /**
    Sets or retrieves a value that you can use to implement your own label functionality for the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOptionElement/label)
    */
  mutable label: string,
  /**
    Sets or retrieves the status of an option.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOptionElement/defaultSelected)
    */
  mutable defaultSelected: bool,
  /**
    Sets or retrieves whether the option in the list box is the default item.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOptionElement/selected)
    */
  mutable selected: bool,
  /**
    Sets or retrieves the value which is returned to the server when the form control is submitted.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOptionElement/value)
    */
  mutable value: string,
  /**
    Sets or retrieves the text string specified by the option tag.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOptionElement/text)
    */
  mutable text: string,
  /**
    Sets or retrieves the ordinal position of an option in a list box.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOptionElement/index)
    */
  index: int,
}

include HTMLElement.Impl({type t = t})
