@@warning("-33")
open DOMAPI

module NodeListOf = {
  /**
    Performs the specified action for each node in an list.
@param callbackfn  A function that accepts up to three arguments. forEach calls the callbackfn function one time for each element in the list.
@param thisArg  An object to which the this keyword can refer in the callbackfn function. If thisArg is omitted, undefined is used as the this value.
    */
  @send
  external forEach: (nodeListOf<'tNode>, 'tNode => int => nodeListOf<'tNode> => unit) => unit =
    "forEach"
}
