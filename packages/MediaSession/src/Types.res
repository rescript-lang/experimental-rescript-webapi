@@warning("-30")

type mediaSessionPlaybackState =
  | @as("none") None
  | @as("paused") Paused
  | @as("playing") Playing

type mediaSessionAction =
  | @as("nexttrack") Nexttrack
  | @as("pause") Pause
  | @as("play") Play
  | @as("previoustrack") Previoustrack
  | @as("seekbackward") Seekbackward
  | @as("seekforward") Seekforward
  | @as("seekto") Seekto
  | @as("skipad") Skipad
  | @as("stop") Stop

type mediaImage = {
  mutable src: string,
  mutable sizes?: string,
  @as("type") mutable type_?: string,
}

/**
[See MediaMetadata on MDN](https://developer.mozilla.org/docs/Web/API/MediaMetadata)
*/
@editor.completeFrom(MediaMetadata)
type mediaMetadata = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaMetadata/title)
    */
  mutable title: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaMetadata/artist)
    */
  mutable artist: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaMetadata/album)
    */
  mutable album: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaMetadata/artwork)
    */
  mutable artwork: array<mediaImage>,
}

/**
[See WebApiMediaSession on MDN](https://developer.mozilla.org/docs/Web/API/WebApiMediaSession)
*/
@editor.completeFrom(WebApiMediaSession)
type mediaSession = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiMediaSession/metadata)
    */
  mutable metadata: Null.t<mediaMetadata>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiMediaSession/playbackState)
    */
  mutable playbackState: mediaSessionPlaybackState,
}

type mediaMetadataInit = {
  mutable title?: string,
  mutable artist?: string,
  mutable album?: string,
  mutable artwork?: array<mediaImage>,
}

type mediaSessionActionDetails = {
  mutable action: mediaSessionAction,
  mutable seekOffset?: float,
  mutable seekTime?: float,
  mutable fastSeek?: bool,
}

type mediaPositionState = {
  mutable duration?: float,
  mutable playbackRate?: float,
  mutable position?: float,
}

type mediaSessionActionHandler = mediaSessionActionDetails => unit
