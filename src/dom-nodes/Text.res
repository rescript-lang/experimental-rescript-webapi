/**
The textual content of Element or Attr. If an element has no markup within its content, it has a single child implementing Text that contains the element's text. However, if the element contains markup, it is parsed into information items and Text nodes that form its children.
[See Text on MDN](https://developer.mozilla.org/docs/Web/API/Text)
*/
type t = private {
  ...CharacterData.t,
  /**
    Returns the combined data of all direct Text node siblings.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Text/wholeText)
    */
  wholeText: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/assignedSlot)
    */
  assignedSlot: Null.t<DOMTree.htmlSlotElement>,
}

include CharacterData.Impl({type t = t})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Text)
*/
@new
external make: (~data: string=?) => t = "Text"

/**
Splits data at the given offset and returns the remainder as Text node.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Text/splitText)
*/
@throws(JsExn) @send
external splitText: (t, int) => t = "splitText"
