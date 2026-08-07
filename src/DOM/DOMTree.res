/**
 * Compatibility aliases for the recursive DOM interface family.
 *
 * DOMTree and these public type names are permanent; only the aliases below
 * are temporary. PRs #302 through #308 migrate consumers from DOM/DomTypes,
 * then PR #310 replaces the aliases in place with concrete recursive
 * definitions and removes their old DOM/DomTypes definitions.
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
