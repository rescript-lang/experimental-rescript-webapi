@@warning("-44")
@@warning("-33")
open DOM

module NodeFilter = {
  @send
  external acceptNode: (nodeFilter, node) => int = "acceptNode"
}
