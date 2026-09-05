let requestWithNullBody: Request.requestInit = {body: Nullable.null}

let requestWithUndefinedBody: Request.requestInit = {body: Nullable.undefined}

let intersectionWithNullRoot: IntersectionObserverTypes.intersectionObserverInit = {
  root: Nullable.null,
}

let waveShaperWithCurve: WebAudioTypes.waveShaperOptions = {curve: [0., 1.]}

let decodingConfiguration = (
  info: MediaCapabilities.Types.mediaCapabilitiesDecodingInfo,
): MediaCapabilities.Types.mediaDecodingConfiguration => info.configuration

let decodingKeySystemAccess = (info: MediaCapabilities.Types.mediaCapabilitiesDecodingInfo): Null.t<
  BaseEncryptedMediaExtensions.mediaKeySystemAccess,
> => info.keySystemAccess

let encodingConfiguration = (
  info: MediaCapabilities.Types.mediaCapabilitiesEncodingInfo,
): MediaCapabilities.Types.mediaEncodingConfiguration => info.configuration

let sharedWorkerName = (scope: SharedWorkerScope.t): string => scope.name

let imagePattern = (context: DOM.canvasRenderingContext2D, image: HTMLImageElement.t): Null.t<
  CanvasTypes.canvasPattern,
> => context->CanvasRenderingContext2D.createPattern(~image, ~repetition="repeat")
