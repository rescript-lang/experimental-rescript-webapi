let path2D: WebAPI.Path2D.t => WebAPI.Path2D.t = value => value
let fontFace: WebAPI.FontFace.t => WebAPI.FontFace.t = value => value
let domMatrix: WebAPI.DOMMatrix.t => WebAPI.DOMMatrix.t = value => value
let domMatrixReadOnly: WebAPI.DOMMatrixReadOnly.t => WebAPI.DOMMatrixReadOnly.t = value => value
let domPoint: WebAPI.DOMPoint.t => WebAPI.DOMPoint.t = value => value
let domPointReadOnly: WebAPI.DOMPointReadOnly.t => WebAPI.DOMPointReadOnly.t = value => value
let domRect: WebAPI.DOMRect.t => WebAPI.DOMRect.t = value => value
let domRectReadOnly: WebAPI.DOMRectReadOnly.t => WebAPI.DOMRectReadOnly.t = value => value
let domRectList: WebAPI.DOMRectList.t => WebAPI.DOMRectList.t = value => value
let domTokenList: WebAPI.DOMTokenList.t => WebAPI.DOMTokenList.t = value => value
let caretPosition: WebAPI.CaretPosition.t => WebAPI.CaretPosition.t = value => value
let namedNodeMap: WebAPI.NamedNodeMap.t => WebAPI.NamedNodeMap.t = value => value
let nodeList: WebAPI.NodeList.t<'node> => WebAPI.NodeList.t<'node> = value => value
let documentTimeline: WebAPI.DocumentTimeline.t => WebAPI.DocumentTimeline.t = value => value
let cssRuleList: WebAPI.CSSRuleList.t => WebAPI.CSSRuleList.t = value => value
let canvasGradient: WebAPI.CanvasGradient.t => WebAPI.CanvasGradient.t = value => value
let canvasPattern: WebAPI.CanvasPattern.t => WebAPI.CanvasPattern.t = value => value
let canvasRenderingContext2D: WebAPI.CanvasRenderingContext2D.t => WebAPI.CanvasRenderingContext2D.t = value =>
  value
let imageBitmap: WebAPI.ImageBitmap.t => WebAPI.ImageBitmap.t = value => value
let imageBitmapRenderingContext: WebAPI.ImageBitmapRenderingContext.t => WebAPI.ImageBitmapRenderingContext.t = value =>
  value
let imageData: WebAPI.ImageData.t => WebAPI.ImageData.t = value => value
let videoColorSpace: WebAPI.VideoColorSpace.t => WebAPI.VideoColorSpace.t = value => value
let videoFrame: WebAPI.VideoFrame.t => WebAPI.VideoFrame.t = value => value
let abortController: WebAPI.AbortController.t => WebAPI.AbortController.t = value => value
let headers: WebAPI.Headers.t = WebAPI.Headers.make()
let pushManager: WebAPI.PushManager.t => WebAPI.PushManager.t = value => value
let pushSubscription: WebAPI.PushSubscription.t => WebAPI.PushSubscription.t = value => value
let clipboardItem: WebAPI.ClipboardItem.t => WebAPI.ClipboardItem.t = value => value
let credentialsContainer: WebAPI.CredentialsContainer.t => WebAPI.CredentialsContainer.t = value =>
  value
let permissions: WebAPI.Permissions.t => WebAPI.Permissions.t = value => value
let customElementRegistry: WebAPI.CustomElementRegistry.t => WebAPI.CustomElementRegistry.t = value =>
  value
let history: WebAPI.History.t => WebAPI.History.t = value => value
let idleDeadline: WebAPI.IdleDeadline.t => WebAPI.IdleDeadline.t = value => value
let gamepadHapticActuator: WebAPI.GamepadHapticActuator.t => WebAPI.GamepadHapticActuator.t = value =>
  value
let geolocation: WebAPI.Geolocation.t => WebAPI.Geolocation.t = value => value
let geolocationCoordinates: WebAPI.GeolocationCoordinates.t => WebAPI.GeolocationCoordinates.t = value =>
  value
let geolocationPosition: WebAPI.GeolocationPosition.t => WebAPI.GeolocationPosition.t = value =>
  value
let wakeLock: WebAPI.WakeLock.t => WebAPI.WakeLock.t = value => value
let fileList: WebAPI.FileList.t => WebAPI.FileList.t = value => value
let fileSystemDirectoryEntry: WebAPI.FileSystemDirectoryEntry.t => WebAPI.FileSystemDirectoryEntry.t = value =>
  value
let fileSystemDirectoryHandle: WebAPI.FileSystemDirectoryHandle.t => WebAPI.FileSystemDirectoryHandle.t = value =>
  value
