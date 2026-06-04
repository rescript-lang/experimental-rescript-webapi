module MObserver = MutationObserver

external documentAsNode: Document.t => Node.t = "%identity"

let observer = MObserver.make((mutations, obs) => {
  let button = Document.querySelector("button")
  switch button->Null.toOption {
  | Some(button) => {
      Console.log(button)
      obs->MObserver.disconnect
    }
  | None => ()
  }
  Console.log(mutations)
})

observer->MObserver.observe(
  ~target=DomGlobal.document->documentAsNode,
  ~options={childList: true, subtree: true},
)

let records = observer->MObserver.takeRecords
Console.log(records->Array.length)

observer->MObserver.disconnect
