external myElement: DOM_.element = "myElement"

switch myElement->Element.getAttribute("foo") {
| Null.Value(value) => value->Console.log
| Null => "nothing"->Console.log
}
