let value = switch DomGlobal.document->Document.createElement("input")->HTMLInputElement.classify {
| Some(input) => Some(input.value)
| None => None
}
