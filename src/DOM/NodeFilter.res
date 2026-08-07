type t = private {}

@send
external acceptNode: (t, DOMTree.node) => int = "acceptNode"
