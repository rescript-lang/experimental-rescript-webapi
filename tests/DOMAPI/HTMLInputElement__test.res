open Global

let input: DOMTypes.htmlInputElement =
  document->Document.createElement("input")->Prelude.unsafeConversation
let value = input.value
