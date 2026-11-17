let transfer = DataTransfer.make()
transfer->DataTransfer.setData(~format="text/plain", ~data="clipboard")
assert(transfer->DataTransfer.getData("text/plain") == "clipboard")
transfer.dropEffect = "copy"
assert(transfer.dropEffect == "copy")
let file = File.make(~fileBits=[String("data")], ~fileName="transfer.txt")
let item = transfer.items->DataTransferItemList.addFile(file)->Null.toOption

switch item {
| Some(item) =>
  let recovered = item->DataTransferItem.getAsFile->Null.toOption
  assert(switch recovered {
  | Some(value) => value.name == "transfer.txt"
  | None => false
  })
  assert(item->DataTransferItem.webkitGetAsEntry->Null.toOption == None)
| None => assert(false)
}

assert(transfer.files.length == 1)
let emptyTransfer = DataTransfer.make()
assert(emptyTransfer.items.length == 0)

// Chromium is the supported runner; fail explicitly if Touch construction is absent.
let touchSupported: bool = %raw(`typeof Touch === "function" && typeof TouchEvent === "function"`)
assert(touchSupported)
let target: DOM.eventTarget = %raw(`document.body`)
let touch = Touch.make({identifier: 7, target, clientX: 12.5, touchType: Touch.Direct})
assert(touch.identifier == 7 && touch.clientX == 12.5)
let event = TouchEvent.make(~type_="touchstart", ~eventInitDict={touches: [touch]})
assert(event.touches.length == 1)
assert(event.touches->TouchList.item(1)->Null.toOption == None)

assert(switch event.touches->TouchList.item(0)->Null.toOption {
| Some(value) => value.identifier == 7
| None => false
})
