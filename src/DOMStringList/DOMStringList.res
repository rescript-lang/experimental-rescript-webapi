/**
A type returned by some APIs which contains a list of DOMString (strings).
[See DOMStringList on MDN](https://developer.mozilla.org/docs/Web/API/DOMStringList)
*/
@editor.completeFrom(DOMStringList)
type t = {
  /**
    Returns the number of strings in strings.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMStringList/length)
    */
  length: int,
}

/**
Returns the string with index index from strings.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMStringList/item)
*/
@send
external item: (t, int) => string = "item"

/**
Returns true if strings contains string, and false otherwise.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMStringList/contains)
*/
@send
external contains: (t, string) => bool = "contains"
