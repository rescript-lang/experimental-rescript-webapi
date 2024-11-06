@@warning("-44")
@@warning("-33")
open DOM

module DOMRectList = {
  @send
  external item: (domRectList, int) => domRect = "item"
}
