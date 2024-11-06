@@warning("-33")
open DOMAPI

module Comment = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Comment)
    */
  @new
  external make: string => comment = "Comment"
}
