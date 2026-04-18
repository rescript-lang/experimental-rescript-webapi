external myElement: WebApiDOM.Types.element = "myElement"

switch myElement->WebApiDOM.Element.getAttribute("foo") {
| Null.Value(value) => value->Console.log
| Null => "nothing"->Console.log
}
