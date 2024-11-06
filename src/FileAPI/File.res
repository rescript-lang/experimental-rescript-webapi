@@warning("-44")
@@warning("-33")
open FileAPI

module File = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/File)
    */
  @new
  external make: (array<blobPart>, string, filePropertyBag) => file = "File"
}
