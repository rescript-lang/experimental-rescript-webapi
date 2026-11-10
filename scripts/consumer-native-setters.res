let requestInit: WebAPI.Request.requestInit = {method: "POST"}
let responseInit: WebAPI.Response.responseInit = {status: 201}
let request = WebAPI.Request.fromURL("https://example.invalid", ~init=requestInit)
let response = WebAPI.Response.fromString("ok", ~init=responseInit)
let responseStatus = response.status

module NodeBindings = WebAPI.Node.Impl({type t = WebAPI.Node.t})
let setNodeText = (node: WebAPI.Node.t) => {
  node->NodeBindings.setTextContent(Null.Value("updated"))
  node.textContent
}

module ElementBindings = WebAPI.Element.Impl({type t = WebAPI.Element.t})
let setElementScroll = (element: WebAPI.Element.t) => {
  element->ElementBindings.setScrollTop(12.)
  element.scrollTop
}

let setCanvasSize = (canvas: WebAPI.HTMLCanvasElement.t) => {
  canvas->WebAPI.HTMLCanvasElement.setWidth(640)
  canvas->WebAPI.HTMLCanvasElement.setHeight(480)
  (canvas.width, canvas.height)
}

let setInputProperties = (input: WebAPI.HTMLInputElement.t) => {
  input->WebAPI.HTMLInputElement.setType("text")
  input->WebAPI.HTMLInputElement.setValue("ready")
  input->WebAPI.HTMLInputElement.setSelectionStart(Null.Value(0))
  input->WebAPI.HTMLInputElement.setSelectionEnd(Null.Value(5))
  (input.type_, input.value, input.selectionStart, input.selectionEnd)
}

let setButtonProperties = (button: WebAPI.HTMLButtonElement.t) => {
  button->WebAPI.HTMLButtonElement.setDisabled(false)
  button->WebAPI.HTMLButtonElement.setType("submit")
  button->WebAPI.HTMLButtonElement.setValue("send")
  (button.disabled, button.type_, button.value)
}

let setTemplateProperties = (template: WebAPI.HTMLTemplateElement.t) => {
  template->WebAPI.HTMLTemplateElement.setShadowRootMode(template.shadowRootMode)
  template->WebAPI.HTMLTemplateElement.setShadowRootDelegatesFocus(
    template.shadowRootDelegatesFocus,
  )
  template->WebAPI.HTMLTemplateElement.setShadowRootClonable(template.shadowRootClonable)
  template->WebAPI.HTMLTemplateElement.setShadowRootSerializable(template.shadowRootSerializable)
}

let setTableProperties = (table: WebAPI.HTMLTableElement.t) => {
  table->WebAPI.HTMLTableElement.setCaption(table.caption)
  table->WebAPI.HTMLTableElement.setTHead(table.tHead)
  table->WebAPI.HTMLTableElement.setTFoot(table.tFoot)
}

let setOffscreen2D = () => {
  let canvas = WebAPI.OffscreenCanvas.make(~width=1, ~height=1)
  switch canvas->WebAPI.OffscreenCanvas.getContext2D {
  | Null => ()
  | Value(context) =>
    context->WebAPI.OffscreenCanvasRenderingContext2D.setGlobalAlpha(0.5)
  }
}

let setOffscreenWebGL = () => {
  let canvas = WebAPI.OffscreenCanvas.make(~width=1, ~height=1)
  switch canvas->WebAPI.OffscreenCanvas.getContextWebGL {
  | Null => ()
  | Value(context) =>
    context->WebAPI.WebGLRenderingContext.setDrawingBufferColorSpace(context.drawingBufferColorSpace)
  }
}

let setOffscreenWebGL2 = () => {
  let canvas = WebAPI.OffscreenCanvas.make(~width=1, ~height=1)
  switch canvas->WebAPI.OffscreenCanvas.getContextWebGL2 {
  | Null => ()
  | Value(context) =>
    context->WebAPI.WebGL2RenderingContext.setUnpackColorSpace(context.unpackColorSpace)
  }
}

let setSvgStringValue = (element: WebAPI.SVGElement.t) => {
  element.className->WebAPI.SVGElement.setAnimatedStringBaseVal("graphics")
  element.className.baseVal
}

