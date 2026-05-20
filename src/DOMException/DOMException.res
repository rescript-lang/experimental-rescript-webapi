/**
An abnormal event (called an exception) which occurs as a result of calling a method or accessing a property of a web API.
[See DOMException on MDN](https://developer.mozilla.org/docs/Web/API/DOMException)
*/
@editor.completeFrom(DOMException)
type t = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMException/name)
    */
  name: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMException/message)
    */
  message: string,
}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMException)
*/
@new
external make: (~message: string=?, ~name: string=?) => t = "DOMException"
