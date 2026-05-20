/**
An object of this type is returned by the files property of the HTML <input> element; this lets you access the list of files selected with the <input type="file"> element. It's also used for a list of files dropped into web content when using the drag and drop API; see the DataTransfer object for details on this usage.
[See FileList on MDN](https://developer.mozilla.org/docs/Web/API/FileList)
*/
@editor.completeFrom(FileList)
type t = private {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileList/length)
    */
  length: int,
}

/**
Returns the `WebApiFile` at the specified index.

`FileList` is not an array, so you need to iterate manually using `length` and `item`:

```rescript
let files = []
for i in 0 to fileList.length - 1 {
  files->Array.push(fileList->FileList.item(i))
}
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileList/item)
*/
@send
external item: (t, int) => FileTypes.file = "item"
