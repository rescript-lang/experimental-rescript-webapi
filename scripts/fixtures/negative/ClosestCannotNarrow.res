let element: WebAPI.Element.t = %raw(`document.createElement("div")`)
let _input: Null.t<WebAPI.HTMLInputElement.t> = element->WebAPI.Element.closest("input")
