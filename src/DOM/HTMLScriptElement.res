@@warning("-44")
@@warning("-33")
open DOM

module HTMLScriptElement = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLScriptElement)
    */
  @new
  external make: unit => htmlScriptElement = "HTMLScriptElement"
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLScriptElement/supports_static)
    */
  @scope("HTMLScriptElement")
  external supports: string => bool = "supports"
}
