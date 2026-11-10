/**
Enables access to the contents of an HTML <template> element.
[See HTMLTemplateElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTemplateElement)
*/
type t = private {
  ...DOMTree.htmlElement,
  /**
    Returns the template contents (a DocumentFragment).
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTemplateElement/content)
    */
  content: DOMTree.documentFragment,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTemplateElement/shadowRootMode)
    */
  mutable shadowRootMode: DOMTree.shadowRootMode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTemplateElement/shadowRootDelegatesFocus)
    */
  mutable shadowRootDelegatesFocus: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTemplateElement/shadowRootClonable)
    */
  mutable shadowRootClonable: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTemplateElement/shadowRootSerializable)
    */
  mutable shadowRootSerializable: bool,
}

include HTMLElement.Impl({type t = t})

@set
external setShadowRootMode: (t, DOMTree.shadowRootMode) => unit = "shadowRootMode"

@set
external setShadowRootDelegatesFocus: (t, bool) => unit = "shadowRootDelegatesFocus"

@set
external setShadowRootClonable: (t, bool) => unit = "shadowRootClonable"

@set
external setShadowRootSerializable: (t, bool) => unit = "shadowRootSerializable"
