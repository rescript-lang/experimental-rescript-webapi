@@warning("-30")

open Prelude
open DOM

type resizeObserverBoxOptions =
  | @as("border-box") BorderBox
  | @as("content-box") ContentBox
  | @as("device-pixel-content-box") DevicePixelContentBox

/**
[See ResizeObserverSize on MDN](https://developer.mozilla.org/docs/Web/API/ResizeObserverSize)
*/
type resizeObserverSize = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ResizeObserverSize/inlineSize)
    */
  inlineSize: any,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ResizeObserverSize/blockSize)
    */
  blockSize: any,
}

/**
[See ResizeObserverEntry on MDN](https://developer.mozilla.org/docs/Web/API/ResizeObserverEntry)
*/
type resizeObserverEntry = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ResizeObserverEntry/target)
    */
  target: element,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ResizeObserverEntry/contentRect)
    */
  contentRect: domRectReadOnly,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ResizeObserverEntry/borderBoxSize)
    */
  borderBoxSize: array<resizeObserverSize>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ResizeObserverEntry/contentBoxSize)
    */
  contentBoxSize: array<resizeObserverSize>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ResizeObserverEntry/devicePixelContentBoxSize)
    */
  devicePixelContentBoxSize: array<resizeObserverSize>,
}

/**
[See ResizeObserver on MDN](https://developer.mozilla.org/docs/Web/API/ResizeObserver)
*/
type resizeObserver = {}

type resizeObserverOptions = {mutable box: resizeObserverBoxOptions}

type resizeObserverCallback = array<resizeObserverEntry> => resizeObserver => unit

module ResizeObserver = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ResizeObserver)
    */
  @new
  external make: resizeObserverCallback => resizeObserver = "ResizeObserver"
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ResizeObserver/observe)
    */
  @send
  external observe: (resizeObserver, element, resizeObserverOptions) => unit = "observe"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ResizeObserver/unobserve)
    */
  @send
  external unobserve: (resizeObserver, element) => unit = "unobserve"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ResizeObserver/disconnect)
    */
  @send
  external disconnect: resizeObserver => unit = "disconnect"
}
