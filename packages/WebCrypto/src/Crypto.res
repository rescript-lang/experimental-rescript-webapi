/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Crypto/getRandomValues)
*/
@send
external getRandomValues: (Types.crypto, 't) => 't = "getRandomValues"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Crypto/randomUUID)
*/
@send
external randomUUID: Types.crypto => string = "randomUUID"
