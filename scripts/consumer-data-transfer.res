let make = (): WebAPI.DataTransfer.t => WebAPI.DataTransfer.make()
let addFile = (data: WebAPI.DataTransfer.t, file: WebAPI.DOM.file) =>
  data.items->WebAPI.DataTransferItemList.addFile(file)
let getFile = (item: WebAPI.DataTransferItem.t): Null.t<WebAPI.DOM.file> =>
  item->WebAPI.DataTransferItem.getAsFile
let legacyEntry = (item: WebAPI.DataTransferItem.t): Null.t<WebAPI.FileSystemEntry.t> =>
  item->WebAPI.DataTransferItem.webkitGetAsEntry
let dragImage = (data: WebAPI.DataTransfer.t, element: WebAPI.DOMTree.element) =>
  data->WebAPI.DataTransfer.setDragImage(~image=element, ~x=0, ~y=0)
let mutate = (data: WebAPI.DataTransfer.t) => {
  data->WebAPI.DataTransfer.setDropEffect("copy")
  data->WebAPI.DataTransfer.setEffectAllowed("copyMove")
}
