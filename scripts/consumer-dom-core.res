let elementIdentity: WebAPI.DOM.element => WebAPI.DOM.element = value => value
let parentNode = (element: WebAPI.DOM.element) => element.parentNode
let childNodes = (element: WebAPI.DOM.element) => element.childNodes
let style = (element: WebAPI.DOM.htmlElement) => element.style

// Preserve inference of pre-existing constructors, not only annotated use.
let inferredManual = WebAPI.DOM.Manual
let legacyManual: WebAPI.DOM.slotAssignmentMode = inferredManual
let inferredNamed = WebAPI.DOM.Named
let legacyNamed: WebAPI.DOM.slotAssignmentMode = inferredNamed
