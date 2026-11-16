// NodeFilter is a caller-owned callback interface, not a browser-created instance.
type t = {acceptNode: DOMTree.node => int}

@send
external acceptNode: (t, DOMTree.node) => int = "acceptNode"
