external myElement: WebApi.DOM.Types.element = "myElement"

switch myElement->WebApi.DOM.Element.getAttribute("foo") {
| Null.Value(value) => value->Console.log
| Null => "nothing"->Console.log
}
