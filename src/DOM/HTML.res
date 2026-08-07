type shadowRootInit = {
  mutable mode: DOMTree.shadowRootMode,
  mutable delegatesFocus?: bool,
  mutable slotAssignment?: DOMTree.slotAssignmentMode,
  mutable serializable?: bool,
}

type getHTMLOptions = {
  mutable serializableShadowRoots?: bool,
  mutable shadowRoots?: array<DOMTree.shadowRoot>,
}
