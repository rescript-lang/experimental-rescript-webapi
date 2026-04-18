/**
Returns the string with index index from strings.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMStringList/item)
*/
@send
external item: (Types.domStringList, int) => string = "item"

/**
Returns true if strings contains string, and false otherwise.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMStringList/contains)
*/
@send
external contains: (Types.domStringList, string) => bool = "contains"
