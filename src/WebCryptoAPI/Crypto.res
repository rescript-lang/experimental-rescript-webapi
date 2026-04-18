open WebCryptoTypes

type t = WebCryptoTypes.crypto = {...WebCryptoTypes.crypto}

external current: t = "crypto"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Crypto/getRandomValues)
*/
@send
external getRandomValues: (t, 't) => 't = "getRandomValues"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Crypto/randomUUID)
*/
@send
external randomUUID: t => string = "randomUUID"