let fileSystemDirectoryReader: WebAPI.FileSystemDirectoryReader.t => WebAPI.FileSystemDirectoryReader.t = value =>
  value
let fileSystemEntry: WebAPI.FileSystemEntry.t => WebAPI.FileSystemEntry.t = value => value
let fileSystemFileHandle: WebAPI.FileSystemFileHandle.t => WebAPI.FileSystemFileHandle.t = value =>
  value
let fileSystemHandle: WebAPI.FileSystemHandle.t => WebAPI.FileSystemHandle.t = value => value
let fileSystemWritableFileStream: WebAPI.FileSystemWritableFileStream.t => WebAPI.FileSystemWritableFileStream.t = value =>
  value
let writableStream: WebAPI.WritableStream.t<'writer> => WebAPI.WritableStream.t<'writer> = value =>
  value
let writableStreamDefaultController: WebAPI.WritableStreamDefaultController.t => WebAPI.WritableStreamDefaultController.t = value =>
  value
let lockManager: WebAPI.LockManager.t => WebAPI.LockManager.t = value => value
let cache: WebAPI.Cache.t => WebAPI.Cache.t = value => value
let cacheStorage: WebAPI.CacheStorage.t => WebAPI.CacheStorage.t = value => value
let idbFactory: WebAPI.IDBFactory.t => WebAPI.IDBFactory.t = value => value
let idbIndex: WebAPI.IDBIndex.t => WebAPI.IDBIndex.t = value => value
let idbObjectStore: WebAPI.IDBObjectStore.t => WebAPI.IDBObjectStore.t = value => value
let storage: WebAPI.Storage.t => WebAPI.Storage.t = value => value
let storageManager: WebAPI.StorageManager.t => WebAPI.StorageManager.t = value => value
let intersectionObserver: WebAPI.IntersectionObserver.t => WebAPI.IntersectionObserver.t = value =>
  value
let resizeObserver: WebAPI.ResizeObserver.t => WebAPI.ResizeObserver.t = value => value
let mediaCapabilities: WebAPI.MediaCapabilities.t => WebAPI.MediaCapabilities.t = value => value
let mediaKeyStatusMap: WebAPI.MediaKeyStatusMap.t => WebAPI.MediaKeyStatusMap.t = value => value
let mediaKeySystemAccess: WebAPI.MediaKeySystemAccess.t => WebAPI.MediaKeySystemAccess.t = value =>
  value
let mediaKeys: WebAPI.MediaKeys.t => WebAPI.MediaKeys.t = value => value
let textTrackCueList: WebAPI.TextTrackCueList.t => WebAPI.TextTrackCueList.t = value => value
let performanceEntry: WebAPI.PerformanceEntry.t => WebAPI.PerformanceEntry.t = value => value
let performanceMark: WebAPI.PerformanceMark.t => WebAPI.PerformanceMark.t = value => value
let clients: WebAPI.Clients.t => WebAPI.Clients.t = value => value
let navigationPreloadManager: WebAPI.NavigationPreloadManager.t => WebAPI.NavigationPreloadManager.t = value =>
  value
let dataTransfer: WebAPI.DataTransfer.t => WebAPI.DataTransfer.t = value => value
let dataTransferItem: WebAPI.DataTransferItem.t => WebAPI.DataTransferItem.t = value => value
let dataTransferItemList: WebAPI.DataTransferItemList.t => WebAPI.DataTransferItemList.t = value =>
  value
let touch: WebAPI.Touch.t => WebAPI.Touch.t = value => value
let touchList: WebAPI.TouchList.t => WebAPI.TouchList.t = value => value
let url: WebAPI.URL.t => WebAPI.URL.t = value => value
let viewTransition: WebAPI.ViewTransition.t => WebAPI.ViewTransition.t = value => value
let svgGraphicsElement: WebAPI.SVGGraphicsElement.t => WebAPI.SVGGraphicsElement.t = value => value
let svgLength: WebAPI.SVGLength.t => WebAPI.SVGLength.t = value => value
let audioBuffer: WebAPI.AudioBuffer.t => WebAPI.AudioBuffer.t = value => value
let audioParam: WebAPI.AudioParam.t => WebAPI.AudioParam.t = value => value
let audioNode: WebAPI.AudioNode.t => WebAPI.AudioNode.t = value => value
let baseAudioContext: WebAPI.BaseAudioContext.t => WebAPI.BaseAudioContext.t = value => value
let periodicWave: WebAPI.PeriodicWave.t => WebAPI.PeriodicWave.t = value => value
let worklet: WebAPI.Worklet.t => WebAPI.Worklet.t = value => value

let makePublicUrl = () => {
  let url: WebAPI.URL.t = WebAPI.URL.make(~url="https://example.invalid")
  url.href = "https://example.com"
  url.href
}
