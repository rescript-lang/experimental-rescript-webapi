/**
 * Compatibility aliases for the recursive DOM interface family.
 *
 * Keeping these aliases in one module lets interface modules migrate from
 * DOM/DomTypes independently. The aliases are replaced with the concrete
 * recursive definitions once all consumers use DOMTree.
 */
type shadowRootMode = DOM.shadowRootMode
type slotAssignmentMode = DOM.slotAssignmentMode
type customStateSet = DOM.customStateSet

type node = DOM.node
type element = DOM.element
type documentFragment = DOM.documentFragment
type shadowRoot = DOM.shadowRoot
type htmlElement = DOM.htmlElement
type htmlFormElement = DOM.htmlFormElement
type htmlFormControlsCollection = DOM.htmlFormControlsCollection
type htmlSlotElement = DOM.htmlSlotElement
type elementInternals = DOM.elementInternals
