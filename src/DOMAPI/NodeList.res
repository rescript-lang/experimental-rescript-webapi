@@warning("-44")
@@warning("-33")
open DOMAPI

module NodeList = {
  /**
    Returns the node with index index from the collection. The nodes are sorted in tree order.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NodeList/item)
    */
  @send
  external item: (nodeList, int) => node = "item"

  /**
    Performs the specified action for each node in an list.
@param callbackfn  A function that accepts up to three arguments. forEach calls the callbackfn function one time for each element in the list.
@param thisArg  An object to which the this keyword can refer in the callbackfn function. If thisArg is omitted, undefined is used as the this value.
    */
  @send
  external forEach: (nodeList, node => int => nodeList => unit) => unit = "forEach"
}
