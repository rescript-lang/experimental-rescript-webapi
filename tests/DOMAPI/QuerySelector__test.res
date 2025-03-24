// Option 1
Global.document
->Document.querySelectorAsHeading("h2")
->Option.forEach(heading => {
  heading.style.color = "red"
})

// Option 2
Global.document
->Document.querySelectorAsHeading("h2")
->Option.flatMap(HTMLHeadingElement.tryParse)
->Option.forEach(heading => {
  heading.style.color = "red"
})
