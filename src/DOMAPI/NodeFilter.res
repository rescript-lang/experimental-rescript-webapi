@@warning("-33")
open DOMAPI

module NodeFilter = {
  @send
  external acceptNode: (nodeFilter, node) => int = "acceptNode"
}
