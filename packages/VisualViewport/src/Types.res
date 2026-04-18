@@warning("-30")

/**
[See WebApiVisualViewport on MDN](https://developer.mozilla.org/docs/Web/API/WebApiVisualViewport)
*/
type visualViewport = {
  ...WebApiEvent.Types.eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiVisualViewport/offsetLeft)
    */
  offsetLeft: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiVisualViewport/offsetTop)
    */
  offsetTop: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiVisualViewport/pageLeft)
    */
  pageLeft: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiVisualViewport/pageTop)
    */
  pageTop: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiVisualViewport/width)
    */
  width: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiVisualViewport/height)
    */
  height: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiVisualViewport/scale)
    */
  scale: float,
}
