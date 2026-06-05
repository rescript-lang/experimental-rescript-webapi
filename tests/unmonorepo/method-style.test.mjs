import test from "node:test";
import assert from "node:assert/strict";
import { auditMethodStyle } from "../../scripts/audit-method-style.mjs";

const pilotTypeBucketReceivers = [
  "src/Window/Window.res",
];

const remainingTransitionTypeBucketReceivers = [
  "src/CSSFontLoading/FontFace.res",
  "src/CSSFontLoading/FontFaceSet.res",
  "src/Canvas/CanvasGradient.res",
  "src/Canvas/CanvasPattern.res",
  "src/Canvas/HTMLCanvasElement.res",
  "src/Canvas/ImageBitmap.res",
  "src/Canvas/ImageBitmapRenderingContext.res",
  "src/Canvas/OffscreenCanvas.res",
  "src/Canvas/Path2D.res",
  "src/Canvas/VideoColorSpace.res",
  "src/Canvas/VideoFrame.res",
  "src/Clipboard/ClipboardItem.res",
  "src/CustomElements/ElementInternals.res",
  "src/DOMExtended/CaretPosition.res",
  "src/DOMExtended/DOMImplementation.res",
  "src/DOMExtended/NodeFilter.res",
  "src/DOMExtended/NodeIterator.res",
  "src/DOMExtended/Text.res",
  "src/DOMExtended/TreeWalker.res",
  "src/EncryptedMediaExtensions/EncryptedMediaExtensionsHTMLMediaElement.res",
  "src/EncryptedMediaExtensions/MediaKeySession.res",
  "src/EncryptedMediaExtensions/MediaKeyStatusMap.res",
  "src/EncryptedMediaExtensions/MediaKeySystemAccess.res",
  "src/EncryptedMediaExtensions/MediaKeys.res",
  "src/Fetch/Headers.res",
  "src/File/FileSystemDirectoryHandle.res",
  "src/File/FileSystemFileHandle.res",
  "src/File/FileSystemHandle.res",
  "src/File/FileSystemWritableFileStream.res",
  "src/File/WritableStream.res",
  "src/File/WritableStreamDefaultController.res",
  "src/FileAndDirectoryEntries/FileSystemDirectoryEntry.res",
  "src/FileAndDirectoryEntries/FileSystemDirectoryReader.res",
  "src/FileAndDirectoryEntries/FileSystemEntry.res",
  "src/Gamepad/GamepadHapticActuator.res",
  "src/Geolocation/GeolocationCoordinates.res",
  "src/Geolocation/GeolocationPosition.res",
  "src/HTML/HTMLButtonElement.res",
  "src/HTML/HTMLDialogElement.res",
  "src/HTML/HTMLEmbedElement.res",
  "src/HTML/HTMLFieldSetElement.res",
  "src/HTML/HTMLFormControlsCollection.res",
  "src/HTML/HTMLIFrameElement.res",
  "src/HTML/HTMLImageElement.res",
  "src/HTML/HTMLInputElement.res",
  "src/HTML/HTMLObjectElement.res",
  "src/HTML/HTMLOptionsCollection.res",
  "src/HTML/HTMLOutputElement.res",
  "src/HTML/HTMLSelectElement.res",
  "src/HTML/HTMLTableElement.res",
  "src/HTML/HTMLTableRowElement.res",
  "src/HTML/HTMLTableSectionElement.res",
  "src/HTML/HTMLTextAreaElement.res",
  "src/HTML/HTMLVideoElement.res",
  "src/HTML/TimeRanges.res",
  "src/IndexedDB/IDBDatabase.res",
  "src/IndexedDB/IDBTransaction.res",
  "src/IntersectionObserver/IntersectionObserver.res",
  "src/MutationObserver/MutationObserver.res",
  "src/Performance/PerformanceEntry.res",
  "src/Performance/PerformanceMark.res",
  "src/Push/PushManager.res",
  "src/Push/PushSubscription.res",
  "src/ResizeObserver/ResizeObserver.res",
  "src/SVG/SVGGraphicsElement.res",
  "src/SVG/SVGLength.res",
  "src/ScreenWakeLock/WakeLockSentinel.res",
  "src/ServiceWorker/Cache.res",
  "src/ServiceWorker/Clients.res",
  "src/ServiceWorker/NavigationPreloadManager.res",
  "src/ServiceWorker/ServiceWorkerRegistration.res",
  "src/UIEvents/DataTransfer.res",
  "src/UIEvents/DataTransferItem.res",
  "src/UIEvents/DataTransferItemList.res",
  "src/UIEvents/InputEvent.res",
  "src/UIEvents/KeyboardEvent.res",
  "src/UIEvents/PointerEvent.res",
  "src/UIEvents/TouchList.res",
  "src/URL/URL.res",
  "src/ViewTransitions/ViewTransition.res",
  "src/WebAudio/AnalyserNode.res",
  "src/WebAudio/AudioBuffer.res",
  "src/WebAudio/AudioBufferSourceNode.res",
  "src/WebAudio/AudioContext.res",
  "src/WebAudio/AudioParam.res",
  "src/WebAudio/BiquadFilterNode.res",
  "src/WebAudio/IIRFilterNode.res",
  "src/WebAudio/OfflineAudioContext.res",
  "src/WebAudio/OscillatorNode.res",
  "src/WebAudio/Worklet.res",
  "src/WebStorage/Storage.res",
  "src/WebVTT/TextTrack.res",
  "src/WebVTT/TextTrackCueList.res",
  "src/XPath/XPathExpression.res",
  "src/XPath/XPathResult.res",
];

const allowedTypeBucketReceivers = new Set([
  ...pilotTypeBucketReceivers,
  ...remainingTransitionTypeBucketReceivers,
]);

test("keeps object shapes property-only", () => {
  const audit = auditMethodStyle();

  assert.equal(audit.summary.functionFieldOccurrences, 0);
});

test("tracks public method modules still using type-bucket receivers", () => {
  const audit = auditMethodStyle();
  const currentTypeBucketReceivers = audit.files
    .filter((entry) =>
      entry.receiverBuckets.includes("dom-types") ||
      entry.receiverBuckets.includes("feature-types")
    )
    .map((entry) => entry.path);

  for (const path of currentTypeBucketReceivers) {
    assert.ok(
      allowedTypeBucketReceivers.has(path),
      `${path} should define a public receiver type or be added to the transition allowlist`,
    );
  }
});

test("keeps Base__ implementation receivers out of public method modules", () => {
  const audit = auditMethodStyle();
  const publicBaseReceiverFiles = audit.files
    .filter((entry) => entry.receiverBuckets.includes("base-internal"))
    .map((entry) => entry.path);

  assert.deepEqual(publicBaseReceiverFiles, []);
});
