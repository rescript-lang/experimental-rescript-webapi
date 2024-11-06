open Prelude
open MediaSession

module MediaMetadata = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaMetadata)
    */
  @new
  external make: mediaMetadataInit => mediaMetadata = "MediaMetadata"
}
