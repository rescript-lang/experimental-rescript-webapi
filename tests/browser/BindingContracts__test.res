@scope("globalThis")
external crypto: Crypto.t = "crypto"

@scope("globalThis")
external document: DOM.document = "document"

@scope("globalThis")
external indexedDB: IndexedDbTypes.idbFactory = "indexedDB"

@scope("globalThis")
external navigator: Navigator.t = "navigator"

let withResolver = (_run: (unit => unit) => unit): promise<unit> =>
  %raw(`new Promise(resolve => _run(resolve))`)

let hasResizeCallbackArgs = (_entries, _observer) =>
  %raw(`_entries.length > 0 && _observer instanceof ResizeObserver`)

let isNull = _value => %raw(`_value === null`)
let isUndefined = _value => %raw(`_value === undefined`)
let appendChild = (_parent, _child) => %raw(`_parent.appendChild(_child)`)

let appendToDocument = _target => %raw(`document.body.appendChild(_target)`)
let onSuccess = (_request, _callback) =>
  %raw(`_request.addEventListener("success", _callback, {once: true})`)
let createWorker = () =>
  %raw(`new Worker(new URL("/tests/browser/worker-fetch.mjs", location.href), {type: "module"})`)
let awaitWorkerMessage = _worker =>
  %raw(`new Promise((resolve, reject) => {
    _worker.addEventListener("message", event => resolve(event.data), {once: true});
    _worker.addEventListener("error", reject, {once: true});
  })`)
let postWorkerMessage = _worker => %raw(`_worker.postMessage(null)`)
let stopWorker = _worker => %raw(`_worker.terminate()`)
let releaseLock = () => %raw(`globalThis.__releaseBindingLock()`)

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

let emptyStateRequest = Request.fromURL("https://example.invalid/")
assert(%raw(`emptyStateRequest.destination === "" && emptyStateRequest.referrerPolicy === ""`))

let blobBytes = await Blob.make(~blobParts=[String("ABC")])->Blob.bytes
assert(isUint8ArrayWithABC(blobBytes))

let audio: HTMLAudioElement.t = %raw(`document.createElement("audio")`)
assert(audio->HTMLAudioElement.canPlayType("application/x-webapi-unsupported") ==
  DomHTMLMediaElement.Empty)

let _notificationPermission = Notification.permission

let worker = createWorker()
let workerResponse = awaitWorkerMessage(worker)
postWorkerMessage(worker)
let workerBody = await workerResponse
stopWorker(worker)
assert(%raw(`workerBody === "worker-fetch-body\n"`))

switch Document.createElement(document, "canvas")->HTMLCanvasElement.classify {
| Some(canvas) => {
    canvas.width = 0
    canvas.height = 0
    await withResolver(resolve =>
      canvas->HTMLCanvasElement.toBlob(~callback=_blob => {
        assert(isNull(_blob))
        resolve()
      })
    )
  }
| None => assert(false)
}

%raw(`globalThis.BindingContractsElement = class extends HTMLElement {}`)

@scope("globalThis")
external customElements: DOM.customElementRegistry = "customElements"

@scope("globalThis")
external bindingContractsConstructor: DOM.customElementConstructor = "BindingContractsElement"

let customElementName = "webapi-binding-contracts"
CustomElementRegistry.define(
  customElements,
  ~name=customElementName,
  ~constructor=bindingContractsConstructor,
)
let customElement = Document.createElement(document, customElementName)
assert(%raw(`customElement instanceof globalThis.BindingContractsElement`))

let inputAncestor: DOMTree.element = Document.createElement(document, "input")
let spanDescendant: DOMTree.element = Document.createElement(document, "span")
appendToDocument(inputAncestor)
appendChild(inputAncestor, spanDescendant)
let closestInput = spanDescendant->Element.closest("input")
assert(%raw(`closestInput !== null && closestInput.tagName === "INPUT"`))
spanDescendant->Element.remove
inputAncestor->Element.remove

let svg: SVGElement.t = %raw(`document.createElementNS("http://www.w3.org/2000/svg", "svg")`)
svg.className.baseVal = "binding-contracts-svg"
assert(svg.className.baseVal == "binding-contracts-svg")
let circle: SVGElement.t = %raw(`document.createElementNS("http://www.w3.org/2000/svg", "circle")`)
appendChild(svg, circle)
let broadSvgResult = svg->SVGElement.querySelector("circle")
assert(%raw(`broadSvgResult !== null && typeof broadSvgResult.className === "object" && broadSvgResult.className.baseVal === ""`))

let audioContext = OfflineAudioContext.fromChannelCountLengthAndSampleRate(
  ~numberOfChannels=1,
  ~length=128,
  ~sampleRate=44100.,
)
let audioBuffer =
  audioContext->OfflineAudioContext.createBuffer(
    ~numberOfChannels=1,
    ~length=128,
    ~sampleRate=44100.,
  )
let sourceChannel: Float32Array.t = %raw(`new Float32Array([0.5, -0.25])`)
audioBuffer->AudioBuffer.copyToChannel(~source=sourceChannel, ~channelNumber=0)
let channelData = audioBuffer->AudioBuffer.getChannelData(0)
assert(%raw(`channelData instanceof Float32Array && channelData[0] === 0.5 && channelData[1] === -0.25`))

let destination: Float32Array.t = %raw(`new Float32Array(2)`)
audioBuffer->AudioBuffer.copyFromChannel(~destination, ~channelNumber=0)
assert(%raw(`destination instanceof Float32Array && destination[0] === 0.5 && destination[1] === -0.25`))

let analyser = audioContext->OfflineAudioContext.createAnalyser
let analyserBytes: Uint8Array.t = %raw(`new Uint8Array(32)`)
analyser->AnalyserNode.getByteTimeDomainData(analyserBytes)
assert(%raw(`analyserBytes instanceof Uint8Array && analyserBytes.length === 32 && analyserBytes[0] === 128`))

let filter = audioContext->OfflineAudioContext.createBiquadFilter
let frequencies: Float32Array.t = %raw(`new Float32Array([440, 880])`)
let magnitudes: Float32Array.t = %raw(`new Float32Array(2)`)
let phases: Float32Array.t = %raw(`new Float32Array(2)`)
filter->BiquadFilterNode.getFrequencyResponse(
  ~frequencyHz=frequencies,
  ~magResponse=magnitudes,
  ~phaseResponse=phases,
)
assert(%raw(`magnitudes instanceof Float32Array && phases instanceof Float32Array && magnitudes.length === 2 && phases.length === 2`))

let deleteRequest = IDBFactory.deleteDatabase(indexedDB, "binding-contracts-regression")
await withResolver(resolve =>
  onSuccess(deleteRequest, () => {
    assert(isUndefined(deleteRequest.result))
    resolve()
  })
)

let lockManager = navigator->Navigator.locks
await withResolver(resolve => {
  let _heldRequest = lockManager->LockManager.request(
    ~name="binding-contracts-contended-lock",
    ~callback=lock => {
      assert(!isNull(lock))
      resolve()
      %raw(`new Promise(done => { globalThis.__releaseBindingLock = done })`)
    },
  )
})
let _contendedRequest = await lockManager->LockManager.request2(
  ~name="binding-contracts-contended-lock",
  ~options={ifAvailable: true},
  ~callback=lock => {
    assert(isNull(lock))
    %raw(`Promise.resolve(null)`)
  },
)
releaseLock()

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
  ~hash={name: "SHA-256"},
  ~length=256,
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

let keyPair = await subtle->SubtleCrypto.generateEcdsaKeyPair(
  ~namedCurve="P-256",
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
