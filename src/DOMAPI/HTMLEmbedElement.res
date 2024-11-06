open DOMAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLEmbedElement)
*/
@new
external make: unit => htmlEmbedElement = "HTMLEmbedElement"
@send
external getSVGDocument: htmlEmbedElement => document = "getSVGDocument"
