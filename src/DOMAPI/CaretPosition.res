@@warning("-33")
open DOMAPI

module CaretPosition = {
  @send
  external getClientRect: caretPosition => domRect = "getClientRect"
}
