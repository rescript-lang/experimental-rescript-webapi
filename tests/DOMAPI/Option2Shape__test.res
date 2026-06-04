let element: Element.t = Document.createElement("button")

element.id = "save"
element.className = "primary"
element.innerHTML = "Save"

let id = element.id
let className = element.className
let html = element.innerHTML
let classCount = element.classList.length
let hasPrimaryClass = element.classList->DOMTokenList.contains("primary")
let firstChildNode = element.childNodes->NodeList.item(0)
let firstChildElement = element.children->HTMLCollection.item(0)
let attributeCount = element.attributes.length

element->Element.setAttribute(~qualifiedName="data-state", ~value="ready")
let hasState = element->Element.hasAttribute("data-state")

let maybeElement: Null.t<Element.t> = Document.querySelector("#save")
let maybeElementById: null<Element.t> = Document.getElementById("save")
let document: Document.t = DomGlobal.document
let firstDocumentChildNode = document.childNodes->NodeList.item(0)
let firstDocumentChildElement = document.children->HTMLCollection.item(0)

let location: Location.t = Location.current
let href = location.href
let currentHost = Location.host

Location.reload()

ignore(id)
ignore(className)
ignore(html)
ignore(classCount)
ignore(hasPrimaryClass)
ignore(firstChildNode)
ignore(firstChildElement)
ignore(attributeCount)
ignore(hasState)
ignore(maybeElement)
ignore(maybeElementById)
ignore(firstDocumentChildNode)
ignore(firstDocumentChildElement)
ignore(href)
ignore(currentHost)
