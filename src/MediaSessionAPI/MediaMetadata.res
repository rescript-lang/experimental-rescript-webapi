@@warning("-44")
@@warning("-33")
open MediaSessionAPI

module MediaMetadata = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaMetadata)
    */
  @new
  external make: mediaMetadataInit => mediaMetadata = "MediaMetadata"
}
