let observer: MutationObserver.t = MutationObserver.make((mutations, obs) => {
  let button = Window.current.document->Document.querySelector("button")
  switch button->Null.toOption {
  | Some(button) => {
      Console.log(button)
      obs->MutationObserver.disconnect
    }
  | None => ()
  }
  Console.log(mutations)
})

observer->MutationObserver.observe(
  ~target=Window.current.document->Document.asNode,
  ~options={childList: true, subtree: true},
)

let records = observer->MutationObserver.takeRecords
Console.log(records->Array.length)

observer->MutationObserver.disconnect