module AudioNodeBindings = WebAPI.AudioNode.Impl({type t = WebAPI.AudioNode.t})
let setAudioNodeChannels = (node: WebAPI.AudioNode.t) => {
  node->AudioNodeBindings.setChannelCount(2)
  node->AudioNodeBindings.setChannelCountMode(node.channelCountMode)
  node->AudioNodeBindings.setChannelInterpretation(node.channelInterpretation)
}

let setAudioFactoryProperties = () => {
  let context = WebAPI.AudioContext.make()
  let filter = context->WebAPI.AudioContext.createBiquadFilter
  filter->WebAPI.BiquadFilterNode.setType(filter.type_)
  let gain = context->WebAPI.AudioContext.createGain
  gain.gain->WebAPI.AudioParam.setValue(gain.gain.value)
}

let setAudioNodeLocalProperties = () => {
  let context = WebAPI.AudioContext.make()
  let source = context->WebAPI.AudioContext.createBufferSource
  source->WebAPI.AudioBufferSourceNode.setBuffer(source.buffer)
  source->WebAPI.AudioBufferSourceNode.setLoop(source.loop)
  source->WebAPI.AudioBufferSourceNode.setLoopStart(source.loopStart)
  source->WebAPI.AudioBufferSourceNode.setLoopEnd(source.loopEnd)
  let convolver = context->WebAPI.AudioContext.createConvolver
  convolver->WebAPI.ConvolverNode.setBuffer(convolver.buffer)
  convolver->WebAPI.ConvolverNode.setNormalize(convolver.normalize)
  let oscillator = context->WebAPI.AudioContext.createOscillator
  oscillator->WebAPI.OscillatorNode.setType(oscillator.type_)
  let panner = context->WebAPI.AudioContext.createPanner
  panner->WebAPI.PannerNode.setPanningModel(panner.panningModel)
  panner->WebAPI.PannerNode.setDistanceModel(panner.distanceModel)
  panner->WebAPI.PannerNode.setRefDistance(panner.refDistance)
  panner->WebAPI.PannerNode.setMaxDistance(panner.maxDistance)
  panner->WebAPI.PannerNode.setRolloffFactor(panner.rolloffFactor)
  panner->WebAPI.PannerNode.setConeInnerAngle(panner.coneInnerAngle)
  panner->WebAPI.PannerNode.setConeOuterAngle(panner.coneOuterAngle)
  panner->WebAPI.PannerNode.setConeOuterGain(panner.coneOuterGain)
  let analyser = context->WebAPI.AudioContext.createAnalyser
  analyser->WebAPI.AnalyserNode.setFftSize(analyser.fftSize)
  analyser->WebAPI.AnalyserNode.setMinDecibels(analyser.minDecibels)
  analyser->WebAPI.AnalyserNode.setMaxDecibels(analyser.maxDecibels)
  analyser->WebAPI.AnalyserNode.setSmoothingTimeConstant(analyser.smoothingTimeConstant)
  let waveShaper = context->WebAPI.AudioContext.createWaveShaper
  waveShaper->WebAPI.WaveShaperNode.setCurve(waveShaper.curve)
  waveShaper->WebAPI.WaveShaperNode.setOversample(waveShaper.oversample)
}

let setTokenListValue = (tokens: WebAPI.DOMTokenList.t) =>
  {
    tokens->WebAPI.DOMTokenList.setValue("active")
    tokens.value
  }

let setDataTransferEffects = (transfer: WebAPI.DataTransfer.t) => {
  transfer->WebAPI.DataTransfer.setDropEffect(transfer.dropEffect)
  transfer->WebAPI.DataTransfer.setEffectAllowed(transfer.effectAllowed)
  (transfer.dropEffect, transfer.effectAllowed)
}

let setCssDeclaration = (style: WebAPI.CSSStyleDeclaration.t) => {
  style->WebAPI.CSSStyleDeclaration.setProperty(~property="background-color", ~value="red")
  let backgroundColor = style.backgroundColor
  style->WebAPI.CSSStyleDeclaration.setCssText("background-color: blue")
  backgroundColor
}

let setUrlFields = (url: WebAPI.URL.t) => {
  url->WebAPI.URL.setHref("https://example.invalid/path")
  url->WebAPI.URL.setProtocol("https:")
  url->WebAPI.URL.setUsername("user")
  url->WebAPI.URL.setPassword("secret")
  url->WebAPI.URL.setHost("example.invalid")
  url->WebAPI.URL.setHostname("example.invalid")
  url->WebAPI.URL.setPort("443")
  url->WebAPI.URL.setPathname("/path")
  url->WebAPI.URL.setSearch("?mode=test")
  url->WebAPI.URL.setHash("#section")
  url.href
}

