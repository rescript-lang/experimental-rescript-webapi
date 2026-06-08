type t = DOMTypes.domImplementation = private {...DOMTypes.domImplementation}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMImplementation/createDocumentType)
*/
@send
external createDocumentType: (
  t,
  ~qualifiedName: string,
  ~publicId: string,
  ~systemId: string,
) => DOMTypes.documentType = "createDocumentType"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMImplementation/createDocument)
*/
@send
external createDocument: (
  t,
  ~namespace: string,
  ~qualifiedName: string,
  ~doctype: DOMTypes.documentType=?,
) => DOMTypes.xmlDocument = "createDocument"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMImplementation/createHTMLDocument)
*/
@send
external createHTMLDocument: (t, ~title: string=?) => Document.t = "createHTMLDocument"
