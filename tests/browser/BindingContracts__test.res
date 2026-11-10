@scope("globalThis")
external crypto: Crypto.t = "crypto"

@scope("globalThis")
external document: DOM.document = "document"

@scope("globalThis")
external indexedDB: IndexedDbTypes.idbFactory = "indexedDB"

@scope("globalThis")
external navigator: Navigator.t = "navigator"

@send
external readByteStreamChunk: FileTypes.readableStreamReader<Uint8Array.t> => promise<unknown> =
  "read"

@send
external cancelByteStreamReader: FileTypes.readableStreamReader<Uint8Array.t> => promise<unit> =
  "cancel"

let withResolver = (_run: (unit => unit) => unit): promise<unit> =>
  %raw(`new Promise(resolve => _run(resolve))`)

let hasResizeCallbackArgs = (_entries, _observer) =>
  %raw(`_entries.length > 0 && _observer instanceof ResizeObserver`)
let createResizeSignals = () => %raw(`({count: 0, resolvers: []})`)
let waitForResizeSignal = (_signals: unknown): promise<unit> =>
  %raw(`new Promise(resolve => _signals.resolvers.push(resolve))`)
let resolveNextResizeSignal = (_signals: unknown): unit => %raw(`_signals.resolvers.shift()()`)
let incrementResizeCount = (_signals: unknown): int => %raw(`++_signals.count`)
let setSize = (_target: DOMTree.element, _pixels: int): unit =>
  %raw(`(_target.style.width = _pixels + "px", _target.style.height = _pixels + "px")`)

let isNull = _value => %raw(`_value === null`)
let isUndefined = _value => %raw(`_value === undefined`)
let isKnownNotificationPermission = _permission =>
  %raw(`_permission === "default" || _permission === "denied" || _permission === "granted"`)
let containsABCByteChunk = _result =>
  %raw(`_result.value instanceof Uint8Array && _result.value.length === 3 && _result.value[0] === 65 && _result.value[1] === 66 && _result.value[2] === 67`)
let appendChild = (_parent, _child) => %raw(`_parent.appendChild(_child)`)

let appendToDocument = _target => %raw(`document.body.appendChild(_target)`)
let onSuccess = (_request, _callback) =>
  %raw(`_request.addEventListener("success", _callback, {once: true})`)
let releaseLock = () => %raw(`globalThis.__releaseBindingLock()`)

let isUint8ArrayWithABC = _bytes =>
  %raw(`_bytes instanceof Uint8Array && _bytes.length === 3 && _bytes[0] === 65 && _bytes[1] === 66 && _bytes[2] === 67`)

let isNonIdentityFloat32Matrix = _values =>
  %raw(`_values instanceof Float32Array && _values.length === 16 && _values[0] === 2 && _values[5] === 3 && _values[12] === 4 && _values[13] === 5 && _values[15] === 1`)

let wrongMiddleBytes: Uint8Array.t = %raw(`new Uint8Array([65, 0, 67])`)
assert(!isUint8ArrayWithABC(wrongMiddleBytes))
let wrongMiddleChunk: unknown = %raw(`({value: new Uint8Array([65, 0, 67])})`)
assert(!containsABCByteChunk(wrongMiddleChunk))

let bytes = await Response.fromString("ABC")->Response.bytes
assert(isUint8ArrayWithABC(bytes))

let requestBytes = await Request.fromURL(
  "https://example.invalid/",
  ~init={method: "POST", body: Nullable.make(BodyInit.fromString("ABC"))},
)->Request.bytes
assert(isUint8ArrayWithABC(requestBytes))

let emptyStateRequest = Request.fromURL("https://example.invalid/")
assert(%raw(`emptyStateRequest.destination === "" && emptyStateRequest.referrerPolicy === ""`))

let blobBytes = await Blob.make(~blobParts=[Blob.blobPartFromString("ABC")])->Blob.bytes
assert(isUint8ArrayWithABC(blobBytes))

let byteStream = Blob.make(~blobParts=[Blob.blobPartFromString("ABC")])->Blob.stream
let byteStreamReader = byteStream->ReadableStream.getReader
let firstChunk = await byteStreamReader->readByteStreamChunk
assert(containsABCByteChunk(firstChunk))
await byteStreamReader->cancelByteStreamReader
let responseFromByteStream = Response.fromReadableStream(
  Blob.make(~blobParts=[Blob.blobPartFromString("ABC")])->Blob.stream,
)
let responseStreamBytes = await responseFromByteStream->Response.bytes
assert(isUint8ArrayWithABC(responseStreamBytes))

let audio: HTMLAudioElement.t = %raw(`document.createElement("audio")`)
assert(audio->HTMLAudioElement.canPlayType("application/x-webapi-unsupported") ==
  DomHTMLMediaElement.Empty)

