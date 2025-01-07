let observer = IntersectionObserver.make(~callback=(entry, observer) => {
  Console.log2(entry, observer)
})

let observer2 = IntersectionObserver.make(~callback=(entry, observer) => {
  Console.log2(entry, observer)
}, ~options={rootMargin: "10px", threshold: [0.1]})

let root2 = observer2.root
let rootMargin2 = observer2.rootMargin

let targetElement = Global.document->Document.querySelector("#targetElement")->Null.toOption
switch targetElement {
| Some(e) => {
    observer2->IntersectionObserver.observe(e)
    observer2->IntersectionObserver.unobserve(e)
  }
| _ => Console.log("Target element not found.")
}

let entries2 = observer2->IntersectionObserver.takeRecords
Console.log(entries2->Array.length)

observer2->IntersectionObserver.disconnect
