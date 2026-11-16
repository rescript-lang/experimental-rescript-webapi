type t = PictureInPictureTypes.pictureInPictureWindow = private {
  ...PictureInPictureTypes.pictureInPictureWindow,
}

include EventTarget.Impl({type t = t})

external asEventTarget: t => DOM.eventTarget = "%identity"

module Types = PictureInPictureTypes
