/**
Enables access to the contents of an HTML <template> element.
[See HTMLTemplateElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTemplateElement)
TODO: mark as private once mutating fields of private records is allowed
*/
type t = {
  ...DOMTree.htmlElement,
  /**
    Returns the template contents (a DocumentFragment).
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTemplateElement/content)
    */
  content: DOMTree.documentFragment,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTemplateElement/shadowRootMode)
    */
  mutable shadowRootMode: string,
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
