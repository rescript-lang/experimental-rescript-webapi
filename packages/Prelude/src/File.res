/**
A file-like object of immutable, raw data. Blobs represent data that isn't necessarily in a JavaScript-native format. The WebApiFile interface is based on Blob, inheriting blob functionality and expanding it to support files on the user's system.
[See Blob on MDN](https://developer.mozilla.org/docs/Web/API/Blob)
*/
@editor.completeFrom(WebApiFile.Blob)
type blob = private {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Blob/size)
    */
  size: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Blob/type)
    */
  @as("type")
  type_: string,
}

/**
Provides information about files and allows JavaScript in a web page to access their content.
[See WebApiFile on MDN](https://developer.mozilla.org/docs/Web/API/WebApiFile)
*/
@editor.completeFrom(WebApiFile.File)
type file = private {
  ...blob,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiFile/name)
    */
  name: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiFile/lastModified)
    */
  lastModified: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiFile/webkitRelativePath)
    */
  webkitRelativePath: string,
}
