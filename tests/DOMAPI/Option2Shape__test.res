let element: Element.t = Document.createElement("button")
let div: Element.t = Document.createElement("div")

element->Element.setAttribute(~qualifiedName="data-state", ~value="ready")
let hasState = element->Element.hasAttribute("data-state")

let maybeElement: Null.t<Element.t> = Document.querySelector("#save")
let maybeElementById: null<Element.t> = Document.getElementById("save")

let location: Location.t = Location.current
let href = location.href
let currentHost = Location.host

Location.reload()

ignore(hasState)
ignore(maybeElement)
ignore(maybeElementById)
ignore(div)
ignore(href)
ignore(currentHost)