let permission = Notification.permission
assert(isKnownNotificationPermission(permission))

switch Document.createElement(document, "canvas")->HTMLCanvasElement.classify {
| Some(canvas) => {
    canvas->HTMLCanvasElement.setWidth(320)
    canvas->HTMLCanvasElement.setHeight(200)
    assert(canvas->HTMLCanvasElement.width == 320)
    assert(canvas->HTMLCanvasElement.height == 200)
    canvas->HTMLCanvasElement.setHidden(HTMLElement.Hidden)
    assert(canvas->HTMLCanvasElement.hidden == HTMLElement.Hidden)
    canvas->HTMLCanvasElement.setHidden(HTMLElement.Visible)
    switch canvas->HTMLCanvasElement.getContext2D {
    | Null.Value(context) => context->CanvasRenderingContext2D.fillRect(~x=0., ~y=0., ~w=1., ~h=1.)
    | Null => assert(false)
    }
    canvas->HTMLCanvasElement.setWidth(0)
    canvas->HTMLCanvasElement.setHeight(0)
    await withResolver(resolve =>
      canvas->HTMLCanvasElement.toBlob(~callback=_blob => {
        assert(isNull(_blob))
        resolve()
      })
    )
  }
| None => assert(false)
}

let formData = FormData.make()
FormData.append(formData, ~name="text", ~value="native string")
switch FormData.get(formData, "text")->Null.toOption {
| Some(value) =>
  switch FormDataEntryValue.decode(value) {
  | Some(FormDataEntryValue.String(text)) => assert(text == "native string")
  | Some(FormDataEntryValue.File(_)) | None => assert(false)
  }
| None => assert(false)
}

