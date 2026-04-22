@@warning("-30")

/**
[See PictureInPictureWindow on MDN](https://developer.mozilla.org/docs/Web/API/PictureInPictureWindow)
*/
type pictureInPictureWindow = {
  ...Event.Types.eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PictureInPictureWindow/width)
    */
  width: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PictureInPictureWindow/height)
    */
  height: int,
}
