/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMImplementation/createDocumentType)
*/
@send
external createDocumentType: (
  Types.domImplementation,
  ~qualifiedName: string,
  ~publicId: string,
  ~systemId: string,
) => Types.documentType = "createDocumentType"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMImplementation/createDocument)
*/
@send
external createDocument: (
  Types.domImplementation,
  ~namespace: string,
  ~qualifiedName: string,
  ~doctype: Types.documentType=?,
) => Types.xmlDocument = "createDocument"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMImplementation/createHTMLDocument)
*/
@send
external createHTMLDocument: (Types.domImplementation, ~title: string=?) => Types.document =
  "createHTMLDocument"