let file = File.make(~fileBits=[Blob.blobPartFromString("native file")], ~fileName="contract.txt")
FormData.appendBlob(formData, ~name="file", ~blobValue=File.asBlob(file), ~filename="contract.txt")
switch FormData.get(formData, "file")->Null.toOption {
| Some(value) =>
  switch FormDataEntryValue.decode(value) {
  | Some(FormDataEntryValue.File(decodedFile)) => assert(File.name(decodedFile) == "contract.txt")
  | Some(FormDataEntryValue.String(_)) | None => assert(false)
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

let htmlParent: HTMLDivElement.t = %raw(`document.createElement("div")`)
htmlParent->HTMLDivElement.setAttribute(~qualifiedName="class", ~value="binding-contracts-html")
assert(htmlParent.className == "binding-contracts-html")
let htmlChild: HTMLSpanElement.t = %raw(`document.createElement("span")`)
htmlChild->HTMLSpanElement.setAttribute(
  ~qualifiedName="class",
  ~value="binding-contracts-html-child",
)
appendChild(htmlParent, htmlChild)
let broadHtmlResult = htmlParent->HTMLDivElement.querySelector(".binding-contracts-html-child")
assert(%raw(`broadHtmlResult !== null && typeof broadHtmlResult.className === "string"`))

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
let analyserFloats: Float32Array.t = %raw(`new Float32Array([0.5, -0.5])`)
analyser->AnalyserNode.getFloatTimeDomainData(analyserFloats)
assert(%raw(`analyserFloats instanceof Float32Array && analyserFloats[0] === 0 && analyserFloats[1] === 0`))

let filter = audioContext->OfflineAudioContext.createBiquadFilter
let frequencies: Float32Array.t = %raw(`new Float32Array([440, 880])`)
let magnitudes: Float32Array.t = %raw(`new Float32Array([-123, -123])`)
let phases: Float32Array.t = %raw(`new Float32Array([-456, -456])`)
filter->BiquadFilterNode.getFrequencyResponse(
  ~frequencyHz=frequencies,
  ~magResponse=magnitudes,
  ~phaseResponse=phases,
)
assert(%raw(`magnitudes instanceof Float32Array && phases instanceof Float32Array && magnitudes.length === 2 && phases.length === 2 && magnitudes[0] !== -123 && phases[0] !== -456 && !Number.isNaN(magnitudes[0])`))

let iirFilter = IIRFilterNode.make(
  ~context=audioContext->OfflineAudioContext.asBaseAudioContext,
  ~options={feedforward: [1.], feedback: [1.]},
)
let iirMagnitudes: Float32Array.t = %raw(`new Float32Array([-123, -123])`)
let iirPhases: Float32Array.t = %raw(`new Float32Array([-456, -456])`)
iirFilter->IIRFilterNode.getFrequencyResponse(
  ~frequencyHz=frequencies,
  ~magResponse=iirMagnitudes,
  ~phaseResponse=iirPhases,
)
assert(%raw(`iirMagnitudes instanceof Float32Array && iirMagnitudes[0] !== -123 && !Number.isNaN(iirMagnitudes[0]) && iirPhases instanceof Float32Array && iirPhases[0] !== -456`))

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

let matrixValues = Float32Array.fromArray([2., 0., 0., 3., 4., 5.])
let matrix = DOMMatrix.fromFloat32Array(matrixValues)
assert(isNonIdentityFloat32Matrix(matrix->DOMMatrixReadOnly.toFloat32Array))
let readOnlyMatrix = DOMMatrixReadOnly.fromFloat32Array(matrixValues)
assert(isNonIdentityFloat32Matrix(readOnlyMatrix->DOMMatrixReadOnly.toFloat32Array))

let target: DOMTree.element = %raw(`document.createElement("div")`)
appendToDocument(target)
let resizeSignals = createResizeSignals()
let initialResize = waitForResizeSignal(resizeSignals)
let resizedAgain = waitForResizeSignal(resizeSignals)
setSize(target, 10)
let observer = ResizeObserver.make((entries, observer) => {
  assert(hasResizeCallbackArgs(entries, observer))
  if incrementResizeCount(resizeSignals) == 2 {
    observer->ResizeObserver.disconnect
  }
  resolveNextResizeSignal(resizeSignals)
})
observer->ResizeObserver.observe(~target)
await initialResize
setSize(target, 20)
await resizedAgain
target->Element.remove

let subtle = crypto->Crypto.subtle
let digest = await subtle->SubtleCrypto.digest(
  ~algorithm=SubtleCrypto.algorithmObject({name: "SHA-256"}),
  ~data=Uint8Array.fromArray([65, 66, 67])->SubtleCrypto.binaryDataFromUint8Array,
)
let digestBytes: Uint8Array.t = %raw(`new Uint8Array(digest)`)
assert(%raw(`digest.byteLength === 32 && digestBytes instanceof Uint8Array && digestBytes.length === 32 && digestBytes.buffer === digest`))

let data = Uint8Array.fromArray([65, 66, 67])->SubtleCrypto.binaryDataFromUint8Array
let hmacKey = await subtle->SubtleCrypto.generateKeySymmetric(
  ~hash=SubtleCrypto.algorithmObject({name: "SHA-256"}),
  ~length=256,
  ~extractable=true,
  ~keyUsages=[SubtleCrypto.signUsage, SubtleCrypto.verifyUsage],
)
let _publicHmacKey: SubtleCrypto.cryptoKey = hmacKey
let signature = await subtle->SubtleCrypto.sign(
  ~algorithm=SubtleCrypto.algorithmObject({name: "HMAC"}),
  ~key=hmacKey,
  ~data,
)
let verified = await subtle->SubtleCrypto.verify(
  ~algorithm=SubtleCrypto.algorithmObject({name: "HMAC"}),
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
  ~algorithm=SubtleCrypto.algorithmObject({name: "ECDSA", hash: {name: "SHA-256"}}),
  ~key=keyPair.privateKey,
  ~data,
)
assert(await subtle->SubtleCrypto.verify(
  ~algorithm=SubtleCrypto.algorithmObject({name: "ECDSA", hash: {name: "SHA-256"}}),
  ~key=keyPair.publicKey,
  ~signature=SubtleCrypto.binaryDataFromArrayBuffer(pairSignature),
  ~data,
))

let aesKeyData =
  Uint8Array.fromArray([
    0,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
  ])->SubtleCrypto.binaryDataFromUint8Array
let aesKey = await subtle->SubtleCrypto.importKey(
  ~format=SubtleCrypto.rawKeyFormat,
  ~keyData=aesKeyData,
  ~algorithm=SubtleCrypto.algorithmObject({name: "AES-GCM", length: 128}),
  ~extractable=true,
  ~keyUsages=[SubtleCrypto.encryptUsage, SubtleCrypto.decryptUsage],
)
let aesIv =
  Uint8Array.fromArray([
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
  ])->SubtleCrypto.binaryDataFromUint8Array
let aesAlgorithm = SubtleCrypto.algorithmObject({name: "AES-GCM", iv: aesIv, tagLength: 128})
let ciphertext = await subtle->SubtleCrypto.encrypt(~algorithm=aesAlgorithm, ~key=aesKey, ~data)
let plaintext = await subtle->SubtleCrypto.decrypt(
  ~algorithm=aesAlgorithm,
  ~key=aesKey,
  ~data=SubtleCrypto.binaryDataFromArrayBuffer(ciphertext),
)
let plaintextBytes: Uint8Array.t = %raw(`new Uint8Array(plaintext)`)
assert(isUint8ArrayWithABC(plaintextBytes))
