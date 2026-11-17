let canvasToNode: WebAPI.HTMLCanvasElement.t => WebAPI.Node.t = WebAPI.HTMLCanvasElement.asNode
let canvasToElement: WebAPI.HTMLCanvasElement.t => WebAPI.Element.t = WebAPI.HTMLCanvasElement.asElement
let documentToNode: WebAPI.DOM.document => WebAPI.Node.t = WebAPI.Document.asNode
let svgToNode: WebAPI.SVGGraphicsElement.t => WebAPI.Node.t = WebAPI.SVGGraphicsElement.asNode
let textToCharacterData: WebAPI.Text.t => WebAPI.CharacterData.t = WebAPI.Text.asCharacterData
let fileToBlob: WebAPI.File.t => WebAPI.Blob.t = WebAPI.File.asBlob
let pointerToEvent = WebAPI.PointerEvent.asEvent
let pointerToMouseEvent = WebAPI.PointerEvent.asMouseEvent
let pushToEvent = WebAPI.PushEvent.asEvent
let oscillatorToNode = WebAPI.OscillatorNode.asAudioNode
let oscillatorToScheduled = WebAPI.OscillatorNode.asAudioScheduledSourceNode
let offlineToBase = WebAPI.OfflineAudioContext.asBaseAudioContext
let workerToEventTarget = WebAPI.Worker.asEventTarget
let sharedWorkerToEventTarget = WebAPI.SharedWorkerScope.asEventTarget

let reader: WebAPI.ReadableStream.t<string> => WebAPI.FileTypes.readableStreamReader<
  string,
> = stream => WebAPI.ReadableStream.getReader(stream)

let writer: WebAPI.WritableStream.t<string> => WebAPI.FileTypes.writableStreamDefaultWriter<
  string,
> = WebAPI.WritableStream.getWriter

let entries: WebAPI.Performance.Types.performance => array<
  WebAPI.PerformanceEntry.t,
> = WebAPI.Performance.getEntries

let emptyEntries: WebAPI.Performance.Types.performanceEntryList = []

let offscreenContextAlias: WebAPI.CanvasTypes.offscreenRenderingContext => WebAPI.DOM.offscreenRenderingContext = value =>
  value

let nodeFilter: WebAPI.NodeFilter.t = {acceptNode: _ => 1}

let attrToNode: WebAPI.Attr.t => WebAPI.Node.t = WebAPI.Attr.asNode
let cdataToText: WebAPI.CDATASection.t => WebAPI.Text.t = WebAPI.CDATASection.asText
let instructionToData: WebAPI.ProcessingInstruction.t => WebAPI.CharacterData.t = WebAPI.ProcessingInstruction.asCharacterData

let documentTypeToNode: WebAPI.DOMImplementation.documentType => WebAPI.Node.t =
  WebAPI.DOMImplementation.documentTypeAsNode
let xmlToDocument: WebAPI.DOMImplementation.xmlDocument => WebAPI.DOM.document =
  WebAPI.DOMImplementation.xmlDocumentAsDocument
let optionsToCollection: WebAPI.HTMLOptionsCollection.t => WebAPI.HTMLCollection.t<WebAPI.HTMLOptionElement.t> =
  WebAPI.HTMLOptionsCollection.asHTMLCollection
let resizeOptions = (options: WebAPI.HTMLOptionsCollection.t) =>
  options->WebAPI.HTMLOptionsCollection.setLength(0)
let audioToWorklet = (context: WebAPI.BaseAudioContext.t): WebAPI.Worklet.t =>
  context.audioWorklet->WebAPI.Worklet.fromAudioWorklet
