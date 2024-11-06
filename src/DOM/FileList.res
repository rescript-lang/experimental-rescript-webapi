@@warning("-44")
@@warning("-33")
open File
open DOM

module FileList = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileList/item)
    */
  @send
  external item: (fileList, int) => file = "item"
}
