@@warning("-30")

type shadowRootMode = DOM.shadowRootMode =
  | @as("closed") Closed
  | @as("open") Open

type slotAssignmentMode = DOM.domTreeSlotAssignmentMode =
  | @as("manual") Manual
  | @as("named") Named

type customStateSet = DOM.customStateSet = {...DOM.customStateSet}

@editor.completeFrom(Node)
type node = DOM.node = {...DOM.node}

@editor.completeFrom(Element)
type element = DOM.element = {...DOM.element}

@editor.completeFrom(DocumentFragment)
type documentFragment = DOM.documentFragment = {...DOM.documentFragment}

@editor.completeFrom(ShadowRoot)
type shadowRoot = DOM.shadowRoot = {...DOM.shadowRoot}

@editor.completeFrom(HTMLElement)
type htmlElement = DOM.htmlElement = {...DOM.htmlElement}

@editor.completeFrom(HTMLFormElement)
type htmlFormElement = DOM.htmlFormElement = {...DOM.htmlFormElement}

@editor.completeFrom(HTMLFormControlsCollection)
type htmlFormControlsCollection = DOM.htmlFormControlsCollection = {
  ...DOM.htmlFormControlsCollection,
}

@editor.completeFrom(HTMLSlotElement)
type htmlSlotElement = DOM.htmlSlotElement = {...DOM.htmlSlotElement}

@editor.completeFrom(ElementInternals)
type elementInternals = DOM.elementInternals = {...DOM.elementInternals}
