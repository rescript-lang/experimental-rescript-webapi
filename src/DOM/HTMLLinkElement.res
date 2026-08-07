/**
Reference information for external resources and the relationship of those resources to a document and vice-versa. This object inherits all of the properties and methods of the HTMLElement interface.
[See HTMLLinkElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLinkElement)
TODO: mark as private once mutating fields of private records is allowed
*/
type t = {
  ...DOMTree.htmlElement,
  /**
    Sets or retrieves a destination WebApiURL or an anchor point.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLinkElement/href)
    */
  mutable href: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLinkElement/crossOrigin)
    */
  mutable crossOrigin: Null.t<string>,
  /**
    Sets or retrieves the relationship between the object and the destination of the link.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLinkElement/rel)
    */
  mutable rel: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLinkElement/as)
    */
  @as("as")
  mutable as_: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLinkElement/relList)
    */
  relList: DOM.domTokenList,
  /**
    Sets or retrieves the media type.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLinkElement/media)
    */
  mutable media: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLinkElement/integrity)
    */
  mutable integrity: string,
  /**
    Sets or retrieves the language code of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLinkElement/hreflang)
    */
  mutable hreflang: string,
  /**
    Sets or retrieves the MIME type of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLinkElement/type)
    */
  @as("type")
  mutable type_: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLinkElement/referrerPolicy)
    */
  mutable referrerPolicy: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLinkElement/disabled)
    */
  mutable disabled: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLinkElement/fetchPriority)
    */
  mutable fetchPriority: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLLinkElement/sheet)
    */
  sheet: Null.t<StyleSheet.cssStyleSheet>,
}

include HTMLElement.Impl({type t = t})