let setLocationFields = (location: WebAPI.Location.t) => {
  location->WebAPI.Location.setHref("https://example.invalid/")
  location->WebAPI.Location.setProtocol(location.protocol)
  location->WebAPI.Location.setHost(location.host)
  location->WebAPI.Location.setHostname(location.hostname)
  location->WebAPI.Location.setPort(location.port)
  location->WebAPI.Location.setPathname(location.pathname)
  location->WebAPI.Location.setSearch(location.search)
  location->WebAPI.Location.setHash(location.hash)
  location.href
}

let setHistoryRestoration = (history: WebAPI.History.t) =>
  history->WebAPI.History.setScrollRestoration(history.scrollRestoration)

let setMediaListText = (media: WebAPI.MediaList.t) => {
  media->WebAPI.MediaList.setMediaText(media.mediaText)
  media.mediaText
}

let setFontFaceProperties = (fontFace: WebAPI.FontFace.t) => {
  fontFace->WebAPI.FontFace.setFamily(fontFace.family)
  fontFace->WebAPI.FontFace.setStyle(fontFace.style)
  fontFace->WebAPI.FontFace.setWeight(fontFace.weight)
  fontFace->WebAPI.FontFace.setStretch(fontFace.stretch)
  fontFace->WebAPI.FontFace.setUnicodeRange(fontFace.unicodeRange)
  fontFace->WebAPI.FontFace.setFeatureSettings(fontFace.featureSettings)
  fontFace->WebAPI.FontFace.setDisplay(fontFace.display)
  fontFace->WebAPI.FontFace.setAscentOverride(fontFace.ascentOverride)
  fontFace->WebAPI.FontFace.setDescentOverride(fontFace.descentOverride)
  fontFace->WebAPI.FontFace.setLineGapOverride(fontFace.lineGapOverride)
}

let setAnimationProperties = (animation: WebAPI.Animation.t) => {
  animation->WebAPI.Animation.setId(animation.id)
  animation->WebAPI.Animation.setEffect(animation.effect)
  animation->WebAPI.Animation.setTimeline(animation.timeline)
  animation->WebAPI.Animation.setPlaybackRate(animation.playbackRate)
  animation->WebAPI.Animation.setStartTime(animation.startTime)
  animation->WebAPI.Animation.setCurrentTime(animation.currentTime)
}

let setStylesheetProperties = (
  sheet: WebAPI.StyleSheet.t,
  cssStyleSheet: WebAPI.StyleSheet.cssStyleSheet,
  cssRule: WebAPI.StyleSheet.cssRule,
) => {
  sheet->WebAPI.StyleSheet.setDisabled(sheet.disabled)
  cssStyleSheet->WebAPI.StyleSheet.setCSSStyleSheetDisabled(cssStyleSheet.disabled)
  cssRule->WebAPI.StyleSheet.setCSSRuleCssText(cssRule.cssText)
}

let setSocketBinaryType = (socket: WebAPI.WebSocket.t) =>
  socket->WebAPI.WebSocket.setBinaryType(socket.binaryType)

let setIndexedDBNames = (
  store: WebAPI.IDBObjectStore.t,
  index: WebAPI.IDBIndex.t,
) => {
  store->WebAPI.IDBObjectStore.setName("records")
  index->WebAPI.IDBIndex.setName("by-name")
}

let asBaseElement = (canvas: WebAPI.HTMLCanvasElement.t) =>
  WebAPI.HTMLCanvasElement.asElement(canvas)

let _ = (
  request,
  responseStatus,
  setNodeText,
  setElementScroll,
  setCanvasSize,
  setInputProperties,
  setButtonProperties,
  setTemplateProperties,
  setTableProperties,
  setOffscreen2D,
  setOffscreenWebGL,
  setOffscreenWebGL2,
  setSvgStringValue,
  setAudioNodeChannels,
  setAudioFactoryProperties,
  setAudioNodeLocalProperties,
  setTokenListValue,
  setDataTransferEffects,
  setCssDeclaration,
  setUrlFields,
  setLocationFields,
  setHistoryRestoration,
  setMediaListText,
  setFontFaceProperties,
  setAnimationProperties,
  setStylesheetProperties,
  setSocketBinaryType,
  setIndexedDBNames,
  asBaseElement,
)
