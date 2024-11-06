@@warning("-33")
open DOMAPI

module DOMRectList = {
  @send
  external item: (domRectList, int) => domRect = "item"
}
