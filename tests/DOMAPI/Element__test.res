external myElement: DOM.Types.element = "myElement"

switch myElement->DOM.Element.getAttribute("foo") {
| Null.Value(value) => value->Console.log
| Null => "nothing"->Console.log
}
