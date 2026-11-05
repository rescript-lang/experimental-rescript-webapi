@scope("globalThis")
external crypto: Crypto.t = "crypto"

let withResolver = (_run: (unit => unit) => unit): promise<unit> =>
  %raw(`new Promise(resolve => _run(resolve))`)

let hasResizeCallbackArgs = (_entries, _observer) =>
  %raw(`_entries.length > 0 && _observer instanceof ResizeObserver`)

let appendToDocument = _target => %raw(`document.body.appendChild(_target)`)

let isUint8ArrayWithABC = _bytes =>
  %raw(`_bytes instanceof Uint8Array && _bytes.length === 3 && _bytes[0] === 65 && _bytes[2] === 67`)

let isFloat32ArrayWithSixteenValues = _values =>
  %raw(`_values instanceof Float32Array && _values.length === 16 && _values[0] === 1 && _values[15] === 1`)

let bytes = await Response.fromString("ABC")->Response.bytes
assert(isUint8ArrayWithABC(bytes))

let requestBytes = await Request.fromURL(
  "https://example.invalid/",
  ~init={method: "POST", body: Nullable.make(BodyInit.fromString("ABC"))},
)->Request.bytes
assert(isUint8ArrayWithABC(requestBytes))

let blobBytes = await Blob.make(~blobParts=[String("ABC")])->Blob.bytes
assert(isUint8ArrayWithABC(blobBytes))

let matrix = DOMMatrix.fromFloat32Array(Float32Array.fromArray([1., 0., 0., 1., 0., 0.]))
assert(isFloat32ArrayWithSixteenValues(matrix->DOMMatrixReadOnly.toFloat32Array))

let target: DOMTree.element = %raw(`document.createElement("div")`)
appendToDocument(target)
await withResolver(resolve => {
  let observer = ResizeObserver.make((entries, observer) => {
    observer->ResizeObserver.disconnect
    assert(hasResizeCallbackArgs(entries, observer))
    resolve()
  })
  observer->ResizeObserver.observe(~target)
})
target->Element.remove

let subtle = crypto.subtle
let digest = await subtle->SubtleCrypto.digest(
  ~algorithm={name: "SHA-256"},
  ~data=Uint8Array.fromArray([65, 66, 67])->SubtleCrypto.binaryDataFromUint8Array,
)
assert(%raw(`digest.byteLength === 32`))

let data = Uint8Array.fromArray([65, 66, 67])->SubtleCrypto.binaryDataFromUint8Array
let hmacKey = await subtle->SubtleCrypto.generateKeySymmetric(
  ~algorithm={name: "HMAC", hash: {name: "SHA-256"}, length: 256},
  ~extractable=true,
  ~keyUsages=[SubtleCrypto.signUsage, SubtleCrypto.verifyUsage],
)
let _publicHmacKey: SubtleCrypto.cryptoKey = hmacKey
let signature = await subtle->SubtleCrypto.sign(~algorithm={name: "HMAC"}, ~key=hmacKey, ~data)
let verified = await subtle->SubtleCrypto.verify(
  ~algorithm={name: "HMAC"},
  ~key=hmacKey,
  ~signature=SubtleCrypto.binaryDataFromArrayBuffer(signature),
  ~data,
)
assert(verified)

let rawKey = await subtle->SubtleCrypto.exportKeyBinary(~format=SubtleCrypto.Raw, ~key=hmacKey)
let jwk = await subtle->SubtleCrypto.exportKeyJwk(~format=SubtleCrypto.Jwk, ~key=hmacKey)
assert(%raw(`rawKey.byteLength === 32 && jwk.kty === "oct"`))

let keyPair = await subtle->SubtleCrypto.generateKeyPair(
  ~algorithm={name: "ECDSA", namedCurve: "P-256"},
  ~extractable=true,
  ~keyUsages=[SubtleCrypto.signUsage, SubtleCrypto.verifyUsage],
)
let _publicKeyPair: SubtleCrypto.cryptoKeyPair = keyPair
let pairSignature = await subtle->SubtleCrypto.sign(
  ~algorithm={name: "ECDSA", hash: {name: "SHA-256"}},
  ~key=keyPair.privateKey,
  ~data,
)
assert(await subtle->SubtleCrypto.verify(
  ~algorithm={name: "ECDSA", hash: {name: "SHA-256"}},
  ~key=keyPair.publicKey,
  ~signature=SubtleCrypto.binaryDataFromArrayBuffer(pairSignature),
  ~data,
))
