module MObserver = MutationObserver.MutationObserver

let observer = MObserver.make((mutations, obs) => {
  let button = DOM.Global.document->DOM.Document.querySelector("button")
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
  ~target=DOM.Global.document->DOM.Document.asNode,
  ~options={childList: true, subtree: true},
)

let records = observer->MObserver.takeRecords
Console.log(records->Array.length)

observer->MObserver.disconnect
