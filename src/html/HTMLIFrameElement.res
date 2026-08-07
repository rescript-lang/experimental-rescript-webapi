/**
Provides special properties and methods (beyond those of the HTMLElement interface it also has available to it by inheritance) for manipulating the layout and presentation of inline frame elements.
[See HTMLIFrameElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLIFrameElement)
TODO: mark as private once mutating fields of private records is allowed
*/
type t = {
  ...DOMTree.htmlElement,
  /**
    Sets or retrieves a WebApiURL to be loaded by the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLIFrameElement/src)
    */
  mutable src: string,
  /**
    Sets or retrives the content of the page that is to contain.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLIFrameElement/srcdoc)
    */
  mutable srcdoc: string,
  /**
    Sets or retrieves the frame name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLIFrameElement/name)
    */
  mutable name: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLIFrameElement/sandbox)
    */
  sandbox: DOM.domTokenList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLIFrameElement/allow)
    */
  mutable allow: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLIFrameElement/allowFullscreen)
    */
  mutable allowFullscreen: bool,
  /**
    Sets or retrieves the width of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLIFrameElement/width)
    */
  mutable width: string,
  /**
    Sets or retrieves the height of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLIFrameElement/height)
    */
  mutable height: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLIFrameElement/referrerPolicy)
    */
  mutable referrerPolicy: DOM.referrerPolicy,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLIFrameElement/loading)
    */
  mutable loading: string,
  /**
    Retrieves the document object of the page or frame.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLIFrameElement/contentDocument)
    */
  contentDocument: Null.t<DOM.document>,
  /**
    Retrieves the object of the specified.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLIFrameElement/contentWindow)
    */
  contentWindow: Null.t<DOM.window>,
}

include HTMLElement.Impl({type t = t})

@send
external getSVGDocument: t => DOM.document = "getSVGDocument"
