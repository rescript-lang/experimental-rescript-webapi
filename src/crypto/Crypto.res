/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Crypto/getRandomValues)
*/
@throws(JsExn) @send
external getRandomValues: (WebCryptoTypes.crypto, 't) => 't = "getRandomValues"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Crypto/randomUUID)
*/
@send
external randomUUID: WebCryptoTypes.crypto => string = "randomUUID"
