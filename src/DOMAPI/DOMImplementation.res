@@warning("-33")
open DOMAPI

module DOMImplementation = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMImplementation/createDocumentType)
    */
  @send
  external createDocumentType: (domImplementation, string, string, string) => documentType =
    "createDocumentType"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMImplementation/createDocument)
    */
  @send
  external createDocument: (domImplementation, string, string, documentType) => xmlDocument =
    "createDocument"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMImplementation/createHTMLDocument)
    */
  @send
  external createHTMLDocument: (domImplementation, string) => document = "createHTMLDocument"
}
