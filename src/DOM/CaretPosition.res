@@warning("-44")
@@warning("-33")
open DOM

module CaretPosition = {
  @send
  external getClientRect: caretPosition => domRect = "getClientRect"
}
