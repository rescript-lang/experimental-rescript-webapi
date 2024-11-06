@@warning("-44")
@@warning("-33")
open WebCrypto

module Crypto = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Crypto/getRandomValues)
    */
  @send
  external getRandomValues: (crypto, 't) => 't = "getRandomValues"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Crypto/randomUUID)
    */
  @send
  external randomUUID: crypto => string = "randomUUID"
}
