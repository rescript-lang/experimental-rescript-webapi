type t = Types.mediaMetadata = {...Types.mediaMetadata}
type mediaMetadataInit = Types.mediaMetadataInit = {...Types.mediaMetadataInit}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaMetadata)
*/
@new
external make: (~init: mediaMetadataInit=?) => t = "MediaMetadata"
