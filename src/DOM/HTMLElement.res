@@warning("-44")
@@warning("-33")
open DOM

module HTMLElement = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement)
    */
  @new
  external make: unit => htmlElement = "HTMLElement"
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/focus)
    */
  @send
  external focus: (htmlElement, focusOptions) => unit = "focus"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/blur)
    */
  @send
  external blur: htmlElement => unit = "blur"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/click)
    */
  @send
  external click: htmlElement => unit = "click"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/attachInternals)
    */
  @send
  external attachInternals: htmlElement => elementInternals = "attachInternals"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/showPopover)
    */
  @send
  external showPopover: htmlElement => unit = "showPopover"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/hidePopover)
    */
  @send
  external hidePopover: htmlElement => unit = "hidePopover"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/togglePopover)
    */
  @send
  external togglePopover: (htmlElement, bool) => bool = "togglePopover"
}
