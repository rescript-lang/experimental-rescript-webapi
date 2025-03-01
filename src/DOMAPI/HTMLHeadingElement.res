open DOMAPI

include HTMLElement.Impl({
  type t = htmlHeadingElement
})

let isInstanceOf = (_: 't): bool => %raw(`param instanceof HTMLHeadingElement`)

let tryParse = (element: 't): option<htmlHeadingElement> =>
  if isInstanceOf(element) {
    Some(element->Obj.magic)
  } else {
    None
  }
