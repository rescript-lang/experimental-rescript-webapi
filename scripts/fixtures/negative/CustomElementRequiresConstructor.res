@scope("globalThis")
external customElements: WebAPI.DOM.customElementRegistry = "customElements"

let element: WebAPI.HTMLElement.t = %raw(`document.createElement("div")`)
WebAPI.CustomElementRegistry.define(
  customElements,
  ~name="x-invalid-binding-element",
  ~constructor=element,
)
