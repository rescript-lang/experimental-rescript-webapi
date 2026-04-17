open Global

let input: DOM.htmlInputElement =
  document->Document.createElement("input")->Prelude.unsafeConversation
let value = input.value
