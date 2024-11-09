open Global

let input: DOMAPI.htmlInputElement =
  document->Document.createElement(~localName="input")->Prelude.unsafeConversation
let value = input.value

