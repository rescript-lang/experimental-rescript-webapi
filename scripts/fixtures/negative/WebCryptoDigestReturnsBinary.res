@scope("globalThis")
external crypto: WebAPI.Crypto.t = "crypto"

let data =
  WebAPI.SubtleCrypto.binaryDataFromUint8Array(Uint8Array.fromArray([65, 66, 67]))
let _digest: JSON.t = await crypto.subtle->WebAPI.SubtleCrypto.digest(~algorithm={name: "SHA-256"}, ~data)
