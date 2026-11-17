let elementIdentity: WebAPI.DOMTree.element => WebAPI.DOMTree.element = value => value
let parentNode = (element: WebAPI.DOMTree.element) => element.parentNode
let childNodes = (element: WebAPI.DOMTree.element) => element.childNodes
let style = (element: WebAPI.DOMTree.htmlElement) => element.style
let inferredManual = WebAPI.DOMTree.Manual
let mode: WebAPI.DOMTree.slotAssignmentMode = inferredManual
