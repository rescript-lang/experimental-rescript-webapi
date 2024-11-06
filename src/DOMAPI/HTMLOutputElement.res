@@warning("-44")
@@warning("-33")
open DOMAPI

module HTMLOutputElement = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOutputElement)
    */
  @new
  external make: unit => htmlOutputElement = "HTMLOutputElement"
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOutputElement/checkValidity)
    */
  @send
  external checkValidity: htmlOutputElement => bool = "checkValidity"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOutputElement/reportValidity)
    */
  @send
  external reportValidity: htmlOutputElement => bool = "reportValidity"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLOutputElement/setCustomValidity)
    */
  @send
  external setCustomValidity: (htmlOutputElement, string) => unit = "setCustomValidity"
}
