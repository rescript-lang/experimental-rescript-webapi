type t = DOM_.htmlElement = private {...DOM_.htmlElement}

module ElementInternals = {
  type t
}

module Impl = (
  T: {
    type t
  },
) => {
  include Element.Impl({type t = T.t})

  external asHTMLElement: T.t => t = "%identity"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/attachInternals)
*/
  @send
  external attachInternals: T.t => ElementInternals.t = "attachInternals"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/blur)
*/
  @send
  external blur: T.t => unit = "blur"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/click)
*/
  @send
  external click: T.t => unit = "click"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/focus)
*/
  @send
  external focus: (T.t, ~options: DomTypes.focusOptions=?) => unit = "focus"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/hidePopover)
*/
  @send
  external hidePopover: T.t => unit = "hidePopover"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/showPopover)
*/
  @send
  external showPopover: T.t => unit = "showPopover"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/togglePopover)
*/
  @send
  external togglePopover: (T.t, ~force: bool=?) => bool = "togglePopover"
}

include Impl({type t = t})


// module HTMLFormElement = {
// /**
// A <form> element in the WebApiDOM; it allows access to and in some cases modification of aspects of the form, as well as access to its component elements.
// [See HTMLFormElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement)
// TODO: mark as private once mutating fields of private records is allowed
// */
// @editor.completeFrom(DOM.HTMLFormElement)
// type rec t = {
//   // Base properties from HTMLElement
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/title)
//     */
//   mutable title: string,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/lang)
//     */
//   mutable lang: string,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/translate)
//     */
//   mutable translate: bool,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/dir)
//     */
//   mutable dir: string,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/hidden)
//     */
//   mutable hidden: unknown,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/inert)
//     */
//   mutable inert: bool,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKey)
//     */
//   mutable accessKey: string,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/accessKeyLabel)
//     */
//   accessKeyLabel: string,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/draggable)
//     */
//   mutable draggable: bool,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/spellcheck)
//     */
//   mutable spellcheck: bool,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/autocapitalize)
//     */
//   mutable autocapitalize: string,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/innerText)
//     */
//   mutable innerText: string,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/outerText)
//     */
//   mutable outerText: string,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/popover)
//     */
//   mutable popover: Null.t<string>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetParent)
//     */
//   offsetParent: Null.t<DOM_.element>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetTop)
//     */
//   offsetTop: int,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetLeft)
//     */
//   offsetLeft: int,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetWidth)
//     */
//   offsetWidth: int,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/offsetHeight)
//     */
//   offsetHeight: int,
//   // End base properties from HTMLElement

//   // Base properties from Element
//   /**
//     Returns the namespace.
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/namespaceURI)
//     */
//   namespaceURI: Null.t<string>,
//   /**
//     Returns the namespace prefix.
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/prefix)
//     */
//   prefix: Null.t<string>,
//   /**
//     Returns the local name.
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/localName)
//     */
//   localName: string,
//   /**
//     Returns the HTML-uppercased qualified name.
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/tagName)
//     */
//   tagName: string,
//   /**
//     Returns the value of element's id content attribute. Can be set to change it.
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/id)
//     */
//   mutable id: string,
//   /**
//     Returns the value of element's class content attribute. Can be set to change it.
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/className)
//     */
//   mutable className: string,
//   /**
//     Allows for manipulation of element's class content attribute as a set of whitespace-separated tokens through a DOMTokenList object.
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/classList)
//     */
//   classList: DOMTokenList.t,
//   /**
//     Returns the value of element's slot content attribute. Can be set to change it.
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/slot)
//     */
//   mutable slot: string,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/attributes)
//     */
//   attributes: DOM_.namedNodeMap,
//   /**
//     Returns element's shadow root, if any, and if shadow root's mode is "open", and null otherwise.
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/shadowRoot)
//     */
//   shadowRoot: Null.t<DOM_.shadowRoot>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/part)
//     */
//   part: DOMTokenList.t,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollTop)
//     */
//   mutable scrollTop: float,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollLeft)
//     */
//   mutable scrollLeft: float,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollWidth)
//     */
//   scrollWidth: int,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollHeight)
//     */
//   scrollHeight: int,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientTop)
//     */
//   clientTop: int,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientLeft)
//     */
//   clientLeft: int,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientWidth)
//     */
//   clientWidth: int,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientHeight)
//     */
//   clientHeight: int,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/currentCSSZoom)
//     */
//   currentCSSZoom: float,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/innerHTML)
//     */
//   mutable innerHTML: string,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/outerHTML)
//     */
//   mutable outerHTML: string,
//   // End base properties from Element

