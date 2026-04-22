type t = PictureInPictureTypes.pictureInPictureWindow = {
  ...PictureInPictureTypes.pictureInPictureWindow,
}

include Event.EventTarget.Impl({type t = t})

module Types = PictureInPictureTypes
