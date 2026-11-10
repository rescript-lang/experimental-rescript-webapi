let assignedNodesForElement = (element: DOMTree.element) =>
  switch element.assignedSlot {
  | Value(slot) =>
    slot->HTMLSlotElement.setName("content")
    slot->HTMLSlotElement.assignedNodes
  | Null => []
  }

let assignedNodesForText = (text: Text.t) =>
  switch text.assignedSlot {
  | Value(slot) =>
    slot->HTMLSlotElement.setName("content")
    slot->HTMLSlotElement.assignedNodes
  | Null => []
  }