//   // Base properties from Node
//   /**
//     Returns the type of node.
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeType)
//     */
//   nodeType: int,
//   /**
//     Returns a string appropriate for the type of node.
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeName)
//     */
//   nodeName: string,
//   /**
//     Returns node's node document's document base URL.
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/baseURI)
//     */
//   baseURI: string,
//   /**
//     Returns true if node is connected and false otherwise.
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isConnected)
//     */
//   isConnected: bool,
//   /**
//     Returns the node document. Returns null for documents.
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/ownerDocument)
//     */
//   ownerDocument: Null.t<DOM_.document>,
//   /**
//     Returns the parent.
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentNode)
//     */
//   parentNode: Null.t<DOM_.node>,
//   /**
//     Returns the parent element.
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentElement)
//     */
//   parentElement: Null.t<t>,
//   /**
//     Returns the children.
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/childNodes)
//     */
//   childNodes: DOM_.nodeList<DOM_.node>,
//   /**
//     Returns the first child.
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/firstChild)
//     */
//   firstChild: Null.t<DOM_.node>,
//   /**
//     Returns the last child.
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lastChild)
//     */
//   lastChild: Null.t<DOM_.node>,
//   /**
//     Returns the previous sibling.
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/previousSibling)
//     */
//   previousSibling: Null.t<DOM_.node>,
//   /**
//     Returns the next sibling.
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nextSibling)
//     */
//   nextSibling: Null.t<DOM_.node>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeValue)
//     */
//   mutable nodeValue: Null.t<string>,
//   /**
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/textContent)
//     */
//   mutable textContent: Null.t<string>,
//   // End base properties from Node

//   /**
//     Sets or retrieves a list of character encodings for input data that must be accepted by the server processing the form.
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/acceptCharset)
//     */
//   mutable acceptCharset: string,
//   /**
//     Sets or retrieves the WebApiURL to which the form content is sent for processing.
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/action)
//     */
//   mutable action: string,
//   /**
//     Specifies whether autocomplete is applied to an editable text field.
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/autocomplete)
//     */
//   mutable autocomplete: autoFillBase,
//   /**
//     Sets or retrieves the encoding type for the form.
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/enctype)
//     */
//   mutable enctype: string,
//   /**
//     Sets or retrieves the MIME encoding for the form.
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/encoding)
//     */
//   mutable encoding: string,
//   /**
//     Sets or retrieves how to send the form data to the server.
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/method)
//     */
//   mutable method: string,
//   /**
//     Sets or retrieves the name of the object.
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/name)
//     */
//   mutable name: string,
//   /**
//     Sets or retrieves the window or frame at which to target content.
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/target)
//     */
//   mutable target: string,
//   /**
//     Retrieves a collection, in source order, of all controls in a given form.
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/elements)
//     */
//   elements: htmlFormControlsCollection,
//   /**
//     Sets or retrieves the number of objects in a collection.
//     [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/length)
//     */
//   length: int,
// }

// include HTMLElement.Impl({type t = t})

// /**
// Fires when a FORM is about to be submitted.
// [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/submit)
// */
// @send
// external submit: t => unit = "submit"

// /**
// [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/requestSubmit)
// */
// @send
// external requestSubmit: (t, ~submitter: HTMLElement.t=?) => unit = "requestSubmit"

// /**
// Fires when the user resets a form.
// [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/reset)
// */
// @send
// external reset: t => unit = "reset"

// /**
// Returns whether a form will validate when it is submitted, without having to submit it.
// [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/checkValidity)
// */
// @send
// external checkValidity: t => bool = "checkValidity"

// /**
// [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/reportValidity)
// */
// @send
// external reportValidity: t => bool = "reportValidity"

// }
