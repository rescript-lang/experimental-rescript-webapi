let assignedNodesForElement = (element: DOMTree.element) =>
  switch element.assignedSlot {
  | Value(slot) =>
    slot.name = "content"
    slot->HTMLSlotElement.assignedNodes
  | Null => []
  }

let assignedNodesForText = (text: Text.t) =>
  switch text.assignedSlot {
  | Value(slot) =>
    slot.name = "content"
    slot->HTMLSlotElement.assignedNodes
  | Null => []
  }
