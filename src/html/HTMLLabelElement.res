/**
Gives access to properties specific to <label> elements. It inherits methods and properties from the base HTMLElement interface.
[See HTMLLabelElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLabelElement)
*/
type t = private {
  ...DOMTree.htmlElement,
  /**
    Retrieves a reference to the form that the object is embedded in.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLabelElement/form)
    */
  form: Null.t<DOMTree.htmlFormElement>,
  /**
    Sets or retrieves the object to which the given label object is assigned.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLabelElement/htmlFor)
    */
  mutable htmlFor: string,
  /**
    Returns the form control that is associated with this element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLabelElement/control)
    */
  control: Null.t<DOMTree.htmlElement>,
}

include HTMLElement.Impl({type t = t})

@set external setHtmlFor: (t, string) => unit = "htmlFor"
