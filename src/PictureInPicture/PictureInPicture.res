type t = Types.pictureInPictureWindow = {...Types.pictureInPictureWindow}

include WebApi.Event.EventTarget.Impl({type t = t})

module Types = PictureInPictureTypes
