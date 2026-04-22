module MObserver = WebApi.MutationObserver.MutationObserver

let observer = MObserver.make((mutations, obs) => {
  let button = WebApi.DOM.Global.document->WebApi.DOM.Document.querySelector("button")
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
  ~target=WebApi.DOM.Global.document->WebApi.DOM.Document.asNode,
  ~options={childList: true, subtree: true},
)

let records = observer->MObserver.takeRecords
Console.log(records->Array.length)

observer->MObserver.disconnect
