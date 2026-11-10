type t = PictureInPictureTypes.pictureInPictureWindow = private {
  ...PictureInPictureTypes.pictureInPictureWindow,
}

include EventTarget.Impl({type t = t})

module Types = PictureInPictureTypes
