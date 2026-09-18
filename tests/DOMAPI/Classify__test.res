%%raw(`
globalThis.Element = class Element {}
globalThis.Document = class Document {}
globalThis.HTMLElement = class HTMLElement extends globalThis.Element {}
globalThis.HTMLCanvasElement = class HTMLCanvasElement extends globalThis.HTMLElement {}
globalThis.HTMLImageElement = class HTMLImageElement extends globalThis.HTMLElement {}
globalThis.HTMLInputElement = class HTMLInputElement extends globalThis.HTMLElement {
  checkValidity() {
    return true
  }
}
`)

let element: unknown = %raw(`new globalThis.Element()`)
let document: unknown = %raw(`new globalThis.Document()`)
let htmlElement: unknown = %raw(`new globalThis.HTMLElement()`)
let canvas: unknown = %raw(`new globalThis.HTMLCanvasElement()`)
let image: unknown = %raw(`new globalThis.HTMLImageElement()`)
let input: unknown = %raw(`new globalThis.HTMLInputElement()`)

assert(element->Element.classify->Option.isSome)
assert(document->Document.classify->Option.isSome)
assert(htmlElement->HTMLElement.classify->Option.isSome)
assert(canvas->HTMLCanvasElement.classify->Option.isSome)
assert(image->HTMLImageElement.classify->Option.isSome)
assert(input->HTMLInputElement.classify->Option.isSome)

assert(input->Element.classify->Option.isSome)
assert(input->HTMLElement.classify->Option.isSome)
assert(document->Element.classify->Option.isNone)
assert(image->HTMLCanvasElement.classify->Option.isNone)
assert(htmlElement->HTMLInputElement.classify->Option.isNone)

input
->HTMLInputElement.classify
->Option.forEach(input => assert(input->HTMLInputElement.checkValidity))

%%raw(`
delete globalThis.HTMLCanvasElement
delete globalThis.HTMLImageElement
delete globalThis.HTMLInputElement
`)

assert(canvas->HTMLCanvasElement.classify->Option.isNone)
assert(image->HTMLImageElement.classify->Option.isNone)
assert(input->HTMLInputElement.classify->Option.isNone)
